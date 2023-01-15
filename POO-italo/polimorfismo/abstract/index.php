<?php
require_once 'Base.php';
require_once 'Admin.php';
require_once 'User.php';
require_once 'Guest.php';

$guest = new Guest();
echo $guest->login();

echo '<br /><br />';

$user = new User('Diego');
echo $user->login();

echo '<br /><br />';

$admin = new Admin('Teos');
echo $admin->login();