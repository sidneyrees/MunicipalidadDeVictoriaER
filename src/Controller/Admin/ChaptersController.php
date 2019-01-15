<?php
namespace App\Controller\Admin;

use App\Controller\AppController;

/**
 * Chapters Controller
 *
 * @property \App\Model\Table\ChaptersTable $Chapters
 */
class ChaptersController extends AppController
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
        $this->paginate = [
            'contain' => ['Laws'],
        ];
        $chapters = $this->paginate($this->Chapters->find('search', $this->Chapters->filterParams($this->request->query)));

        $this->set(compact('chapters'));
        $this->set('_serialize', ['chapters']);
    }

    /**
     * View method
     *
     * @param string|null $id Chapter id.
     * @return \Cake\Http\Response|void
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function view($id = null)
    {
        $chapter = $this->Chapters->get($id, [
            'contain' => ['Laws', 'Articles']
        ]);

        $this->set('chapter', $chapter);
    }

    /**
     * Add method
     *
     * @return \Cake\Http\Response|null Redirects on successful add, renders view otherwise.
     */
    public function add($law_id = null)
    {
        $chapter = $this->Chapters->newEntity();
        if ($this->request->is('post')) {
            $chapter = $this->Chapters->patchEntity($chapter, $this->request->getData());
            if ($this->Chapters->save($chapter)) {
                $this->Flash->success(__('The chapter has been saved.'));

                return $this->redirect(['action' => 'add']);
            }
            $this->Flash->error(__('The chapter could not be saved. Please, try again.'));
        }
        if($law_id == null){
            $laws = $this->Chapters->Laws->find('list', ['limit' => 999999]);
        } else {
            $laws = $this->Chapters->Laws->find('list', ['conditions' => ['id'=>$law_id]]); 
        }
        $this->set(compact('chapter', 'law_id', 'laws'));
    }

    /**
     * Edit method
     *
     * @param string|null $id Chapter id.
     * @return \Cake\Http\Response|null Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $chapter = $this->Chapters->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $chapter = $this->Chapters->patchEntity($chapter, $this->request->getData());
            if ($this->Chapters->save($chapter)) {
                $this->Flash->success(__('The chapter has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The chapter could not be saved. Please, try again.'));
        }
        $laws = $this->Chapters->Laws->find('list', ['limit' => 200]);
        $this->set(compact('chapter', 'laws'));
    }

    /**
     * Delete method
     *
     * @param string|null $id Chapter id.
     * @return \Cake\Http\Response|null Redirects to index.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $chapter = $this->Chapters->get($id);
        if ($this->Chapters->delete($chapter)) {
            $this->Flash->success(__('The chapter has been deleted.'));
        } else {
            $this->Flash->error(__('The chapter could not be deleted. Please, try again.'));
        }

        return $this->redirect(['action' => 'index']);
    }
}
