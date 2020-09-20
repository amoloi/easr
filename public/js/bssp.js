$(document).ready(function(){
	$("#tabs-wrap").tytabs({
							prefixtabs:"tab",
							prefixcontent:"content",
							classcontent:"tabscontent",
							tabinit:"1",
							catchget:"tab2",
							fadespeed:"normal"
							});
                                                        
                                                        
$('.datepicker').Zebra_DatePicker({
    direction: true,
    disabled_dates: ['* * * 0,6'],   // all days, all monts, all years as long
                                    // as the weekday is 0 or 6 (Sunday or Saturday)
    format: 'd/m/Y'
});                                                        
                                                        
                                                        
//        $('.datepicker').datepicker({
//            format: 'dd/mm/yyyy',
////            startDate: '3d',
//            autoclose: true
//        });
//        $('.selectpicker').selectpicker();
  // Calls the selectBoxIt method on your HTML select box
  
  $("select.selectric").selectric();
  $("select#entityType").selectric({
      onChange:function(){
          var value = $(this).val();

            if('person' === value){
                $('#company-section').fadeOut('slow',function(){
                    $('#individual-section').fadeIn('slow');
                });                
            }
            if('company' === value){                
                $('#individual-section').fadeOut('slow',function(){
                    $('#company-section').fadeIn('slow');
                });                
            } 
      }
  });  
});