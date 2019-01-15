<?php
namespace App\Model\Table;

use App\Model\Entity\Law;
use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * Laws Model
 *
 * @property \Cake\ORM\Association\HasMany $Articles
 * @property \Cake\ORM\Association\HasMany $Chapters
 */
class LawsTable extends Table
{

    /**
     * Initialize method
     *
     * @param array $config The configuration for the Table.
     * @return void
     */
    public function initialize(array $config)
    {
        parent::initialize($config);

        $this->table('laws');
        $this->displayField('name');
        $this->addBehavior('Timestamp', [
            'events' => [
                'Model.beforeSave' => [
                    'created' => 'new',
                    'modified' => 'existing'
                ]
            ]
        ]);
        $this->addBehavior('Search.Search');
        $this->searchManager()
            ->add('id', 'Search.Value', [
                'field' => $this->aliasField('id')
            ]);
        $this->searchManager()
            ->add('name', 'Search.Value', [
                'field' => $this->aliasField('name')
            ]);
        $this->searchManager()
            ->add('description', 'Search.Value', [
                'field' => $this->aliasField('description')
            ]);
        $this->searchManager()
            ->add('introduction', 'Search.Value', [
                'field' => $this->aliasField('introduction')
            ]);
        $this->searchManager()
            ->add('number', 'Search.Value', [
                'field' => $this->aliasField('number')
            ]);
        $this->searchManager()
            ->add('sanction_date', 'Search.Value', [
                'field' => $this->aliasField('sanction_date')
            ]);
        $this->searchManager()
            ->add('promulgated_date', 'Search.Value', [
                'field' => $this->aliasField('promulgated_date')
            ]);
        $this->primaryKey('id');

        $this->hasMany('Chapters', [
            'foreignKey' => 'law_id'
        ]);
        
    }

    /**
     * Default validation rules.
     *
     * @param \Cake\Validation\Validator $validator Validator instance.
     * @return \Cake\Validation\Validator
     */
    public function validationDefault(Validator $validator)
    {
        $validator
            ->integer('id')
            ->allowEmpty('id');
       
        $validator
            ->allowEmpty('bulletin');

        $validator
            ->scalar('name')
            ->requirePresence('name')
            ->notEmpty('name');

        $validator
            ->scalar('description')
            ->allowEmpty('description');

        $validator
            ->scalar('introduction')
            ->allowEmpty('introduction');

        $validator
            ->scalar('number')
            ->requirePresence('number')
            ->notEmpty('number');

        $validator
            ->date('sanction_date')
            ->allowEmpty('sanction_date');

        $validator
            ->date('promulgated_date')
            ->allowEmpty('promulgated_date');

        return $validator;
    }

    /**
     * Returns a rules checker object that will be used for validating
     * application integrity.
     *
     * @param \Cake\ORM\RulesChecker $rules The rules object to be modified.
     * @return \Cake\ORM\RulesChecker
     */
    public function buildRules(RulesChecker $rules)
    {
        return $rules;
    }
}
