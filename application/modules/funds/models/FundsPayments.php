<?php

class Funds_Model_FundsPayments extends JBlac_ObjectModel
{

  protected $fundsId           = 	null;
  protected $paymentId           = 	null;

  public function getFundsId() {
      return $this->fundsId;
  }

  public function getPaymentId() {
      return $this->paymentId;
  }

  public function setFundsId($fundsId) {
      $this->fundsId = (!empty($fundsId)? $fundsId:null);
      return $this;
  }

  public function setPaymentId($paymentId) {
      $this->paymentId = (!empty($paymentId)? $paymentId:null);
      return $this;
  }
}