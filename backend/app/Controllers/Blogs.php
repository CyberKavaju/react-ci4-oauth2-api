<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;

class Blogs extends ResourceController
{
    protected $modelName = 'App\Models\BlogModel';
    protected $format    = 'json';

    public function index()
    {
        $data = $this->model->findAll();
        return $this->respond($data);
    }

    
    public function show($id = null)
    {
        $data = $this->model->find($id);
        return $this->respond($data);
    }

    public function create()
    {
        $rules = [
            'post_title' => 'required|min_length[3]|max_length[255]',
            'post_description'  => 'required|min_length[3]',
        ];
        if(!$this->validate($rules)){
            return $this->fail($this->validator->getErrors());
        }else{
            $data = [
                'post_title' => $this->request->getVar('post_title'),
                'post_description' => $this->request->getVar('post_description'),
            ];
            $post_id = $this->model->insert($data);
            $data['post_id'] = $post_id;
            return $this->respondCreated($data);
        }
    }

    public function update($id = null)
    {
        $rules = [
            'post_title' => 'required|min_length[3]|max_length[255]',
            'post_description'  => 'required|min_length[3]',
        ];
        if(!$this->validate($rules)){
            return $this->fail($this->validator->getErrors());
        }else{
            $input = $this->request->getRawInput();
            $data = [
                'post_id' => $id,
                'post_title' => $input['post_title'],
                'post_description' => $input['post_description'],
                //'post_updated' => date('Y-m-d H:i:s'),
            ];
            $this->model->save($data);
            return $this->respond($data);
        }
    }

    public function delete($id = null)
    {
        $data = $this->model->find($id);
        if($data){
            $this->model->delete($id);
            return $this->respondDeleted($data);
        }else{
            return $this->failNotFound('Blog not found');
        }
    }
}
