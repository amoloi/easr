<?php

class Applications_PaymentsController extends JBlac_Controller_Action
{
    public function indexAction()
    {
        // action body
    }

    public function createdepositAction()
    {
        $this->view->title = 'Auction Manager :: New Auction`s Deposit';
        //$a = new Auction_Model_AuctionMapper('Auction_Model_DbTable_Auction');
        
        //echo Zend_Json::encode($a->fetchAuctions('a'));

        $form = new JBlac_Forms_Payments_Deposit();
        $this->view->form = $form;
        $objEntity = new Auction_Model_Deposit();
        
        if($this->getRequest()->isPost()){
            if($form->isValid($this->getRequest()->getPost())){
                $objEntityMapper = new Auction_Model_DepositMapper('Auction_Model_DbTable_Deposit');
                $objEntity
                          ->setId($this->getRequest()->getPost('id'))
                          ->setCode($this->getRequest()->getPost('code'))
                          ->setReceived($this->getRequest()->getPost('received'))
                          ->setRefunded($this->getRequest()->getPost('refunded'))
                          ->setAuctionId($this->getRequest()->getPost('auctionId'))
                          ->setBuyerId($this->getRequest()->getPost('buyerId'))              
                          ->setCreatedBy('SYSTEM');
                
                try{
                    
                    $depositId = $objEntityMapper->save($objEntity);
                    
                } catch (Exception $ex) {
                    echo $ex->getMessage();
                }
                $this->_redirect('/auction/payments/');
            }else{
                $this->view->form = $form;
                return;
            }
        }else{
                      
        }
    }

    public function updatedepositAction()
    {
        // action body
    }

    public function refunddepositAction()
    {
        $this->view->title = 'Auction Manager :: New Auction`s Deposit';
        $form = new JBlac_Forms_Payments_Deposit();
        $this->view->form = $form;
        $objEntity = new Auction_Model_Deposit();
        
        if($this->getRequest()->isPost()){
            if($form->isValid($this->getRequest()->getPost())){
                $objEntityMapper = new Auction_Model_DepositMapper('Auction_Model_DbTable_Deposit');
                $objEntity
                          ->setId($this->getRequest()->getPost('id'))
                          ->setCode($this->getRequest()->getPost('code'))
                          ->setReceived($this->getRequest()->getPost('received'))
                          ->setRefunded($this->getRequest()->getPost('refunded'))
                          ->setAuctionId($this->getRequest()->getPost('auctionId'))
                          ->setBuyerId($this->getRequest()->getPost('buyerId'))              
                          ->setCreatedBy('SYSTEM');                
                try{
                    
                    $depositId = $objEntityMapper->save($objEntity);
                    
                } catch (Exception $ex) {
                    echo $ex->getMessage();
                }
                $this->_redirect('/auction/payments/');
            }else{
                $this->view->form = $form;
                return;
            }
        }else{
                      
        }
    }

    public function createAction()
    {
        // action body
    }

    public function updateAction()
    {
        // action body
    }

    public function depositAction()
    {
        // action body
    }


}













