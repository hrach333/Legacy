<?php

namespace Bootstrap;

use App\Router;

class App 
{
    public function run()
    {
        $route = new Router();
        $route->redirection();
    }
}