<?php
$this->assign('title', __('View'));
$this->Html->addCrumb(__('Laws'), ['controller' => 'Laws', 'action' => 'index']);
$this->Html->addCrumb(__('View'));
?>
<div class="row">
    <div class="col-xs-12">

        <div class="pull-right card-action" style="margin-top: 12px;">
            <div class="btn-group" role="group" aria-label="...">
                <?=$this->Html->link('<i class="fa fa-edit" title="Editar"></i> Editar', ['action' => 'edit', $law->id], ['escape' => false, 'class' => 'btn btn-primary', 'title'=>'Editar'])?>&nbsp;
                <?=$this->Form->postLink('<i class="fa fa-trash" title="Borrar"></i>', ['action' => 'delete', $law->id], ['confirm' => __('¿Está seguro de que desea borrar {0}?', $normative_types[$law->type] . ' Nº ' . $law->number . ' — ' . $law->name), 'escape' => false, 'class' => 'btn btn-danger', 'title'=>'Borrar'])?>
            </div>
        </div>
        
        <h1><?= h($law->name) ?></h1>
        <h2><?= $normative_types[$law->type] ?> Nº <?= $law->number ?></h2>
        
        <p><b><?= $law->description ?></b></p>
        <p>Sancionada: <?= $law->sanction_date ?><br />
        Promulgada: <?= $law->promulgated_date ?>
        </p>
        <hr />
        <p style="text-align: center;"><?= nl2br($law->introduction) ?></p>
        <hr />
        <?php if(!empty($law->comments)){ ?>
        <p style="text-align: center;"><b>OBSERVACIONES:</b> <?= nl2br($law->comments) ?></p>
        <hr />
        <?php } ?>
    
        <?php if (!empty($law->chapters)): ?>
            <?php foreach ($law->chapters as $chapters): ?>
            
                <p style="text-align: center;"><b><?= strtoupper($chapters->name) ?></b>&nbsp;&nbsp;<?=$this->Html->link('<i class="fa fa-edit"></i> Editar', ['controller' => 'Chapters', 'action' => 'edit', $chapters->id], ['escape' => false, 'class'=>'btn btn-primary btn-xs']) ?> <?=$this->Html->link('<i class="fa fa-plus"></i> Agregar articulos', ['controller' => 'Articles', 'action' => 'add', $chapters->id], ['escape' => false, 'class'=>'btn btn-success btn-xs']) ?>                                         
                    <br>
                    <?= nl2br($chapters->description) ?>
                </p>                               
                
                <?php if (!empty($chapters->articles)): ?>
                    <?php foreach ($chapters->articles as $articles): ?>
                        <p><a name="<?= strtoupper($articles->id) ?>"></a><b><?= strtoupper($articles->name) ?></b> 
                        <?= $this->Html->link('<i class="fa fa-edit"></i> Editar', ['controller' => 'Articles', 'action' => 'edit', $articles->id], ['escape' => false, 'class'=>'btn btn-primary btn-xs'])?>&nbsp;<?=$this->Html->link('<i class="fa fa-warning"></i> ¿Modifica otro articulo?', ['controller' => 'Substitutions', 'action' => 'add', $articles->id, '?' => ['law_id'=>$articles->law_id]], ['escape' => false, 'class'=>'btn btn-danger btn-xs'])?>&nbsp;—&nbsp;<?= nl2br($articles->CurrentArticle) ?> 
                        </p>
                    <?php endforeach; ?>
                <?php endif; ?>
            <?php endforeach; ?>
        <?php endif; ?>
        
        <center><?=$this->Html->link('<i class="fa fa-plus"></i> Agregar Titulo/Capitulo', ['controller' => 'Chapters', 'action' => 'add', $law->id], ['escape' => false, 'class' => 'btn btn-success'])?></center>
                
    </div>
</div>                 