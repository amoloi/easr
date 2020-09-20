<?php

class JBlac_Forms_Banking_Details extends JBlac_Form
{
    
    public static $validateUnique = true;                          //STORE CURRENT OPERATION WETHER NEW ACCOUNT OR UPDATING

    public function init()
    {
        $this->setMethod('post');
        $employerId = new Zend_Form_Element_Text('EMPL_SSN');
        $employerId->setLabel('Employer`s name')
                ->setAttribs(array(
                    'class' => 'form-control',
                    'placeholder ' => 'Enter employer`s name',
                    'maxlength' => '15'                    
                ))
                ->setRequired(true);
        $employeeId = new Zend_Form_Element_Text('EMP_SSN');
        $employeeId->setLabel('Employee`s name')
                ->setAttribs(array(
                    'class' => 'form-control',
                    'placeholder ' => 'Enter employee`s name',
                    'maxlength' => '15'                    
                ))
                ->setRequired(true);        
                
        $bankName = new Zend_Form_Element_Text('BANK_NAME');
        $bankName->setLabel('Bank`s name')
                ->setAttribs(array(
                    'class' => 'form-control',
                    'placeholder ' => 'Bank`s name',
                    'maxlength' => '50'                    
                ))
                ->setRequired();
        $branchName = new Zend_Form_Element_Text('BRANCH_NAME');
        $branchName->setLabel('Branch`s name')
                ->setAttribs(array(
                    'class' => 'form-control',
                    'placeholder ' => 'Enter branch`s name',
                    'maxlength' => '15'                    
                ))
                ->setRequired();
        $accountNumber = new Zend_Form_Element_Text('ACC_NUMBER');
        $accountNumber->setLabel('Account`s number')
                ->setAttribs(array(
                    'class' => 'form-control',
                    'placeholder ' => 'Enter account`s number',
                    'maxlength' => '12'                    
                ))
                ->setRequired();
        $age = new Zend_Form_Element_Text('AGE');
        $age->setLabel('Age')
                ->setAttribs(array(
                    'class' => 'form-control',
                    'placeholder ' => 'Enter dependent`s age',
                    'maxlength' => '3'                    
                ))
                ->setRequired();         
        $accountType = new Zend_Form_Element_Select('ACCOUNT_TYPE');
        $accountType->setLabel('Account`s type');

        $accountType->setMultiOptions(array(
            '' => 'Select one',
            'S' => 'Savings',
            'C' => 'Cheque',
            'OTH' => 'Other'
        ))
                ->setAttribs(array(
                    'class' => 'form-control',
                    'required' => true,
                ));
        
        $identityNumber = new Zend_Form_Element_Text('IDENTITY_NUMBER');
        $identityNumber->setLabel('National ID number')
                ->setAttribs(array(
                    'class' => 'form-control',
                    'placeholder ' => 'Enter ID number',
                    'maxlength' => '30'                    
                ))
                ->setRequired();
        $passportNumber = new Zend_Form_Element_Text('PASSPORT_NUMBER');
        $passportNumber->setLabel('Passport number')
                ->setAttribs(array(
                    'class' => 'form-control',
                    'placeholder ' => 'Enter passport number',
                    'maxlength' => '30'                    
                ))
                ->setRequired();
        
        $telephone = new Zend_Form_Element_Text('TELEPHONE_NUMBER');
        $telephone->setLabel('Telephone number')
                ->setAttribs(array(
                    'class' => 'form-control',
                    'placeholder ' => 'Enter telephone number',
                    'maxlength' => '30'                    
                ))
                ->setRequired();
        
        $facsimile = new Zend_Form_Element_Text('FACSIMILE_NUMBER');
        $facsimile->setLabel('Facsimile number')
                ->setAttribs(array(
                    'class' => 'form-control',
                    'placeholder ' => 'Enter facsimile number',
                    'maxlength' => '30'                    
                ))
                ->setRequired();        
        $email = new Zend_Form_Element_Text('EMAIL_ADDRESS');
        $email->setLabel('E-mail address')
                ->setAttribs(array(
                    'class' => 'form-control',
                    'placeholder ' => 'Enter E-mail address',
                    'maxlength' => '50'                    
                ))
                ->setRequired()
                ->addValidator(new Zend_Validate_EmailAddress(array('domain' => true)));
                //->addValidator(new Zend_Validate_Db_NoRecordExists(array('table' => 'SYS_USERS' ,'field' => 'USR_EMAIL')));
        
        $businessOtherName = new Zend_Form_Element_Text('BUSINESS_OTHER_NAME');
        $businessOtherName->setLabel('Business other name(alias)')
                ->setAttribs(array(
                    'class' => 'form-control',
                    'placeholder ' => 'Enter business other name',
                    'maxlength' => '100'                    
                ))
                ->setRequired();
        $businessRegNumber = new Zend_Form_Element_Text('BUSINESS_REG_NUMBER');
        $businessRegNumber->setLabel('Business registration number')
                ->setAttribs(array(
                    'class' => 'form-control',
                    'placeholder ' => 'Enter business registration number',
                    'maxlength' => '30'                    
                ))
                ->setRequired();
        $dateOfBusinessCommencement = new Zend_Form_Element_Text('DATE_OF_BUSINESS_COMMENCEMENT');
        $dateOfBusinessCommencement->setLabel('Business commencement date')
                ->setAttribs(array(
                    'class' => 'form-control',
                    'placeholder ' => 'Business commencement date',
                    'maxlength' => '12'                    
                ))
                ->setRequired();        
        $socialSecurityNumber = new Zend_Form_Element_Text('SSN');
        $socialSecurityNumber->setLabel('Business social security number(SSN)')
                ->setAttribs(array(
                    'class' => 'form-control',
                    'placeholder ' => 'Enter employee`s social security number',
                    'maxlength' => '30'                    
                ))
                ->setRequired();
        $employerSocialSecurityNumber = new Zend_Form_Element_Text('EMPL_SSN');
        $employerSocialSecurityNumber->setLabel('Business employer`s social security number(SSN)')
                ->setAttribs(array(
                    'class' => 'form-control',
                    'placeholder ' => 'Enter employer`s social security number',
                    'maxlength' => '30'                    
                ))
                ->setRequired();        
        $monthlyIncome = new Zend_Form_Element_Text('MONTHLY_INCOME');
        $monthlyIncome->setLabel('Monthly income($)')
                ->setAttribs(array(
                    'class' => 'form-control',
                    'placeholder ' => 'Enter monthly income',
                    'maxlength' => '10'                    
                ))
                ->setRequired();        
        
        $button = new Zend_Form_Element_Button('cmdsave');
        
        $button->setLabel('Submit employee`s details')
                ->setAttribs(array(
                    'class' => 'btn btn-primary',
                    'type' => 'submit'
                ));        
        /**
         * Add validation for unique email address and username 
         */
//              if(self::$validateUnique){
//                     $username->addValidator(new Zend_Validate_Db_NoRecordExists(array('table' => 'SYS_USERS' ,'field' => 'USR_USERNAME')));
//                     $email->addValidator(new Zend_Validate_Db_NoRecordExists(array('table' => 'SYS_USERS' ,'field' => 'USR_EMAIL')));
//                }
        /*
         * Sub forms
         */
        /*
         * Account holder details
         */
        $accountOwnerForm =  new Zend_Form_SubForm();
        $accountOwnerForm->setName('accountOwner');
        $accountOwnerForm->addElements([
                    $employeeId,
                    $employerId,
        ]);
		
        $accountOwnerForm->addDisplayGroup(['EMPL_ID','EMP_ID',], 'accountOwnerInfo', ['legend' => 'Account owner`s details']);

        /*
         * Account details
         */
        $accountDetailsForm =  new Zend_Form_SubForm();
        $accountDetailsForm->setName('accountOwner');
        $accountDetailsForm->addElements([
                    $bankName,
                    $branchName,
                    $accountNumber,
                    $accountType,
        ]);
		
        $accountDetailsForm->addDisplayGroup(['BANK_NAME' , 'BRANCH_NAME','ACC_NUMBER','ACCOUNT_TYPE',], 'accountInfo', ['legend' => 'Account details']);
        
                $this->addElements(array(
                    $accountOwnerForm,
                    $accountDetailsForm,
                    $button,
                ));
    }


}