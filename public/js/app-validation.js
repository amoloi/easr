$(document).ready(function(){
  var validator = $('form[class=zend-form]').validate({
			rules: {
				discussionDate: "required",
				corespondenceDate: "required",
                                discussionStatus:"required",
                                'phase[]':"required",
                                'instalmentAmount[]':"required",
                                'instalmentDate[]':"required",
                                totalNumberOfMaleEmployees:"required"
			},
			messages: {
				discussionDate: "Enter discussion date."
			}
		});
});