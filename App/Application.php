<?php
namespace App;

class Application 
{
    public static function dump($atr)
    {
        echo '<style>'."\n";
        Application::getCss();
        echo '</style>'."\n";
        echo '<div class="app_dump"><pre>';
        print_r($atr);
        echo '</pre></div>';
    }

    private static function getCss()
    {
        require_once 'public/app_style.php';
    }
}