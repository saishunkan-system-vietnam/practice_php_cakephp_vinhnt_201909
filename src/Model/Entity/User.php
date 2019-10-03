<?php
// src/Model/Entity/User.php
namespace App\Model\Entity;
use Cake\ORM\Entity;

class User extends Entity {

    // Make all fields mass assignable except for primary key field "id".
    protected $_accessible = [
        '*' => true,
        'id' => false,
    ];

    // Add this method
    protected function _setPassword($value) {
        if (strlen($value)) {
            $hasher = new DefaultPasswordHasher();

            return $hasher->hash($value);
        }
    }
}
?>
