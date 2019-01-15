<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * Chapter Entity
 *
 * @property int $id
 * @property int $law_id
 * @property string $name
 * @property string $description
 *
 * @property \App\Model\Entity\Law $law
 * @property \App\Model\Entity\Article[] $articles
 */
class Chapter extends Entity
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
        'name' => true,
        'description' => true,
        'law' => true,
        'articles' => true
    ];
}
