$(function() {
    // Setup form validation on the #famil_role-form element
    $('#tweet-form').validate({
        // Specify the validation rules
        rules: {
             "tweet[message]": {
                required: true
            }
        },
        // Specify the validation error messages
        messages: {
                "tweet[message]": {
                required: "Message Can't be blank"
            }

        }
    });

});