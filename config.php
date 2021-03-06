<?php

class AdConfig
{
    public $offline = '0';
    public $offline_message = 'This site is down for maintenance.<br />Please check back again soon.';
    public $display_offline_message = '1';
    public $offline_image = '';
    public $sitename = 'airCore';
    public $captcha = '0';
    public $list_limit = '20';
    public $access = '1';
    public $debug = '0';
    public $debug_lang = '0';

    public $dbtype = 'mysqli';
    public $host = 'localhost';
    public $user = 'root';
    public $password = 'glory';
    public $db = 'coredb';
    public $dbprefix = '';

    public $live_site = 'http://127.0.0.1/coreFramework/';
    public $cdn = '';
    public $secret = 'Pi1gS3vrtWvNq3O0';
    public $template ="simplex";
    public $routerPath="./app.router.php";

    public $airJax = 1;
    public $cors = ['127.0.0.1'];
}
