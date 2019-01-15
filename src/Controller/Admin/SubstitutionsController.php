<?php
namespace App\Controller\Admin;

use App\Controller\AppController;

/**
 * Substitutions Controller
 *
 * @property \App\Model\Table\SubstitutionsTable $Substitutions
 */
class SubstitutionsController extends AppController
{

    /**
     * Initialize method
     *
     */
    public function initialize()
    {
        parent::initialize();
        $this->loadComponent('Search.Prg', [
            'actions' => ['index'],
        ]);
    }

    /**
     * Index method
     *
     * @return \Cake\Network\Response|null
     */
    public function index()
    {
        $this->paginate = [];
        $substitutions = $this->paginate($this->Substitutions->find('search', $this->Substitutions->filterParams($this->request->query)));

        $this->set(compact('substitutions'));
        $this->set('_serialize', ['substitutions']);
    }

    /**
     * View method
     *
     * @param string|null $id Substitution id.
     * @return \Cake\Http\Response|void
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function view($id = null)
    {
        $substitution = $this->Substitutions->get($id);

        $this->set('substitution', $substitution);
    }

    /**
     * Add method
     *
     * @return \Cake\Http\Response|null Redirects on successful add, renders view otherwise.
     */
    public function add($overwriten_article_id)
    {
        $substitution = $this->Substitutions->newEntity();
        if ($this->request->is('post')) {
            $substitution = $this->Substitutions->patchEntity($substitution, $this->request->getData());
            if ($this->Substitutions->save($substitution)) {
                $this->Flash->success(__('The substitution has been saved.'));
                $law_id = isset($this->request->query['law_id']) ? $this->request->query['law_id'] : null;
                if(isset($law_id)){
                    return $this->redirect(['controller'=>'Laws', 'action'=>'view', $law_id]);
                } else {
                    return $this->redirect(['controller'=>'Laws', 'action'=>'index']);
                }
            }
            $this->Flash->error(__('The substitution could not be saved. Please, try again.'));
        }
        $this->loadModel('Articles');
        $articles = $this->Articles->find('list', ['limit' => 9999999]);
        $this->set('overwriten_article_id',$overwriten_article_id);
        $this->set(compact('substitution', 'articles'));
    }

    /**
     * Edit method
     *
     * @param string|null $id Substitution id.
     * @return \Cake\Http\Response|null Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $substitution = $this->Substitutions->get($id);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $substitution = $this->Substitutions->patchEntity($substitution, $this->request->getData());
            if ($this->Substitutions->save($substitution)) {
                $this->Flash->success(__('The substitution has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The substitution could not be saved. Please, try again.'));
        }
        $this->loadModel('Articles');
        $articles = $this->Articles->find('list', ['limit' => 9999999]);
        $this->set(compact('substitution', 'articles'));
    }

    /**
     * Delete method
     *
     * @param string|null $id Substitution id.
     * @return \Cake\Http\Response|null Redirects to index.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $substitution = $this->Substitutions->get($id);
        if ($this->Substitutions->delete($substitution)) {
            $this->Flash->success(__('The substitution has been deleted.'));
            return $this->redirect($this->referer());
        } else {
            $this->Flash->error(__('The substitution could not be deleted. Please, try again.'));
        }

        return $this->redirect(['action' => 'index']);
    }
}
