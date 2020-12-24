<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\web\UploadedFile;

class ImageUpload extends Model {

    public $image;

    public function rules()
    {
        return [
            [['image'], 'required'],
            [['image'], 'file', 'extensions' => 'jpg,jpeg,png']
        ];
    }

    public function uploadFile(UploadedFile $file, $currentImageName) {

        // Reassigning of image
        $this->image = $file;

        if ($this->validate()) {
            $this->deleteCurrentImage($currentImageName);
            return $this->saveImage($file);
        }
    }

    private function getFolder ()
    {
        return Yii::getAlias('@web').'uploads/';
    }

    public function deleteCurrentImage ($currentImageName)
    {
        // deleting old image file
        if ($this->fileExists($currentImageName))
            unlink($this->getFolder().$currentImageName);
    }

    public function fileExists ($currentImageName) {
        if ($currentImageName!=null && $currentImageName!="")
            return file_exists($this->getFolder().$currentImageName);
    }

    public function saveImage($file) {
        $file->saveAs($this->getFolder().$file->name);
        return $file->name;
    }

}


