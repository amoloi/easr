<?php
/**
 * Login_Form_Login
 * 
 * @author Enrico Zimuel (enrico@zimuel.it)
 */
class Default_Form_Login extends Zend_Form
{   
	private $_timeout;
	
	public function __construct($options=null) {
		if (is_array($options)) {
			if (!empty($options['custom'])) {
				if (!empty($options['custom']['timeout'])) {
					$this->_timeout= $options['custom']['timeout'];
				}
				unset($options['custom']);
			}
		}	
		parent::__construct($options);
	}
	
    public function init ()
    {
//        $this->addElement('hash', 'token', array(
//             'timeout' => $this->_timeout
//        ));
        
        $this->addElement('text', 'username', array(
            'label'      => 'Username',
            'required'   => true,
            'class' => 'form-control',
            'validators' => array('Alnum')
        ));	 
        $this->addElement('password', 'password', array(
            'label'      => 'Password',
            'required'   => true,
            'class' => 'form-control',
            'validators' => array('Alnum'),
        ));
        $this->addElement('submit','submit', array (
            'label'      => 'Login',
            'class' => 'btn btn-primary btn-block',
        ));
    }
}