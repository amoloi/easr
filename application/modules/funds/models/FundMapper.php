<?php

class Funds_Model_FundMapper extends JBlac_ObjectModelMapper
{
    protected $entries = [];
    public function save(Funds_Model_Fund $objEntity)
    {
        $data = [
            'id'                    => $objEntity->getId(),
            'name'                  => $objEntity->getName(),
            'initialAmount'         => $objEntity->getInitialAmount(),
            'outstandingAmount'     => $objEntity->getOutstandingAmount(),            
            'dateOfApproval'        => $objEntity->getDateOfApproval(),
            'remarks'               => $objEntity->getRemarks(),
            'budgetId'              => $objEntity->getBudgetId(),
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

    public function find($id, Funds_Model_Fund $objEntity)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $objEntity->setName($row->name)
                  ->setInitialAmount($row->initialAmount)
                  ->setOutstandingAmount($row->outstandingAmount)
                  ->setDateOfApproval($row->dateOfApproval)
                  ->setRemarks($row->remarks)
                  ->setBudgetId($row->budgetId)
                ->setId($row->id);        
        return $row;
    }
    public function fetchOne($id, Funds_Model_Fund $objEntity)
    {
        $select = $this->getDbTable()->select()->from(['d' => 'funds'] , [
                    'id',
                    'name',
                    'initialAmount',
                    'outstandingAmount',
                    'DATE_FORMAT(dateOfApproval , \'%d/%m/%Y\') as dateOfApproval',
                    'remarks',
                    'budgetId',
                    ])->where('id = ?' , $id);
        $result = $select->query()->fetch();
        if (0 == count($result)) {
            return;
        }
        $row = $result;
        $objEntity->setName($row['name'])
                  ->setInitialAmount($row['initialAmount'])
                  ->setOutstandingAmount($row['outstandingAmount'])
                  ->setDateOfApproval($row['dateOfApproval'])
                  ->setRemarks($row['remarks'])
                  ->setBudgetId($row['budgetId'])
                  ->setId($row['id']);
        
        return $row;
    }
    public function fetchFunds()
    {
        $select = $this->getDbTable()->select()->from(['d' => 'funds'] , [
                    'id',
                    'name',
                    'initialAmount',
                    'outstandingAmount',
                    'DATE_FORMAT(dateOfApproval , \'%d/%m/%Y\') as dateOfApproval',
                    'remarks',
                    'budgetId',
                    ]);
        $results = $select->query()->fetchAll();
        if (0 == count($results)) {
            return [];
        }

        $entries   = [];
        foreach ($results as $row) {
            $objEntity = new Funds_Model_Fund();
            $objEntity->setName($row['name'])
                  ->setInitialAmount($row['initialAmount'])
                  ->setOutstandingAmount($row['outstandingAmount'])
                  ->setDateOfApproval($row['dateOfApproval'])
                  ->setRemarks($row['remarks'])
                  ->setBudgetId($row['budgetId'])
                  ->setId($row['id']);
            $entries[] = $objEntity;
        }
        $this->entries = $entries;
        
        return $results;
    }    
    public function fetchAll()
    {
        $resultSet = $this->getDbTable()->fetchAll();
        $entries   = array();
        foreach ($resultSet as $row) {
            $objEntity = new Funds_Model_Fund();
            $objEntity->setName($row->name)
                  ->setInitialAmount($row->initialAmount)
                  ->setOutstandingAmount($row->outstandingAmount)
                  ->setDateOfApproval($row->dateOfApproval)
                  ->setRemarks($row->remarks)
                  ->setBudgetId($row->budgetId)
                  ->setId($row->id);
            $entries[] = $objEntity;
        }
        return $entries;
    }
    public function fetchArray()
    {
        $resultSet = $this->getDbTable()->fetchAll();
        return $resultSet;
    }
    public function fetchPage($page)
    {
        /*
        * Object of Zend_Paginator
        */
        $paginator = Zend_Paginator::factory($this->fetchFunds());
        /*
        * Set the number of counts in a page
        */
        $paginator->setItemCountPerPage(5);
        /*
        * Set the current page number
        */
        $paginator->setCurrentPageNumber($page);
        /*
        * Assign to view
        */
        
        return $paginator;
    }
    public function getEntries(){
        return $this->entries;
    }

}