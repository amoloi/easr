<?php

class Projects_IndexController extends JBlac_Controller_Action
{

    public function init()
    {
//        Zend_Debug::dump(JBlac_Utilities_Project::getProjectNumber());
        parent::init();
    }


    public function indexAction()
    {
        $this->view->title = '';
        $page = $this->_getParam('page', 1);
        $mapper = new Projects_Model_ProjectMapper ('Projects_Model_DbTable_Project');
        
//        Zend_Debug::dump($mapper->fetchPage($page));exit;
        $this->view->paginator = $mapper->fetchPage($page);
    }

    public function createAction()
    {
        //exit('creating');
        $this->view->title = 'New application';
        $form = new JBlac_Forms_Bssp_Promoter();
        $form->removeElement('id');
        $this->view->form = $form;
        $application = new Applications_Model_Application();
        
        if($this->getRequest()->isPost()){
            if($form->isValid($this->getRequest()->getPost())){
                $aplicationMapper = new Applications_Model_ApplicationMapper('Applications_Model_DbTable_Application');
                $application->setPromoter($this->getRequest()->getPost('promoter'))
                        ->setBusinessName($this->getRequest()->getPost('businessName'))
                        ->setBusinessSector($this->getRequest()->getPost('businessSector'))
                        ->setBusinessActivity($this->getRequest()->getPost('businessActivity'))
                        ->setRequestType($this->getRequest()->getPost('requestType'))
                        ->setTelephoneNumber($this->getRequest()->getPost('telephoneNumber'))
                        ->setMobileNumber($this->getRequest()->getPost('mobileNumber'))
                        ->setFaxNumber($this->getRequest()->getPost('faxNumber'))
                        ->setEmailAddress($this->getRequest()->getPost('emailAddress'))
                        ->setPostalAddress($this->getRequest()->getPost('postalAddress'))
                        ->setResidentialAddress($this->getRequest()->getPost('residentialAddress'))
                        ->setRegion($this->getRequest()->getPost('region'))
                        ->setTown($this->getRequest()->getPost('town'))
                        ->setApplicationDate($this->getRequest()->getPost('applicationDate'))
                        ->setAcknowledgementDate($this->getRequest()->getPost('acknowledgementDate'))                        
                        ->setCreatedBy('SYSTEM');                
                try{
                    $aplicationMapper->save($application);
                } catch (Exception $ex) {
                    echo $ex->getMessage();
                    exit;
                }
                $this->_redirect('/applications/');
            }else{
                $this->view->form = $form;
                return;
            }
        }else{            
         //$this->view->form = $form;   
        }        
    }


}



