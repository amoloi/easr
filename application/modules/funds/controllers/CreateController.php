<?php

class Funds_CreateController extends JBlac_Controller_Action
{

    public function indexAction()
    {
        //exit('creating');
        $this->view->title = 'New application';
        $form = new JBlac_Forms_Bssp_Funds();
        $form->removeElement('id');
        $this->view->form = $form;
        $objEntity = new Funds_Model_Fund();

        if($this->getRequest()->isPost()){
            if($form->isValid($this->getRequest()->getPost())){
                $objEntityMapper = new Funds_Model_FundMapper('Funds_Model_DbTable_Funds');
                $objEntity->setName($this->getRequest()->getPost('name'))
                          ->setInitialAmount($this->getRequest()->getPost('initialAmount'))
                          ->setOutstandingAmount($this->getRequest()->getPost('outstandingAmount'))
                          ->setDateOfApproval($this->getRequest()->getPost('dateOfApproval'))
                          ->setRemarks($this->getRequest()->getPost('remarks'))
                          ->setBudgetId($this->getRequest()->getPost('budget'))
                          ->setCreatedBy('SYSTEM');
                
                try{
                    
                    $entityId = $objEntityMapper->save($objEntity);
                    $this->_flashMessenger->addMessage(array('message' => 'Funds record has been created.', 'status' => 'success'));                     
                      
                } catch (Exception $ex) {
                    echo $ex->getMessage();
                }
                $this->_redirect('/funds/');
            }else{
                Zend_Debug::dump($form->getCustomMessages());
                $this->view->form = $form;
                return;
            }
        }else{
                      
        } 
    }
    
    public function deleteAction(){
        $this->view->title = '';
        $id = $this->_request->getParam('id', 0);
        $objMapper = new Funds_Model_FundMapper('Funds_Model_DbTable_Funds');
        $applicationData = $objMapper->delete($id);
        $this->_flashMessenger->addMessage(array('message' => 'Funds record has been deleted.', 'status' => 'info'));        
        $this->_redirect('/funds/');
    }
}



