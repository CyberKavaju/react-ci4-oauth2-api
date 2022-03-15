<?php namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;
use App\Libraries\Oauth;
use \OAuth2\Request;
use CodeIgniter\API\ResponseTrait;
use App\Models\UserModel;

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

    public function register(){
        helper('form');
        $data = [];
        
        if ($this->request->getMethod() !== 'post') {
            return $this->fail('Method not allowed');
        }
        $rules = [
            'user_username' => 'required|min_length[3]|max_length[100]',
            'user_name' => 'required|min_length[3]|max_length[100]',
            'user_surname' => 'required|min_length[3]|max_length[100]',
            'user_email' => 'required|valid_email|is_unique[tbl_users.user_email]|min_length[3]|max_length[255]',
            'user_password' => 'required|min_length[8]|max_length[255]',
            'user_password_confirm' => 'required|matches[user_password]'
        ];

        if (!$this->validate($rules)) {
            return $this->fail($this->validator->getErrors());
        } else {
            $data = [
                'user_username' => $this->request->getVar('user_username'),
                'user_name' => $this->request->getVar('user_name'),
                'user_surname' => $this->request->getVar('user_surname'),
                'user_email' => $this->request->getVar('user_email'),
                'user_password' => $this->request->getVar('user_password')
            ];
            $userModel = new UserModel();
            $user_id = $userModel->insert($data);
            $data['user_id'] = $user_id;
            unset($data['user_password']);
            return $this->respondCreated($data);
        }
        
    }
}
