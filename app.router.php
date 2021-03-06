<?php

$appRouter = [
  [
    'path'=>'/',
    'component'=>'app',
    'title'=>'Welcome Home'
  ],

  [
    'path'=>'about',
    'component'=>'about'
  ],

  [
    'path'=>'practice',
    'component'=>'practice',
    'title'=>'Practice With Data'
  ],

  [
    'path'=>'persondata',
    'component'=>'practicedata'
  ],

  [
    'path'=>'contact',
    'component'=>'contact',
    'title'=>'Get In Touch'
  ],

  [
    'path'=>'account',
    'component'=>'account',
    'title'=>'Profile',
    'authguard'=>['authenticate']
  ],

  [
    'path'=>'account/login',
    'component'=>'login',
    'title'=>'Please Login'
  ],

  [
    'path'=>'account/logout',
    'component'=>'logout'
  ]

];

$appRouterModule = CORE::getInstance('Router');
$appRouterModule->setRouter($appRouter);
