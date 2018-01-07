<?php
// require the Faker autoloader
require_once '../vendor/autoload.php';

$config = [
  'db' => [
    'driver' => 'mysql',
    'host' => 'localhost',
    'port' => '3306',
    'database' => 'colectivos',
    'username' => 'root',
    'password' => '',
    'charset' => 'utf8',
    'collation' => 'utf8_unicode_ci',
  ]
];

$capsule = new \Illuminate\Database\Capsule\Manager;
$capsule->addConnection($config['db']);
$capsule->setAsGlobal();
$capsule->bootEloquent();

class Colectivo extends \Illuminate\Database\Eloquent\Model {  
  protected $table = 'colectivo';
}


$faker = Faker\Factory::create();
