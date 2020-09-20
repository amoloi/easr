<?php

class Funds_Model_FundsPaymentsMapper extends JBlac_ObjectModelMapper
{
    public function save(Funds_Model_FundsPayments $objEntity)
    {
        $data = [
            'id'            => $objEntity->getId(),
            'fundsId'          => $objEntity->getFundsId(),
            'paymentId'      => $objEntity->getPaymentId(),
        ];
        if (null === ($id = $objEntity->getId())) {
            
            unset($data['id']);
            try {
              $newId =  $this->getDbTable()->insert($data);
              $objEntity->setId($newId);
              return $objEntity->getId();
            } catch (Exception $exc) {
                echo $exc->getMessage();
            }

            
        } else {           
            $this->getDbTable()->update($data, ['id = ?' => $id]);
        }
    }

    public function find($id, Funds_Model_FundsPayments $objEntity)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $objEntity->setFundsId($row->fundsId)
                  ->setPaymentId($row->paymentId)
                ->setId($row->id);        
        return $row;
    }
    public function fetchOne($id, Funds_Model_FundsPayments $objEntity)
    {
        $select = $this->getDbTable()->select()->from(['fp' => 'funds_payment'] , [
                    'id',
                    'fundsId',
                    'paymentId',
                    ])->where('id = ?' , $id);
        $result = $select->query()->fetch();
        if (0 == count($result)) {
            return;
        }
        $row = $result;
        $objEntity->setFundsId($row['fundsId'])
                  ->setPaymentId($row['paymentId'])
                  ->setId($row['id']);
        
        return $row;
    } 
    public function fetchAll()
    {
        $resultSet = $this->getDbTable()->fetchAll();
        $entries   = array();
        foreach ($resultSet as $row) {
            $objEntity = new Funds_Model_FundsPayments();
            $objEntity->setFundsId($row->fundsId)
                  ->setPaymentId($row->paymentId)
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