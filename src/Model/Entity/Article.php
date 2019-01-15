<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;
use Cake\ORM\TableRegistry;
use Cake\View\Helper\HtmlHelper; 

/**
 * Article Entity
 *
 * @property int $id
 * @property int $law_id
 * @property int $chapter_id
 * @property string $name
 * @property string $description
 *
 * @property \App\Model\Entity\Law $law
 * @property \App\Model\Entity\Chapter $chapter
 */
class Article extends Entity
{

    /**
     * Fields that can be mass assigned using newEntity() or patchEntity().
     *
     * Note that when '*' is set to true, this allows all unspecified fields to
     * be mass assigned. For security purposes, it is advised to set '*' to false
     * (or remove it), and explicitly make individual fields accessible as needed.
     *
     * @var array
     */       
    protected $_accessible = [
        'law_id' => true,
        'chapter_id' => true,
        'name' => true,
        'description' => true,
        'law' => true,
        'chapter' => true
    ];
    
    protected $_virtual = ['substitution_id'];
    
    private $normative_types = [
        "25"=>"Ordenanza",
        "1"=>"Ley", 
        "2"=>"Decreto", 
        "3"=>"Resolución", 
        "4"=>"Disposición", 
        "5"=>"Circular", 
        "6"=>"Comunicación", 
        "7"=>"Decreto/Ley", 
        "8"=>"Decisión Administrativa", 
        "9"=>"Nota Externa",
        "10"=>"Instrucción", 
        "11"=>"Acta", 
        "12"=>"Acordada", 
        "13"=>"Comunicado", 
        "14"=>"Decisión", 
        "15"=>"Directiva", 
        "16"=>"Nota",  
        "17"=>"Acuerdo", 
        "18"=>"Memorandum", 
        "19"=>"Protocolo",
        "20"=>"Convenio", 
        "21"=>"Misión",
        "22"=>"Recomendación",
        "23"=>"Interpretación", 
        "24"=>"Laudo", 
        /* 25 es el primer item */
        /* 26 no existe */
        "27"=>"Actuacion", 
        "28"=>"Providencia"
    ];
    
    protected function _getLawArticleName(){
        $lawsTable = TableRegistry::get('Laws');
        $chaptersTable = TableRegistry::get('Chapters');
        $this->law = $lawsTable->get($this->law_id);
        $this->chapter = $chaptersTable->get($this->chapter_id);
        return $this->law->name . ' - ' . $this->chapter->name . ' - ' . $this->name;
    }
    
    protected function _getCurrentArticle(){
        $substitutionTable = TableRegistry::get('Substitutions');
        
        $substitution = $substitutionTable->find('all')
                                ->where([
                                    'overwritten_article'=>$this->id
                                ])
                                ->order(['created'=>'desc'])
                                ->first();
        
        if(empty($substitution->id)) {
            return $this->description;
        }
        
        $this->substitution_id = $substitution->id;
        
        $articlesTable = TableRegistry::get('Articles');
        $newerArticle = $articlesTable->get($substitution->new_article, ['contain'=>['Laws', 'Chapters']]);
        
        $legend = "<p style=\"font-style: italic; font-size: 13px;\">Artículo sustituido por <a href=\"/ordenanzas/view/". $newerArticle->law->id ."#".$newerArticle->id."\" target=\"_blank\" style=\"font-weight: normal;\">". $this->normative_types[$newerArticle->law->type]." N°".$newerArticle->law->number ."&nbsp;—&nbsp;".$newerArticle->law->name.", ".$newerArticle->name."</a>"; 
            
        if(!empty($newerArticle->law->bulletin)) {
            $legend.= "&nbsp;— B.O. <a href=\"http://servicios.infoleg.gob.ar/infolegInternet/verBoletin.do?fechaNro=nro&id=". $newerArticle->law->bulletin ."\" target=\"_blank\"  style=\"font-weight: normal;\">".$newerArticle->law->bulletin."</a>";
        }
        
        $this->description = !empty($substitution->comments) ? $substitution->comments :  $newerArticle->description;
        
        return $this->description . '<br />' . $legend  . "</p>";
    }
    
    protected function _getHasSubstition(){
        return isset($this->substitution_id) ? true : false;
    }
    
    protected function _getSubstitionId(){
        return $this->substitution_id;
    }
    
}
