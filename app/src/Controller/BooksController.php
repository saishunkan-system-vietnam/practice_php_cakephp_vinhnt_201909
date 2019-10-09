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

class BooksController extends AppController
{
    public $paginate = [
        // 'fields' => ['Books.title', 'Books.year'],
        'limit' => 10,
        'order' => [
            'Books.title' => 'asc'
        ]
    ];

        /**
     * Initialization hook method.
     *
     * @return void
     */
    public function initialize()
    {
        parent::initialize();
        $this->set("controller","Books");
    }

    /**
     * List books with pagination
     */
    public function index()
    {
        $this->set("action","List book");
        $listBooks = $this->Books->find('all');
        $this->set('listBooks', $this->paginate("Books"));
        $this->render('index');
    }

    /**
     * Add new list books
     */
    public function add()
    {
        $this->set("action","Add Books");
        $this->render('add');
    }
}
