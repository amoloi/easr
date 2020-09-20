<?php

class Projects_Model_Project extends JBlac_ObjectModel
{
    protected $id                   =   null; 
    protected $number               =   null;
    protected $name                 =   null;
    protected $description          =   null;
    protected $tasks                =   null;
    protected $status               =   null;
    protected $startDate            =   null;
    protected $endDate              =   null;
    protected $resolutionStatus     =   0;
    
    
    /*
     * Application related 
     */
    
    protected $applicationId = null; 
   
    public function getId() {
        return $this->id;
    }
    public function getNumber() {
        return $this->number;
    }

    public function getName() {
        return $this->name;
    }
    
    public function getDescription() {
        return $this->description;
    }

    public function getTasks() {
        return $this->tasks;
    }
    
    public function getStatus() {
        return $this->status;
    }
    public function getStartDate() {
        return $this->startDate;
    }

    public function getEndDate() {
        return $this->endDate;
    }
    public function getResolutionStatus() {
        return $this->resolutionStatus;
    }  
    public function getApplicationId() {
        return $this->applicationId;
    }

    public function setId($id) {
        $this->id = (!empty($id)? $id:null);
        return $this;
    }

    public function setName($name) {
        $this->name = (!empty($name)? $name:null);
        return $this;
    }

    public function setNumber($number) {
        $this->number = (!empty($number)? $number:null);
        return $this;
    }

    public function setDescription($description) {
        $this->description = (!empty($description)? $description:null);
        return $this;
    }

    public function setTasks($tasks) {
        $this->tasks = (!empty($tasks)? $tasks:null);
        return $this;
    }

    public function setStatus($status) {
        $this->status = (!empty($status)? $status:null);
        return $this;
    }
    public function setStartDate($startDate) {
        $this->startDate = (!empty($startDate)? $startDate:null);
        return $this;
    }

    public function setEndDate($endDate) {
        $this->endDate = (!empty($endDate)? $endDate:null);
        return $this;
    }
    public function setResolutionStatus($resolutionStatus) {
        $this->resolutionStatus = (!empty($resolutionStatus)? $resolutionStatus:0);
        return $this;
    }
    
    public function setApplicationId($applicationId) {
        $this->applicationId = (!empty($applicationId)? $applicationId:null);
        return $this;
    }
   
}