<?php

class Funds_IndexController extends JBlac_Controller_Action
{

    public function indexAction()
    {
        $this->view->title = 'Funds List';
        $page = $this->_getParam('page', 1);
        $objMapper = new Funds_Model_FundMapper('Funds_Model_DbTable_Funds');
        $this->view->paginator = $objMapper->fetchPage($page);
    }       

}