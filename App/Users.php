<?php

namespace App;

use App\Interfaces\iUsers;
use Core\Model;
use Core\Application;

class Users extends Application implements iUsers
{
    public function all()
    {
        $model = new Model();
        if(\R::testConnection()){
            echo 'OK';
        }else{
            echo 'error';
        }
        echo 'Сласс Users, метод all';
    }

    public function setUser()
    {
        
    }

    public function authUser()
    {
        
        
        if(isset($_POST['name'])){
            $name = $_POST['name'];
                        
        }
        if(isset($_POST['email'])){
            $email = $_POST['email'];
        }        
    }
}
