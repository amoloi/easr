<?php

class JBlac_Forms_Payments_Deposit extends JBlac_Form
{

    public function init()
    {

        
        $buyerName = new Zend_Form_Element_Text('buyerName');
        $buyerName->setLabel('Buyer`s name')
                ->setAttribs(array(
                    'class' => 'form-control',
                    'placeholder ' => 'Enter name',
                    'maxlength' => '50'                    
                ))
                ->setRequired(FALSE);
        
        $id = new Zend_Form_Element_Hidden('id');
        $id->setAttribs(array(
                    'maxlength' => '20'                    
                ))
                ->setRequired();
        
        $buyerId = new Zend_Form_Element_Hidden('buyerId');
        $buyerId->setAttribs(array(
                    'maxlength' => '20'                    
                ))
                ->setRequired();        
        
        $auctionName = new Zend_Form_Element_Text('auctionName');
        $auctionName->setLabel('Auction name')
                ->setAttribs(array(
                    'class' => 'form-control',
                    'placeholder ' => 'Enter auction',
                    'maxlength' => '50'                    
                ))
                ->setRequired();
        $auctionId = new Zend_Form_Element_Hidden('auctionId');
        $auctionId->setAttribs(array(
                    'maxlength' => '20'                    
                ))
                ->setRequired();
        
        $depositReceivedAmount = new Zend_Form_Element_Text('received');
        $depositReceivedAmount->setLabel('Deposit received($)')
                ->setAttribs(array(
                    'class' => 'form-control',
                    'placeholder ' => 'Enter deposit',
                    'maxlength' => '8'                    
                ))
                ->setRequired();        

        $depositRefundedAmount = new Zend_Form_Element_Text('refunded');
        $depositRefundedAmount->setLabel('Deposit refunded($)')
                ->setAttribs(array(
                    'class' => 'form-control',
                    'placeholder ' => 'Enter refund',
                    'maxlength' => '8'                    
                ))
                ->setRequired();
                
        $initialItemPrice = new Zend_Form_Element_Text('initialItemPrice');
        $initialItemPrice->setLabel('Item price')
                ->setAttribs(array(
                    'class' => 'form-control',
                    'placeholder ' => 'Enter item price',
                    'maxlength' => '8'                    
                ))
                ->setRequired();
        
        $closingItemPrice = new Zend_Form_Element_Text('closingItemPrice');
        $closingItemPrice->setLabel('Closing price')
                ->setAttribs(array(
                    'class' => 'form-control',
                    'placeholder ' => 'Enter item closing price',
                    'maxlength' => '8'                    
                ))
                ->setRequired();
        
                $this->addElements(array(
                    $buyerId,
                    $auctionId,
                    $buyerName,
                    $auctionName,
                    $depositReceivedAmount,
                    $depositRefundedAmount,
                    $initialItemPrice,
                    $closingItemPrice, 
                ));
                
                
    }                

}