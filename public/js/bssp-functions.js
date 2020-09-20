$(document).ready(function(){
     $('#addInstalment').on('click' , function(){
            $.ajax({
            url: '/services/new-instalment/',
            type: 'GET',
            cache:false,
            data: {'rowCount':$('.instalment').size()},
            beforeSend: function (request){
                $('.loading-status').slideDown().html('<div class="loading"><span><i class="fa fa-spinner fa-spin"></i> Loading...</span></div>');               
            },

            success: function(data,status,xhr) {
                if(10 > $('.instalment').size()){
                    $('#dynamic-form-wrapper').append(data);
                        $("select.selectric").selectric();
                        $('.datepicker').Zebra_DatePicker({
                            direction: true,
                            disabled_dates: ['* * * 0,6'],   // all days, all monts, all years as long
                                                            // as the weekday is 0 or 6 (Sunday or Saturday)
                            format: 'd/m/Y'
                        });                     
                }else{
                    $.Zebra_Dialog('<strong>Maximum payment rows</strong>, you have reached a maximum permissible number of payment instalments. Only ten(10) numbers instalments are allowed.', {
                        'type':     'information',
                        'title':    'Payment row'
                    });                     
                }               
            },
            complete:function(){ 
                $('.loading-status').html('');                
            },
            error: function(data,status,xhr) {
            alert("fail: " + xhr.toString() );
            //console.log(data );
            }
            });
   
     });
     
    $('#period-element').on('change' , 'select[id=period]' , function(){
        var period = $(this).val();
         
        $('input[id=code]').val('BSB' + period.replace('-' , '')).css('font-weight' , 'bold');
        //code
    });

    $(".messages").on('click' ,'span[id=close] i' , function() {
                $(".messages").animate(
                        {"opacity": "0"},{
                         "complete":function(){
                             $(this).remove();
                         }
                        }
                        );
            });  

     
});
var bssp = {
    removeRow: function(rowId){        
        $.Zebra_Dialog('<strong>Zebra_Dialog</strong>, a small, compact and highly configurable dialog box plugin for jQuery', {
            'type':     'warning',
            'title':    'Remove payment',
            'buttons':  [
                            {caption: 'Yes', callback: function() {
                                var idData = rowId.split('_');
                                    $('#sect_' + idData[1]).animate({ backgroundColor: "#C00" }, "fast").animate({ opacity: "hide" }, "slow").remove();                                
                                }},
                            {caption: 'No', callback: function() { return true;}}
                        ]
        });        
    } , 
    
    createBudgetCode: function(){
        
    }
};