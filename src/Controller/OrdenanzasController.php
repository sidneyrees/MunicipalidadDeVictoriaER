<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * Ordenanzas Controller
 *
 * @property \App\Model\Table\LawsTable $Laws
 */
class OrdenanzasController extends AppController
{

    /**
     * Initialize method
     *
     */
    public function initialize()
    {
        parent::initialize();
        $this->viewBuilder()->setLayout('ordenanzas');
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
}
