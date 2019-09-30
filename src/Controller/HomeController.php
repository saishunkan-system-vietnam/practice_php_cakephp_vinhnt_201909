<?php
namespace App\Controller;

use App\Controller\AppController;
use Cake\Event\Event;
use Cake\ORM\TableRegistry;
use Cake\Datasource\ConnectionManager;

class HomeController extends AppController
{
    var $helpers = array('Paginator','Html');
    var $paginate = array();

    public function index()
    {
        $result = TableRegistry::getTableLocator()->get('Users')->find('all');
        // $connection = ConnectionManager::get('default');
        // $result = $connection->execute('SELECT * FROM users')->fetchAll('assoc');
        // $this->paginate = array(
        //     'limit' => 4,// mỗi page có 4 record
        //     'order' => array('id' => 'desc'),//giảm dần theo id
        //   );
        // $data = $this->paginate($result);
        // debug($data);
        // $this->set("listAllUsers",$data);
        $this->set('listAllUsers',$result);
    }
}
