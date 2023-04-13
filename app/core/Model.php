<?php
namespace WorkanaTest;
interface Model{
    public function all();
    public function getById($id);
    public function save();
}
