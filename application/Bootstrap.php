<?php

class Bootstrap extends Zend_Application_Bootstrap_Bootstrap
{
    protected function _initAuthSecurity(){
        if(Zend_Auth::getInstance()->hasIdentity()){
            $userData = Zend_Auth::getInstance()->getStorage()->read();
            Zend_Registry::set('role',$userData['id_role']);
            Zend_Registry::set('user',$userData['username']);

        }else{
            Zend_Registry::set('role' , 'guest');
        }        
    }
    protected function _initPaginationControl(){
        Zend_View_Helper_PaginationControl::setDefaultViewPartial(['/partials/paginator.phtml', 'service']);
    }
    protected function _initPlugins(){
        $fc = Zend_Controller_Front::getInstance();
        //$fc->registerPlugin(new Login_Plugin_SecurityCheck() , 1);       
    }

    protected function _initLog()
    {
        if ($this->hasPluginResource('log')){
            $r = $this->getPluginResource('log');
            $log = $r->getLog();
            Zend_Registry::set('log', $log);
        }
    }
    protected function _initConfig(){
        $config = new Zend_Config($this->getOptions());
        Zend_Registry::set('config' , $config);
        Zend_Registry::set('searchfree' , array('hlpdsk','regusr' ,'admins'));
        
        return $config;
    }

    protected function _initLayoutResources()
    {
        $this->bootstrap('View');
        $view = $this->getResource('View');
        $view->doctype('HTML5');
        $view->headMeta()->setCharset( 'UTF-8' );
        $view->headTitle('EASR - The Equipment Aid Scheme Register')
             ->setSeparator('::');

    }
    
    protected function _initViewHelpers(){
        $this->bootstrap('View');
        $view = $this->getResource('View');
        $view->addHelperPath('../library/JBlac/View/Helper','JBlac_View_Helper_');
    }


    /*
     * Autoload
     */
        protected function __initAutoload(){
        $modelLoader = new Zend_Application_Module_Autoloader(array(
            'namespace' => '',
            'basePath' => APPLICATION_PATH . '/modules/default',
        ));
        
        $this->acl = new Model_SscAcl();
        $this->auth = Zend_Auth::getInstance();

        $fc = Zend_Controller_Front::getInstance();
        $fc->registerPlugin(new Plugin_AccessCheck($this->acl) , 1);
        
        return $modelLoader;
    }
	/*
	 * navigation.xml
	 */
	
    protected function _initNavigationXml()
	{
            $this->auth = Zend_Auth::getInstance();        
	    $this->bootstrap('layout');
	    $layout = $this->getResource('layout');
	    $view = $layout->getView();
            
            switch (Zend_Registry::get('role')) {
                case 3:
                            $config = new Zend_Config_Xml(APPLICATION_PATH.'/configs/navigation/adm.xml');
                    break;
                case 2:
                            $config = new Zend_Config_Xml(APPLICATION_PATH.'/configs/navigation/usr.xml');
                    break;
                case 'per':
                            $config = new Zend_Config_Xml(APPLICATION_PATH.'/configs/navigation/per.xml');
                    break;
                case 'guest':                
                default:
                            $config = new Zend_Config_Xml(APPLICATION_PATH.'/configs/navigation/public.xml');                    
                    break;
            }
	 //$config = [];
	    $navigation = new Zend_Navigation($config);
//            $view->navigation($navigation);
            $view->navigation($navigation)->setAcl($this->acl)
                                          ->setRole(Zend_Registry::get('role'));            
	}    

    protected function _initActionHelpers(){
        Zend_Controller_Action_HelperBroker::addPath(APPLICATION_PATH . '/../library/JBlac/Controller/Action/Helper');
    }
    protected function __initViewPartials(){
            $layout = $this->getResource('layout');
	    $view = $layout->getView();
            $view->addScriptPath('../' . APPLICATION_PATH . '/layouts/scripts/partials');
    }    
}