<?php namespace App\Libraries;
//use \OAuth2\Storage\Pdo;
use \App\Libraries\CustomOauthStorage;
class OAuth{
  var $server;

  function __construct(){
    $this->init();
  }
  public function init(){
    $dns = getenv('database.default.DSN');
    $username = getenv('database.default.username');
    $password = getenv('database.default.password');

    //$storage = new Pdo(['dsn' => $dns, 'username' => $username, 'password' => $password]);
    $storage = new CustomOauthStorage(['dsn' => $dns, 'username' => $username, 'password' => $password]);
    $this->server = new \OAuth2\Server($storage);
    $this->server->addGrantType(new \OAuth2\GrantType\ClientCredentials($storage));
  }
}