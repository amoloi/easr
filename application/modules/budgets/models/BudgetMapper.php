<?php

class Budgets_Model_BudgetMapper extends JBlac_ObjectModelMapper
{
    public function save(Budgets_Model_Budget $objEntity)
    {
        $data = [
            'id'                =>  $objEntity->getId(),
            'code'            =>  $objEntity->getCode(),
            'name'             =>  $objEntity->getName(),
            'period'        =>  $objEntity->getPeriod(),
            'amount'             =>  $objEntity->getAmount(),
            'description'        =>  $objEntity->getDescription(),            
            'GLAccount'           =>  $objEntity->getGLAccount(),
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

    public function find($id, Budgets_Model_Budget $objEntity)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $objEntity->setCode($row->code)
                  ->setName($row->name)
                  ->setPeriod($row->period)
                  ->setAmount($row->amount)
                  ->setDescription($row->description)
                  ->setGLAccount($row->GLAccount)
                ->setId($row->id);        
        return $row;
    }
    public function fetchOne($id, Budgets_Model_Budget $objEntity)
    {
        $select = $this->getDbTable()->select()->from(['b' => 'budgets'] , [
                    'id',
                    'code',
                    'name',
                    'period',
                    'amount',                    
                    'description',
                    'GLAccount',
                    ])->where('id = ?' , $id);
        $select->setIntegrityCheck(false);
            try {
                $result = $select->query()->fetch();
            } catch (Exception $ex) {

            }
        
        if (0 == count($result)) {
            return $result;
        }
        $row = $result;
        $objEntity->setCode($row['code'])
                  ->setName($row['name'])
                  ->setPeriod($row['period'])
                  ->setAmount($row['amount'])
                  ->setDescription('description')
                  ->setGLAccount($row['GLAccount'])
                  ->setId($row['id']);
        
        return $row;
    } 
    public function fetchAll()
    {
        $resultSet = $this->getDbTable()->fetchAll();
        $entries   = array();
        foreach ($resultSet as $row) {
            $objEntity = new Budgets_Model_Budget();
            $objEntity->setCode($row->amount)
                  ->setName($row->phase)
                  ->setPeriod($row->dateOfPayment)
                  ->setAmount($row->fundsId)
                  ->setDescription($row->remarks)
                  ->setGLAccount($row->GLAccount)
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
        $paginator = Zend_Paginator::factory($this->fetchArray());
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

}