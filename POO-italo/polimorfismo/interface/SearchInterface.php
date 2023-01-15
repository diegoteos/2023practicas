<?php

interface Search
{
    public function all();
}

class User implements Search
{
    public function all()
    {
        return "Obteniendo a los Users, XML";
    }
}

class Post implements Search
{
    public function all()
    {
        return "Obteniendo a los Post, JSON";
    }
}

$user = new User();
echo $user->all();

echo '<br /><br />';

$post = new Post();
echo $post->all();