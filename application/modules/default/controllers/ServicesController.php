<?php

class ServicesController extends JBlac_Controller
{

    public function init()
    {

    }

    public function indexAction()
    {
    }
    
    public function deedsformAction(){

        //echo $this->_getParam('entity');exit;
    }
    public function newInstalmentAction() {
        $this->disableLayout();
        $rowCount = $this->getParam('rowCount' , 0);
        $form = new JBlac_Forms_SubForms_Instalment(['rowCount' => $rowCount]);
//        $this->view->rowCount = $form->getRowCount();
        $this->view->form = $form;
        
    }   
    public function entityformAction(){

        $this->disableLayout();
    }

}