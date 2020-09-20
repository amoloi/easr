<?php
/**
 * Description of JBlac_Controller_Action_Helper_LogSearch
 *
 * @author Silas Nyundu
 */
class Zend_Controller_Action_Helper_LogSearchPrint extends Zend_Controller_Action_Helper_Abstract{
    //put your code here
    public function direct($logData){

        try{
                $db = Zend_Db_Table::getDefaultAdapter();
                $strSql = "INSERT INTO DEEDS_SEARCH_LOG(LOG_USR_NAME,DEED_NO)"
                        . "VALUES(:LOG_USR_NAME,:DEED_NO)";

                 $statement = new Zend_Db_Statement_Oracle($db,$strSql);
                 $statement->execute(array(':LOG_USR_NAME' => $logData['username'] ,':DEED_NO' => $logData['deedno']));
            
        }  catch (Exception $e){
            echo $e->getMessage();
            exit;
        }
       
    }
}