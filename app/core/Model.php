<?php
namespace WorkanaTest;
interface Model{
    public function getAll();
    public function getById($id);
    public function save();
}
