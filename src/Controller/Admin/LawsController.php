<?php
namespace App\Controller\Admin;

use App\Controller\AppController;

/**
 * Laws Controller
 *
 * @property \App\Model\Table\LawsTable $Laws
 */
class LawsController extends AppController
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
        
        $laws = $this->paginate($this->Laws->find('search', $this->Laws->filterParams($this->request->query)));

        $this->set(compact('laws'));
        $this->set('_serialize', ['laws']);
    }

    /**
     * View method
     *
     * @param string|null $id Law id.
     * @return \Cake\Http\Response|void
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function view($id = null)
    {
        $law = $this->Laws->get($id, [
            'contain' => ['Chapters'=>['Articles']]
        ]);

        $this->set('law', $law);
    }

    /**
     * Add method
     *
     * @return \Cake\Http\Response|null Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $law = $this->Laws->newEntity();
        if ($this->request->is('post')) {
            $law = $this->Laws->patchEntity($law, $this->request->getData());
            if ($this->Laws->save($law)) {
                $this->Flash->success(__('The law has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The law could not be saved. Please, try again.'));
        }
        $this->set(compact('law'));
    }

    /**
     * Edit method
     *
     * @param string|null $id Law id.
     * @return \Cake\Http\Response|null Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $law = $this->Laws->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $law = $this->Laws->patchEntity($law, $this->request->getData());
            if ($this->Laws->save($law)) {
                $this->Flash->success(__('The law has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The law could not be saved. Please, try again.'));
        }
        $this->set(compact('law'));
    }

    /**
     * Delete method
     *
     * @param string|null $id Law id.
     * @return \Cake\Http\Response|null Redirects to index.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $law = $this->Laws->get($id);
        if ($this->Laws->delete($law)) {
            $this->Flash->success(__('The law has been deleted.'));
        } else {
            $this->Flash->error(__('The law could not be deleted. Please, try again.'));
        }

        return $this->redirect(['action' => 'index']);
    }
}
