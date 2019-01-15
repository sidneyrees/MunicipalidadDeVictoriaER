<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * Substitution Entity
 *
 * @property int $id
 * @property int $overwritten_article
 * @property int $new_article
 * @property string $comments
 *
 * @property \App\Model\Entity\OriginalArticle $overwritten_article
 * @property \App\Model\Entity\NewArticle $new_article
 */
class Substitution extends Entity
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
        'overwritten_article' => true,
        'new_article' => true,
        'comments' => true,
    ];
}
