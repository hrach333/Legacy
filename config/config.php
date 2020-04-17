<?php

return $config = [
    'type' => 'dev',
    'prod' => [
        'conect_db' => [
            'host' =>'localhost',
            'db_name' => 'legacy',
            'user_db' => 'postgres',
            'pass_db' => 'mpmegmrx'
        ]        
    ],
    'glob' => [
        'mail' => [
            'SMTPDebug' => 'SMTP::DEBUG_SERVER',
            'Host' => 'smtp.yandex.ru',
            'SMTPAuth' => true,
            'Username' => 'hrach@hrach.ru',
            'Password' => 'mpmegmrx',
            'SMTPSecure' => 'PHPMailer::ENCRYPTION_SMTPS',
            'Port' => 465
        ],
        'base_url' => $_SERVER['HTTP_HOST']
    ],
    'dev' => [
        'conect_db' =>[
            'host' =>'localhost',
            'db_name' => 'legacy',
            'user_db' => 'postgres',
            'pass_db' => 'mpmegmrx'
        ]
    ]
];