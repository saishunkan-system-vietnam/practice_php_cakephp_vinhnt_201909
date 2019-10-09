<?php
/**
 * @author    VinhNT
 * @since     2019-10-09
 */
namespace App\Model\Entity;

use Cake\ORM\Entity;
use Authentication\PasswordHasher\LegacyPasswordHasher;

class User extends Entity
{
    // Hash password default
    protected function _setPassword($value)
    {
        if (strlen($value)) {
            $hasher = new LegacyPasswordHasher(['hashType'=> 'md5']);
            return $hasher->hash($value);
        }
    }
}
