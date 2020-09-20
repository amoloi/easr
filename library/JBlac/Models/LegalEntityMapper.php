<?php
/**
 * Description of JBlac_Model_LegalEntityMapper
 *
 * @author Innocent
 */

class JBlac_Models_LegalEntityMapper extends JBlac_ObjectModelMapper{
    public function save(JBlac_Models_LegalEntity $objEntity)
    {
        $data = [
            'id'                => $objEntity->getId(),
            'firstName'         => $objEntity->getFirstName(),
            'middleName'          => $objEntity->getMiddleName(),
            'lastName'          => $objEntity->getLastName(),
            'dateOfBirth'          => $objEntity->getDateOfBirth(),
            'identityNumber'    => $objEntity->getIdentityNumber(),
            'passportNumber'    => $objEntity->getPassportNumber(),
            'companyRegistrationNumber'    => $objEntity->getCompanyRegistrationNumber(), 
            'entityType'        => $objEntity->getEntityType(),
            'entityCategory'    =>  $objEntity->getEntityCategory(),
            'companyName'       => $objEntity->getCompanyName(), 
            'emailAddress'      => $objEntity->getEmailAddress(),
            'telephoneNumber'   => $objEntity->getTelephoneNumber(),
            'mobileNumber'      => $objEntity->getMobileNumber(),
            'faxNumber'         => $objEntity->getFaxNumber(),
            'remarks'           => $objEntity->getRemarks(),
        ];
        if (null === ($id = $objEntity->getId())) {
            
            unset($data['id']);
            $data['createdBy'] = $objEntity->getCreatedBy();
            $data['createdOn'] = date('Y-m-d H:i:s');
            try {
              $newId =  $this->getDbTable()->insert($data);
              $objEntity->setId($newId);
              return $objEntity->getId();
            } catch (Exception $exc) {
                echo $exc->getMessage();
            }

            
        } else {
            $data['modifiedBy'] = $objEntity->getModifiedBy();
            $data['modifiedOn'] = date('Y-m-d H:i:s');            
            $this->getDbTable()->update($data, ['id = ?' => $id]);
        }
    }

    public function find($id, JBlac_Models_LegalEntity $objEntity)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $objEntity->setId($row->id)
                  ->setFirstName($row->firstName)
                  ->setMiddleName($row->middleName)
                  ->setLastName($row->lastName)
                  ->setDateOfBirth($row->dateOfBirth)
                  ->setIdentityNumber($row->identityNumber)
                  ->setPassportNumber($row->passportNumber)                
                  ->setCompanyRegistrationNumber($row->companyRegistrationNumber)
                  ->setCompanyName($row->companyName)
                  ->setEntityType($row->entityType)
                  ->setEntityCategory($row->entityCategory)
                  ->setEmailAddress($row->emailAddress)
                  ->setTelephoneNumber($row->telephoneNumber)
                  ->setMobileNumber($row->mobileNumber)
                  ->setFaxNumber($row->faxNumber)
                  ->setRemarks($row->remarks);        
        return $row;
    }
    public function fetchOne($id, JBlac_Models_LegalEntity $objEntity)
    {
        $select = $this->getDbTable()->select()->from(['p' => 'promoters'] , [
                    'id',
                    'firstName',
                    'firstName',
                    'lastName',
                    'dateOfBirth',
                    'identityNumber',
                    'passportNumber',
                    'companyRegistrationNumber',
                    'companyName',
                    'entityType',
                    'entityCategory',
                    'emailAddress',
                    'telephoneNumber',
                    'mobileNumber',
                    'faxNumber',
                    'remarks',
                    ])->where('id = ?' , $id);
        $result = $select->query()->fetch();
        if (0 == count($result)) {
            return;
        }
        $row = $result;
        $objEntity->setId($row['buyerId'])
                  ->setFirstName($row['firstName'])
                  ->setMiddleName($row['middleName'])
                  ->setLastName($row['lastName'])
                  ->setDateOfBirth($row['dateOfBirth'])
                  ->setIdentityNumber($row['identityNumber'])
                  ->setPassportNumber($row['passportNumber'])
                  ->setCompanyRegistrationNumber($row['companyRegistrationNumber'])
                  ->setCompanyName($row['companyName'])
                  ->setEntityType($row['entityType'])
                  ->setEntityCategory($row['entityCategory'])
                  ->setEmailAddress($row['emailAddress'])
                  ->setTelephoneNumber($row['telephoneNumber'])
                  ->setMobileNumber($row['mobileNumber'])
                  ->setFaxNumber($row['faxNumber'])
                  ->setRemarks($row['remarks']);
        
        return $row;
    }
    public function fetchDataSet($id, JBlac_Models_LegalEntity $legalEntity , JBlac_Models_Address $addressEntity)
    {
        $db = Zend_Db_Table::getDefaultAdapter();
        $select = $db->select()->from(['le' => 'legal_entities'] , [
                    'id',
                    'firstName',
                    'middleName',
                    'lastName',
                    'dateOfBirth',
                    'identityNumber',
                    'passportNumber',
                    'companyRegistrationNumber',
                    'companyName',
                    'entityType',
                    'entityCategory',
                    'emailAddress',
                    'telephoneNumber',
                    'mobileNumber',
                    'faxNumber',
                    'remarks',
                    ])
                    ->join(['a' => 'address'], 'le.id = a.legalEntityId', [
                    'id as addressId',
                    'addressLineOne',
                    'addressLineTwo',
                    'postalAddress',
                    'regionCode',
                    'cityCode',
                    'countryCode',
                        ])
                        ->where('le.id = ?' , $id);

        $result = $select->query()->fetch();

        if (0 == count($result)) {
            exit;
            return [];
        }
        $row = $result;
        /*
         * Entity Data
         */
        $legalEntity->setId($row['id'])
                  ->setFirstName($row['firstName'])
                  ->setMiddleName($row['middleName'])
                  ->setLastName($row['lastName'])
                  ->setDateOfBirth($row['dateOfBirth'])
                  ->setIdentityNumber($row['identityNumber'])
                  ->setPassportNumber($row['passportNumber'])
                  ->setCompanyRegistrationNumber($row['companyRegistrationNumber'])
                  ->setCompanyName($row['companyName'])
                  ->setEntityType($row['entityType'])
                  ->setEntityCategory($row['entityCategory'])
                  ->setEmailAddress($row['emailAddress'])
                  ->setTelephoneNumber($row['telephoneNumber'])
                  ->setMobileNumber($row['mobileNumber'])
                  ->setFaxNumber($row['faxNumber'])
                  ->setRemarks($row['remarks']);
        /*
         * Address Data
         */
        $addressEntity->setId($row['addressId'])
                  ->setAddressLineOne($row['addressLineOne'])
                  ->setAddressLineTwo($row['addressLineTwo'])
                  ->setPostalAddress($row['postalAddress'])
                  ->setRegionCode($row['regionCode'])
                  ->setCityCode($row['cityCode'])
                  ->setCountryCode($row['countryCode'])
                  ->setLegalEntityId($row['id']); 
        
        return $row;
    }    
    public function fetchAll()
    {
        $resultSet = $this->getDbTable()->fetchAll();
        $entries   = array();
        foreach ($resultSet as $row) {
            $entry = new JBlac_Model_LegalEntity();
            $entry->setId($row->id)
                  ->setFirstName($row->firstName)
                  ->setMiddleName($row->middleName)
                  ->setDateOfBirth($row->dateOfBirth)
                  ->setIdentityNumber($row->identityNumber)
                  ->setPassportNumber($row->passportNumber)
                  ->setCompanyRegistrationNumber($row->companyRegistrationNumber)
                  ->setCompanyName($row->companyName)
                  ->setEntityType($row->entityType)
                  ->setEntityCategory($row->entityCategory)
                  ->setEmailAddress($row->emailAddress)
                  ->setTelephoneNumber($row->telephoneNumber)
                  ->setMobileNumber($row->mobileNumber)
                  ->setFaxNumber($row->faxNumber)
                  ->setRemarks($row->remarks);
            $entries[] = $entry;
        }
        return $entries;
    }
    public function fetchArray($where)
    {
        
        $resultSet = $this->getDbTable()->fetchAll("entityType = '{$where}'");
        return $resultSet;
    }
    
    public function fetchPage($page , $type)
    {
        /*
        * Object of Zend_Paginator
        */
        $paginator = Zend_Paginator::factory($this->fetchArray($type));
        /*
        * Set the number of counts in a page
        */
        $paginator->setItemCountPerPage(10);
        /*
        * Set the current page number
        */
        $paginator->setCurrentPageNumber($page);
        /*
        * Assign to view
        */
        
        return $paginator;
    }
    public function fetchEntityType($type){
        $db = Zend_Db_Table::getDefaultAdapter();
        $select = $db->select()->from('legal_entities_v', [
                    'id',
                    'COALESCE(nullif(person , \'\') , company) as name',
                    ])
                    ->where('entityCategory = ?' , $type);

        $result = $select->query()->fetchAll();

        return $result;        
    }

    public function fetchEntityPage($entity , $page){
        /*
        * Object of Zend_Paginator
        */
        $paginator = Zend_Paginator::factory($this->fetchEntityType($entity));
        /*
        * Set the number of counts in a page
        */
        $paginator->setItemCountPerPage(10);
        /*
        * Set the current page number
        */
        $paginator->setCurrentPageNumber($page);
        /*
        * Assign to view
        */
        
        return $paginator;        
    }
    
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
}