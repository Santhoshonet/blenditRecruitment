$(function() {
    $('.submit-button a').click(function() {
        var element_value = $.trim($('#technicalspecialist_name').val());
        if (element_value == "")
        {
            showerror("Please input name");
            $('#technicalspecialist_name').focus().addClass('errormark');
            return false;
        }
        else
        {
            $('#technicalspecialist_name').removeClass('errormark');
        }
        element_value = $.trim($('#technicalspecialist_email').val());
        if (element_value == "")
        {
            showerror("Please input email");
            $('#technicalspecialist_email').focus().addClass('errormark');
            return false;
        }
        var rege = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
        if(!rege.test($('#technicalspecialist_email').val())){
            showerror("Please input valid email");
            $('#technicalspecialist_email').focus().addClass('errormark');
            return false;
        }
        else
        {
            $('#technicalspecialist_email').removeClass('errormark');
        }
        element_value = $.trim($('#technicalspecialist_mobile').val());
        if (element_value == "")
        {
            showerror("Please input mobile number");
            $('#technicalspecialist_mobile').focus().addClass('errormark');
            return false;
        }
        else
        {
            $('#technicalspecialist_mobile').removeClass('errormark');
        }
        var IsValid = true;
        $('.large').each(function() {
            if(IsValid)
            {
                element_value = $.trim($(this).val());
                if (element_value == "")
                {
                    showerror("Please input answers");
                    $(this).focus().addClass('errormark');
                    IsValid = false;
                    return false;
                }
                else
                {
                    $(this).removeClass('errormark');
                }
            }
        });
        if(IsValid)
            document.forms[0].submit();
    });
    function showerror(data) {
        var errorDiv = $('.error');
        if (errorDiv.size() == 0)
        {
            $('.questions').before("<div class='error'><ul><li></li></ul></div>");
            errorDiv = $('.error');
        }
        errorDiv.find('li').remove();
        errorDiv.find('ul').append("<li>" + data + "</li>");
        errorDiv.show();
    }
});