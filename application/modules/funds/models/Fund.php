<?php

class Funds_Model_Fund extends JBlac_ObjectModel
{

  protected $name		= 	null;
  protected $initialAmount           = 	null;
  protected $outstandingAmount           = 	null;
  protected $dateOfApproval          = 	null;
  protected $remarks           = 	null;
  protected $budgetId           = 	null;

  
  public function getName() {
      return $this->name;
  }

  public function getInitialAmount() {
      return $this->initialAmount;
  }

  public function getOutstandingAmount() {
      return $this->outstandingAmount;
  }

  public function getDateOfApproval() {
      return $this->dateOfApproval;
  }

  public function getRemarks() {
      return $this->remarks;
  }
  public function getBudgetId() {
      return $this->budgetId;
  }

  public function setName($name) {
      $this->name = (!empty($name)? $name:null);
      return $this;
  }

  public function setInitialAmount($initialAmount) {
      $this->initialAmount = (!empty($initialAmount)? $initialAmount:null);
      return $this;
  }

  public function setOutstandingAmount($outstandingAmount) {
      $this->outstandingAmount = (!empty($outstandingAmount)? $outstandingAmount:null);
      return $this;
  }

  public function setDateOfApproval($dateOfApproval) {
  
    list($dd , $mm , $yyyy) = explode('/', $dateOfApproval);
    $dateOfApproval = "{$yyyy}-{$mm}-{$dd}";
    $this->dateOfApproval = (!empty($dateOfApproval)? $dateOfApproval:null);
    return $this;
  }

  public function setRemarks($remarks) {
      $this->remarks = (!empty($remarks)? $remarks:null);
      return $this;
  }
  public function setBudgetId($budgetId) {
      $this->budgetId = (!empty($budgetId)? $budgetId:null);
      return $this;
  }
}