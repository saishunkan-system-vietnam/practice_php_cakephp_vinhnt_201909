<?php
// src/Model/Table/UsersTable.php
namespace App\Model\Table;

use Cake\ORM\Table;
use Cake\Validation\Validator;

class UsersTable extends Table
{

    public function validationDefault(Validator $validator)
    {
         $validator
            ->notEmpty('username', 'Tên người dùng là bắt buộc')
            ->notEmpty('password', 'Mật khẩu không được để trống');
        return $validator;
    }

    // public function findAuth(\Cake\ORM\Query $query, array $options)
    // {
    //     $query
    //         ->select(['id', 'username', 'password'])
    //         ->where(['Users.username' => 'vinh']);

    //     return $query;
    // }
    function checkLogin($username,$password){
        // $sql = "Select username,password from users where username='$username' AND password ='$password'";
        // $this->query($sql);
        // if($this->getNumRows() == 0){
        //   return false;
        // }else{
        //   return true;
        // }
        $query = $this
                ->find()
                ->where(['username =' => $username, 'password =' => $password]);
        $result = $query->all();
        if($result->isEmpty()){
            return false;
        }
        return true;
      }
}
?>
