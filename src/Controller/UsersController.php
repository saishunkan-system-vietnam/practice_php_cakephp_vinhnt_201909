<?php
namespace App\Controller;

use App\Controller\AppController;
use Cake\Event\Event;
use App\Model\Entity\User;
use App\Model\Table\UsersTable;
use Cake\Controller\Component\AuthComponent;


/**
 * Users Controller
 *
 * @property \App\Model\Table\UsersTable $Users
 *
 * @method \App\Model\Entity\User[]|\Cake\Datasource\ResultSetInterface paginate($object = null, array $settings = [])
 */
class UsersController extends AppController
{

    public function beforeFilter(Event $event){
        parent::beforeFilter($event);
    }

        function index(){
            //$this->redirect("/users/index");
        }

        function login(){
            $error="";
            if(isset($_POST['submit'])){
                $username = $_POST['username'];
                $password = md5($_POST['password']);
                if($this->Users->checkLogin($username,$password)){
                    $this->request->session()->write('sessionUser', $username);
                    $this->redirect("/home/index");//đăng nhập thành công chuyển trang thông tin
                }else{
                    $error = "Tên đăng nhập hoặc mật khẩu không đúng";
              }
           }
           $this->set("error",$error);
           $this->render('index');
        }

        function logout(){
            $this->redirect($this->Auth->logout());
        }

        function register(){
            $user = $this->Users->newEntity();
            if ($this->request->is('post')) {
                //debug($this->request->getData());
                $user = $this->Users->patchEntity($user, $this->request->data);
                //debug($user);
                if($user->errors()){
                    $this->set(compact('user'));
                    $this->render('/Accounts/register');
                } else{
                    if($this->Users->save($user))
                    {
                        //$this->Auth->login($this->data);
                        $this->redirect(array('action' => 'index'));
                    }
                }
            }
        }
}
