<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * User Entity
 *
 * @property int $id
 * @property string|null $user_name
 * @property string|null $password
 * @property string|null $mail
 * @property string|null $address
 * @property string|null $phone
 * @property int|null $role
 * @property string|null $create_user
 * @property string|null $update_user
 * @property \Cake\I18n\FrozenTime|null $create_time
 * @property \Cake\I18n\FrozenTime|null $update_time
 * @property int|null $is_deleted
 * @property string|null $token
 */
class User extends Entity
{
    /**
     * Fields that can be mass assigned using newEntity() or patchEntity().
     *
     * Note that when '*' is set to true, this allows all unspecified fields to
     * be mass assigned. For security purposes, it is advised to set '*' to false
     * (or remove it), and explicitly make individual fields accessible as needed.
     *
     * @var array
     */
    protected $_accessible = [
        'user_name' => true,
        'password' => true,
        'mail' => true,
        'address' => true,
        'phone' => true,
        'role' => true,
        'create_user' => true,
        'update_user' => true,
        'create_time' => true,
        'update_time' => true,
        'is_deleted' => true,
        'token' => true
    ];

    /**
     * Fields that are excluded from JSON versions of the entity.
     *
     * @var array
     */
    protected $_hidden = [
        'password',
        'token'
    ];
}
