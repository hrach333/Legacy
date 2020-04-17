<?php

namespace Core;

class Configuration 
{
    /**
     * Хранит конфигурацию
     */
    public $config;
    
    public function __construct($conf)
    {
       $configs = require_once 'config/config.php';
       
       $this->config = $configs['dev'][$conf];
    }
}