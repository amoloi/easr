<?php

class Funds_UpdateController extends JBlac_Controller_Action
{

    public function indexAction()
    {
        $this->view->title = 'New application';
        $id = $this->_request->getParam('id', 0);
        $form = new JBlac_Forms_Bssp_Funds();
        
        $obj = new Funds_Model_Fund();
        
        $objMapper = new Funds_Model_FundMapper('Funds_Model_DbTable_Funds');
        $objData = $objMapper->fetchOne($id, $obj);

        if($this->getRequest()->isPost()){
            if(null !== $this->getRequest()->getPost('id')){
                $name = $form->getElement('name');
                $name->addValidator('Db_NoRecordExists',
                                 false,
                                 array('table'    => 'funds',
                                         'field'     => 'name',
                                         'exclude' => array ('field' => 'id',
                                                                    'value' => $this->getRequest()->getPost('id'))));
            }
            if($form->isValid($this->getRequest()->getPost())){
                $obj->setName($this->getRequest()->getPost('name'))
                          ->setInitialAmount($this->getRequest()->getPost('initialAmount'))
                          ->setOutstandingAmount($this->getRequest()->getPost('outstandingAmount'))
                          ->setDateOfApproval($this->getRequest()->getPost('dateOfApproval'))
                          ->setRemarks($this->getRequest()->getPost('remarks'))
                          ->setBudgetId($this->getRequest()->getPost('budget'))
                          ->setId($this->getRequest()->getPost('id'))
                          ->setCreatedBy('SYSTEM');               
                try{                    
                    $entityId = $objMapper->save($obj); 
                    $this->_flashMessenger->addMessage(array('message' => 'Funds record has been updated.', 'status' => 'success')); 
                } catch (Exception $ex) {
                    echo $ex->getMessage();
                }
                $this->_redirect('/funds/');
            }else{
                $form->populate($this->getRequest()->getPost());
                $this->view->form = $form;
                return;
            }
        }else{
            $form->populate($objData);
            $this->view->form = $form;                      
        }
    }  
}