<?php
/**
 * Description of JBlac_Controller_Action_Helper_PayPrint
 *
 * @author Innocent
 */
class Zend_Controller_Action_Helper_PayPrint extends Zend_Controller_Action_Helper_Abstract{
    //put your code here
    public function direct($printFee){
        
        $settingObj = new Admin_Model_Setting();
        $setting = new Admin_Model_SettingsMapper([]);
        
        $settings = $setting->fetchSetting('RUNTIME_MODE');
        if(($settings->getSettingVar() === 'RUNTIME_MODE')){
            if( $settings->getSettingVal() === 'P'){
                $balanceObj = new Creditmanager_Model_Balance([]);
                $balanceObjMapper = new Creditmanager_Model_BalanceMapper([]);

                        if($balanceData = $balanceObjMapper->fetchOneByUser(AUTHORIZED_USER)){
                            $balanceObj->setBalanceSeq($balanceData['id_seq_no'])
                                       ->setUserId(AUTHORIZED_USER)
                                       ->setBalanceAmount($balanceData['usr_balance'] - $printFee);

                            $balanceObjMapper->save($balanceObj);

                        } 
            }
        }
       
    }
}