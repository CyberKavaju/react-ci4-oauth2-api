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
            'post_fetured_imagefield' => 'uploaded[post_fetured_imagefield]|max_size[post_fetured_imagefield, 1024]',
        ];
        if(!$this->validate($rules)){
            return $this->fail($this->validator->getErrors());
        }else{
            //get file
            $file = $this->request->getFile('post_fetured_imagefield');
            if(!$file->isValid()){
                return $this->fail($file->getErrorString());
            }
            //move file
            $file->move('./assets/uploads');
            $data = [
                'post_title' => $this->request->getVar('post_title'),
                'post_description' => $this->request->getVar('post_description'),
                'post_fetured_imagefield' => $file->getName(),
            ];
            $post_id = $this->model->insert($data);
            $data['post_id'] = $post_id;
            return $this->respondCreated($data);
        }
    }

    public function update($id = null)
    {
        helper(['form', 'array']);
        $rules = [
            'post_title' => 'required|min_length[3]|max_length[255]',
            'post_description'  => 'required|min_length[3]',
        ];
        $fileName = dot_array_search('post_fetured_imagefield.name', $_FILES);
        if(!empty($fileName)){
            $rules['post_fetured_imagefield'] = 'uploaded[post_fetured_imagefield]|max_size[post_fetured_imagefield, 1024]';
        }
        if(!$this->validate($rules)){
            return $this->fail($this->validator->getErrors());
        }else{
            $data = [
                'post_id' => $id,
                'post_title' => $this->request->getVar('post_title'),
                'post_description' => $this->request->getVar('post_description'),
            ];
            if(!empty($fileName)){
                $file = $this->request->getFile('post_fetured_imagefield');
                if(!$file->isValid()){
                    return $this->fail($file->getErrorString());
                }
                $file->move('./assets/uploads');
                $data['post_fetured_imagefield'] = $file->getName();
            }
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
