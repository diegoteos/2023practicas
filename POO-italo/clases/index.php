<?php
require_once 'person.php';
require_once 'user.php';
require_once 'admin.php';


$user = new User();
$user->type = new Admin;

echo $user->type->greet();


