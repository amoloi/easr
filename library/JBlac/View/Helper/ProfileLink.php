<?php


/**
 * ProfileLink helper
 *
 * Call as $this->profileLink() in your layout script
 */
/**
 * Description of JBlac_View_Helper_ProfileLink
 *
 * @author Innocent
 */
class JBlac_View_Helper_ProfileLink{
   public $view;

    public function setView(Zend_View_Interface $view)
    {
        $this->view = $view;
    }

    public function profileLink()
    {
        $auth = Zend_Auth::getInstance();
        if ($auth->hasIdentity()) {
            $userData = $auth->getStorage()->read();
//            Zend_Debug::dump($userData);
            $fullName =  $userData['name']; 

            return  "<a href='/customers/profileupdate/' class='profile pull-right text-muted small'>Welcome, $fullName <i class='fa fa-user'></i></a>";
        }else{
            return "Welcome Guest <span class='separator'>|</span>  <a href='/customers/signup/' class='profile pull-right text-muted'> Create account</a>";
        } 

        return FALSE;
    }
}