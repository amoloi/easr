<?php

class JBlac_Forms_Bssp_ProjectResolution extends JBlac_Form
{
    
    public static $validateUnique = true;                          //STORE CURRENT OPERATION WETHER NEW ACCOUNT OR UPDATING

    public function init()
    {
        $this->setMethod('post');
        $resolutionId = new Zend_Form_Element_Hidden('id');
        $resolutionId->setDecorators(['ViewHelper']);
        $projectNumber = new Zend_Form_Element_Hidden('projectNumber');
        $projectNumber->setDecorators(['ViewHelper']); 
        $projectId = new Zend_Form_Element_Hidden('projectId');
        $projectId->setDecorators(['ViewHelper']);
        
        /**
         * RESOLUTION DATA
         */
        
        $discussionDate = new Zend_Form_Element_Text('discussionDate');
        $discussionDate->setLabel('Discussion Date')
                ->setAttribs(array(
                    'class' => 'form-control datepicker',
                    'placeholder ' => 'Enter discussion date',
                    'maxlength' => '13',
                    'required' => 'required' 
                ))
                ->setRequired(TRUE);
        
        $corespondenceDate = new Zend_Form_Element_Text('corespondenceDate');
        $corespondenceDate->setLabel('Corespondence Date')
                ->setAttribs(array(
                    'class' => 'form-control datepicker',
                    'placeholder ' => 'Enter corespondence date',
                    'maxlength' => '50'                    
                ))
                ->setRequired();        
        
        $discussionStatus = new Zend_Form_Element_Select('discussionStatus');
        $discussionStatus->setLabel('Discussion Status');
        $lov = [
                        '' => 'Select status',
                        'discussed' => 'Discussed - Decision Pending',
                        'approved'  => 'Discussed - Approved',
                        'rejected'  => 'Discussed - Rejected',
                        'received'  => 'Discussed - New Project',
                ];

        $discussionStatus->setMultiOptions($lov)
                ->setAttribs(array(
                    'class' => 'form-control selectric',
                    'required' => true,
                ));
        $requestType = new Zend_Form_Element_Select('requestType');
        $requestType->setLabel('Request Type');
        $lov = [
                        '' => 'Select type',
                        'one' => 'Sample request type one',
                        'two' => 'Sample request type two',
                ];

        $requestType->setMultiOptions($lov)
                ->setAttribs(array(
                    'class' => 'form-control selectric',
                    'required' => true,
                ));
        
        /**
         * CONSULTANT DATA
         */
        $consultantId = new Zend_Form_Element_Text('consultantId');
        $consultantId->setLabel('Consultant Name')
                ->setAttribs(array(
                    'class' => 'form-control',
                    'placeholder ' => 'Enter cunsultant name',
                    'maxlength' => '50'                    
                ))
                ->setRequired();

        $consultantId = new Zend_Form_Element_Select('consultantId');
        $consultantId->setLabel('Consultant Name');
        $codes = JBlac_Models_LegalEntityMapper::fetchEntityLOV('consultant');
        $lov = [
                        '' => 'Select status',
                        'discussed' => 'Discussed - Decision Pending',
                        'approved' => 'Discussed - Approved',
                        'rejected' => 'Discussed - Rejected',
                        'received' => 'Discussed - New Project',
                ];

        $consultantId->setMultiOptions($codes)
                ->setAttribs(array(
                    'class' => 'form-control selectric',
                    'required' => true,
                ));        
        
        
        $principleConsultant = new Zend_Form_Element_Text('principleConsultant');
        $principleConsultant->setLabel('Principle Consultant Name')
                ->setAttribs(array(
                    'class' => 'form-control',
                    'placeholder ' => 'Enter principle cunsultant name',
                    'maxlength' => '50'                    
                ))
                ->setRequired();

        $mouPsSignedDate= new Zend_Form_Element_Text('mouPsSignedDate');
        $mouPsSignedDate->setLabel('MOU`s PS Signed Date')
                ->setAttribs(array(
                    'class' => 'form-control datepicker',
                    'placeholder ' => 'Enter MOU`s PS Signed Date',
                    'maxlength' => '50'                    
                ))
                ->setRequired();         
        
        /**
         * PAYMENT STATUS
         */
        $instalmentPhase = new Zend_Form_Element_Select('phase');
        $instalmentPhase->setLabel('Instalment Phase');
        $lov = [
                        '' => 'Select phase',
                        'first'      => 'First Instalment - [1]',
                        'second'     => 'First Instalment - [2]',
                        'third'      => 'Third Instalment - [3]',
                        'fouth'      => 'Fouth Instalment - [4]',
                        'fifth'      => 'Fifth Instalment - [5]',
                        'sixth'      => 'Sixth Instalment - [6]',
                        'seventh'    => 'Seventh Instalment - [7]',
                        'eigth'      => 'Eigth Instalment - [8]',
                        'nineth'     => 'Nineth Instalment - [9]',
                        'tenth'      => 'Tenth Instalment - [10]',
                ];

        $instalmentPhase->setMultiOptions($lov)
                ->setAttribs(array(
                    'class' => 'form-control selectric',
                    'required' => true,
                ))
                ->setIsArray(TRUE);
        
        $instalmentAmount = new Zend_Form_Element_Text('instalmentAmount');
        $instalmentAmount->setLabel('Instalment(In Namibian Dollars)')
                ->setAttribs(array(
                    'class' => 'form-control',
                    'placeholder ' => 'Enter instalment',
                    'maxlength' => '10'                    
                ))
                ->setRequired(FALSE)
                ->setIsArray(TRUE);
        
        $instalmentDate = new Zend_Form_Element_Text('instalmentDate');
        $instalmentDate->setLabel('Instalment Date')
                ->setAttribs(array(
                    'class' => 'form-control datepicker',
                    'placeholder ' => 'Enter instalment date',
                    'maxlength' => '12'                    
                ))
                ->setRequired(FALSE)
                ->setIsArray(true);
        
        /**
         * NEW INSTALMENT LINK
         */
        $newInstalment = $this->addElement('note' , 'newInstalment' , [
            'value' => '<a href="javascript:;" class="btn" id="addInstalment">Add Instalment</a>',
        ]);        
        /**
         * FUNDS DETAILS
         */

        $fundsApproved = new Zend_Form_Element_Select('fundsApproved');
        $fundsApproved->setLabel('Funds Approved');
        $codes = JBlac_Utilities_AppReference::fetchFundsLOV();

        $fundsApproved->setMultiOptions($codes)
                ->setAttribs(array(
                    'class' => 'form-control selectric',
                    'required' => true,
                ));        
        
        
        $fundsOutstanding = new Zend_Form_Element_Text('fundsOutstanding');
        $fundsOutstanding->setLabel('Funds Outstanding(In Namibian Dollars)')
                ->setAttribs(array(
                    'class' => 'form-control',
                    'placeholder ' => 'Enter Outstanding Payments',
                    'maxlength' => '10'                    
                ))
                ->setRequired(FALSE);
        
        $fundsApprovedDate = new Zend_Form_Element_Text('fundsApprovedDate');
        $fundsApprovedDate->setLabel('Date Of Funds Approve')
                ->setAttribs(array(
                    'class' => 'form-control datepicker',
                    'placeholder ' => 'Enter date of funds approve',
                    'maxlength' => '12'                    
                ))
                ->setRequired(FALSE);
        
        /**
         * ASSIGNMENT EXTENSION DETAILS
         */
//        $assignmentDiscussionDate = new Zend_Form_Element_Text('assignmentDiscussionDate');
//        $assignmentDiscussionDate->setLabel('Date Of Discussion')
//                ->setAttribs(array(
//                    'class' => 'form-control datepicker',
//                    'placeholder ' => 'Enter date of discussion',
//                    'maxlength' => '12'                    
//                ))
//                ->setRequired(FALSE);
//        
//        $assignmentEstensionDateTo = new Zend_Form_Element_Text('assignmentEstensionDateTo');
//        $assignmentEstensionDateTo->setLabel('Date Entended To')
//                ->setAttribs(array(
//                    'class' => 'form-control datepicker',
//                    'placeholder ' => 'Enter date extended to',
//                    'maxlength' => '12'                    
//                ))
//                ->setRequired(FALSE);
//        
//        $assignmentCommitteeRemarks = new Zend_Form_Element_Textarea('assignmentCommitteeRemarks');
//        $assignmentCommitteeRemarks->setLabel('Committee Remarks')
//                ->setAttribs(array(
//                    'class' => 'form-control',
//                    'rows' => 3,
//                    'placeholder ' => 'Enter commitee remarks',                  
//                ))
//                ->setRequired(FALSE);

        /**
         * IMPLEMENTATION STATUS DETAILS
         */
        $dateIssuedToPromoters = new Zend_Form_Element_Text('dateIssuedToPromoters');
        $dateIssuedToPromoters->setLabel('Date Issued to Promoters')
                ->setAttribs(array(
                    'class' => 'form-control datepicker',
                    'placeholder ' => 'Enter date of issue to promoters',
                    'maxlength' => '12'                    
                ))
                ->setRequired(FALSE);        

        $reportType = new Zend_Form_Element_Select('reportType');
        $reportType->setLabel('Report Type');
        $lov = [
                        '' => 'Select type',
                        'one' => 'Sample report type one',
                        'two' => 'Sample report type two',
                ];

        $reportType->setMultiOptions($lov)
                ->setAttribs(array(
                    'class' => 'form-control selectric',
                    'required' => true,
                ));        
        $sourceOfFunds = new Zend_Form_Element_Text('sourceOfFunds');
        $sourceOfFunds->setLabel('Financial Instituion/ Investor Funding')
                ->setAttribs(array(
                    'class' => 'form-control',
                    'placeholder ' => 'Enter source of funds',
                    'maxlength' => '50'                    
                ))
                ->setRequired(FALSE);
        
        $implementationRemarks = new Zend_Form_Element_Textarea('implementationRemarks');
        $implementationRemarks->setLabel('Implementation Remarks')
                ->setAttribs(array(
                    'class' => 'form-control',
                    'rows' => 3,
                    'placeholder ' => 'Enter implementation remarks',                  
                ))
                ->setRequired(FALSE);
        
        /**
         * EMPLOYMENT STATUS
         */        
        $totalNumberOfMaleEmployees = new Zend_Form_Element_Text('numberOfMaleEmployed');
        $totalNumberOfMaleEmployees->setLabel('Total Male Employed')
                ->setAttribs(array(
                    'class' => 'form-control',
                    'placeholder ' => 'Enter number of male employed',
                    'maxlength' => '12'                    
                ))
                ->setRequired(FALSE);
        
        $totalNumberOfFemaleEmployees = new Zend_Form_Element_Text('numberOfFemaleEmployed');
        $totalNumberOfFemaleEmployees->setLabel('Total Female Employed')
                ->setAttribs(array(
                    'class' => 'form-control',
                    'placeholder ' => 'Enter number of female employed',
                    'maxlength' => '12'                    
                ))
                ->setRequired(FALSE);         

                $this->addElements(array(
                    $projectId,
                    $projectNumber,                    
                    $resolutionId,
                    $discussionDate,
                    $discussionStatus,
                    $requestType,
                    $corespondenceDate,
                    
                    $consultantId,
                    $principleConsultant,
                    $mouPsSignedDate,
                    
                    $instalmentPhase,
                    $instalmentAmount,
                    $instalmentDate,
                    
                    $fundsApproved,
                    $fundsApprovedDate,
                    $fundsOutstanding,
                    
//                    $assignmentDiscussionDate,
//                    $assignmentEstensionDateTo,
//                    $assignmentCommitteeRemarks,
                    
                    $dateIssuedToPromoters,
                    $reportType,
                    $sourceOfFunds,
                    $implementationRemarks,
                    
                    $totalNumberOfFemaleEmployees,
                    $totalNumberOfMaleEmployees,
                ));
                
                
    }                

}