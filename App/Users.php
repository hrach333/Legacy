<?php

namespace App;

class Users 
{
    public $title;

    public function all()
    {
        if(isset($_POST['token'])){
            $token = $_POST['token'];
            if($token == 'ge@t5eg'){
                echo 'Ты классный';
            }
            
        }else{
            header("Location: /");
        }
    }
}