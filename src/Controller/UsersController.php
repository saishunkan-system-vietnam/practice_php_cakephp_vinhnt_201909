<?php
namespace App\Controller;

use App\Controller\AppController;
use App\Model\Entity\User;
use App\Model\Table\UsersTable;

/**
 * Users Controller
 *
 * @property \App\Model\Table\UsersTable $Users
 *
 * @method \App\Model\Entity\User[]|\Cake\Datasource\ResultSetInterface paginate($object = null, array $settings = [])
 */
class UsersController extends AppController {

    // function login(){
    //     $error="";
    //     if(isset($_POST['submit'])){
    //         $username = $_POST['username'];
    //         $password = md5($_POST['password']);
    //         if($this->Users->checkLogin($username,$password)){
    //             $this->request->session()->write('sessionUser', $username);
    //             $this->redirect("/home/index");//đăng nhập thành công chuyển trang thông tin
    //         }else{
    //             $error = "Tên đăng nhập hoặc mật khẩu không đúng";
    //       }
    //    }
    //    $this->set("error",$error);
    //    $this->render('index');
    // }

    public function login() {
        // Using Authentication component
        $result = $this->Authentication->getResult();
        if($this->getRequest()->is(['post'])){
            debug($result);
            if ($result->isValid()) {
                $user = $request->getAttribute('identity');
            } else {
                $this->log($result->getStatus());
                $this->log($result->getErrors());
            }
        }
    }

    public function logout() {
        $this->redirect($this->Auth->logout());
    }

    public function register() {
        // $user = $this->Users->newEntity();
        // if ($this->request->is('post')) {
        //     $user = $this->Users->patchEntity($user, $this->request->data);
        //     if($user->errors()){
        //         $this->set(compact('user'));
        //         $this->render('/Accounts/register');
        //     } else{
        //         if($this->Users->save($user))
        //         {
        //             $this->redirect(array('action' => 'index'));
        //         }
        //     }
        // }

    }
}
