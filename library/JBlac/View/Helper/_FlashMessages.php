<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of JBlac_View_Helper_FlashMessages
 *
 * @author Innocent
 */
class JBlac_View_Helper_FlashMessages extends Zend_View_Helper_Abstract {
    public function flashMessages()
    {
        $messages = Zend_Controller_Action_HelperBroker::getStaticHelper('FlashMessenger')->getMessages();
       
        $output = '';
        if ( count($messages) > 0 ) {
            $output .= '<div id="flash-messages">';
            $output .= '<ul>';
           
            foreach ($messages as $message)
                    $output .= '<li>' . $message . '</li>';
                                       
            $output .= '</ul>';
            $output .= '</div>';
        }                          
        return $output;
       
    }
}