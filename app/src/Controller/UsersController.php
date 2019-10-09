<?php
/**
 * @copyright Copyright (c) Cake Software Foundation, Inc. (https://cakefoundation.org)
 * @link      https://cakephp.org CakePHP(tm) Project
 * @since     0.2.9
 * @license   https://opensource.org/licenses/mit-license.php MIT License
 */
namespace App\Controller;

use Cake\Core\Configure;
use Cake\Http\Exception\ForbiddenException;
use Cake\Http\Exception\NotFoundException;
use Cake\View\Exception\MissingTemplateException;
use App\Model\Entity\User;

class UsersController extends AppController
{

    /**
     * Login
     */
    public function login()
    {
        $this->viewBuilder()->setLayout(false);
        // Using Authentication component
        $result = $this->Authentication->getResult();
        if ($result->isValid()) {
            $this->redirect(['controller' => 'Books', 'action' => 'index']);
        } else {
            $this->log($result->getStatus());
            $this->log($result->getErrors());
        }
        $this->render('login');
    }

    /**
     * Logout function
     */
    public function logout()
    {
        $this->Authentication->logout();
        $this->setAction('login');
    }

    /**
     * create data users test
     */
    private function __createDataUsersTest()
    {
        $user = new User([
            'username' => 'vinh',
            'password' => '1'
        ]);
        $this->Users->save($user);
    }
}
