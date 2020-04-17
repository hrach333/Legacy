<?php

return $config = [
    'prod' => [
        'conect_db' => [
            'host' =>'localhost',
            'db_name' => 'legacy',
            'user_db' => 'postgres',
            'pass_db' => 'mpmegmrx'
        ],
        'base_url' => 'http://memory-lane.ru/'
    ],
    'dev' => [
        'conect_db' =>[
            'host' =>'localhost',
            'db_name' => 'legacy',
            'user_db' => 'postgres',
            'pass_db' => 'mpmegmrx'
        ],
        'base_url' => 'http://legacy.loc'
    ]
];