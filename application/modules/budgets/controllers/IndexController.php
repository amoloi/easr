<?php

class Budgets_IndexController extends JBlac_Controller_Action
{

    public function init()
    {
        /* Initialize action controller here */
        parent::init();
    }


    public function indexAction()
    {
        $this->view->title = 'Funds List';
        $page = $this->_getParam('page', 1);
        $objMapper = new Budgets_Model_BudgetMapper('Budgets_Model_DbTable_Budget');
        $this->view->paginator = $objMapper->fetchPage($page);
    }       

}