$(function() {
    $('.submit-button a').click(function() {
        var element_value = $.trim($('#designer_name').val());
        if (element_value == "")
        {
            showerror("Please input name");
            $('#designer_name').focus().addClass('errormark');
            return false;
        }
        else
        {
            $('#designer_name').removeClass('errormark');
        }
        element_value = $.trim($('#designer_email').val());
        if (element_value == "")
        {
            showerror("Please input email");
            $('#designer_email').focus().addClass('errormark');
            return false;
        }
        else
        {
            $('#designer_email').removeClass('errormark');
        }
        var rege = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
        if(!rege.test($('#designer_email').val())){
            showerror("Please input valid email");
            $('#designer_email').focus().addClass('errormark');
            return false;
        }
        else
        {
            $('#designer_email').removeClass('errormark');
        }
        element_value = $.trim($('#designer_mobile').val());
        if (element_value == "")
        {
            showerror("Please input mobile number");
            $('#designer_mobile').focus().addClass('errormark');
            return false;
        }
        else
        {
            $('#designer_mobile').removeClass('errormark');
        }
        element_value = $.trim($('#designer_portpolios').val());
        if (element_value == "")
        {
            element_value = $.trim($('#attachment').val());
            if (element_value == "")
            {
                showerror("Please input your portpolios or attach a file");
                $('#designer_portpolios').focus().addClass('errormark');
                return false;
            }
        }
        else
        {
            $('#designer_portpolios').removeClass('errormark');
        }
        element_value = $.trim($('#designer_inspirationurl1').val());
        if (element_value == "")
        {
            showerror("Please input your inspiration urls ");
            $('#designer_inspirationurl1').focus().addClass('errormark');
            return false;
        }
        else
        {
            $('#designer_inspirationurl1').removeClass('errormark');
        }
        element_value = $.trim($('#designer_inspirationurl2').val());
        if (element_value == "")
        {
            showerror("Please input your inspiration urls ");
            $('#designer_inspirationurl2').focus().addClass('errormark');
            return false;
        }
        else
        {
            $('#designer_inspirationurl2').removeClass('errormark');
        }
        element_value = $.trim($('#designer_inspirationurl3').val());
        if (element_value == "")
        {
            showerror("Please input your inspiration urls ");
            $('#designer_inspirationurl3').focus().addClass('errormark');
            return false;
        }
        else
        {
            $('#designer_inspirationurl3').removeClass('errormark');
        }
        element_value = $.trim($('#designer_inspirationcomment').val());
        if (element_value == "")
        {
            showerror("Please input inspiration comment");
            $('#designer_inspirationcomment').focus().addClass('errormark');
            return false;
        }
        else
        {
            $('#designer_inspirationcomment').removeClass('errormark');
        }
        element_value = $.trim($('#designer_javascript').val());
        if (element_value == "")
        {
            showerror("Please input javascript");
            $('#designer_javascript').focus().addClass('errormark');
            return false;
        }
        else
        {
            $('#designer_javascript').removeClass('errormark');
        }
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