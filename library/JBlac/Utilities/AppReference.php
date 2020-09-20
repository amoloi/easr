<?php
/**
 * Description of ListReferenceCodes
 *
 * @author Innocent J Blac
 */
class JBlac_Utilities_AppReference {
    
    public static function fetchEntityLOV($entity)
        {
            $db = Zend_Db_Table::getDefaultAdapter();
            $select = $db->select()->from('legal_entities_v', [
                        'id',
                        'COALESCE(nullif(person , \'\') , company) as name',
                        ])
                        ->where('entityCategory = ?' , $entity);

            $results = $select->query()->fetchAll();

            if (0 == count($results)) {
                exit;
                return [];
            }
            $entities = [];
            foreach ($results as $row) {
                $entities[$row['id']] = $row['name'];

            }        
            return $entities;
        }
    public static function fetchApplicationsLOV()
        {
            $db = Zend_Db_Table::getDefaultAdapter();
            $select = $db->select()->from('applications_lov_v', [
                        'id',
                        'application',
                        ])
                        ->where('application IS NOT NULL');

            $results = $select->query()->fetchAll();

            if (0 == count($results)) {
                return [];
            }
            $entities = [];
            foreach ($results as $row) {
                $entities[$row['id']] = $row['application'];

            }        
            return $entities;
        }        
    public static function fetchFundsLOV()
        {
            $db = Zend_Db_Table::getDefaultAdapter();
            $select = $db->select()->from('funds_lov_v', [
                        'id',
                        'amount',
                        ])
                        ->where('id IS NOT NULL');

            $results = $select->query()->fetchAll();
            
            if (0 == count($results)) {
                return [];
            }
            $entities = [];
            foreach ($results as $row) {
                $entities[$row['id']] = $row['amount'];

            } 
            
            return $entities;

    }
    public static function getCountries($listOrder = FALSE){
        $db = Zend_Db_Table::getDefaultAdapter();
        $select = $db->select();
        $select->from('COUNTRIES_LOV_V');
        $select->where('CODE IS NOT NULL');
        $codes = [];

        $data = $db->query($select)->fetchAll();
        foreach($data as $code) {
            $codes[$code['code']] = $code['name'];
            }        
            return $codes;
        }         

    public static function getIsoCountries($alpha = 2){
        $db = Zend_Db_Table::getDefaultAdapter();
        $select = $db->select();

        switch ($alpha) {
            case 2:
                    $select->from('COUNTRIES_ISO_ALPA2_V');
                break;
            case 3:
                    $select->from('COUNTRIES_ISO_ALPA3_V');
                break;            
            default:
                    $select->from('COUNTRIES_LOV_V');                
                break;
}
        
        $select->where('VALUE IS NOT NULL');
        $codes = [];

        $data = $db->query($select)->fetchAll();
        foreach($data as $code) {
            $codes[$code['VALUE']] = $code['LABEL'];
        }
        return $codes;
    }
    
    public static function getIsoDialingCountryCodes(){
        $db = Zend_Db_Table::getDefaultAdapter();
        $select = $db->select();

            $select->from('COUNTRY_DIALING_CODES_V');
        
            $select->where('VALUE IS NOT NULL');
        $codes = [];

        $data = $db->query($select)->fetchAll();
        foreach($data as $code) {
            $codes[$code['VALUE']] = $code['LABEL'];
        }
        return $codes;
    }    
}