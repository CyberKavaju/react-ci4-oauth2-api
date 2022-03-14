<?php namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;
use App\Libraries\Oauth;
use \OAuth2\Request;
use CodeIgniter\API\ResponseTrait;

class Users extends ResourceController
{
    use ResponseTrait;

    public function login()
    {
        $oauth = new Oauth();
        $request = new Request();
        $respond = $oauth->server->handleTokenRequest($request->createFromGlobals());
        $code = $respond->getStatusCode();
        $body = $respond->getResponseBody();
        return $this->respond(json_decode($body), $code);
    }
}