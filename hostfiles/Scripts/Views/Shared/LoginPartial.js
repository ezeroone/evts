$(function () {

    console.log("~/Shared/LoginPartial ready!");
    loginPartialContainerSelector = '#login_form';
    loginPartialFormSelector = loginPartialContainerSelector + ' form';

    onLoad();
});


function onLoad() {

    /*Partial ajax login submit event handler*/
    $(document).on('submit', loginPartialFormSelector, function (event) {
        event.preventDefault();
        var targetForm = $(loginPartialFormSelector);

        $.ajax({
            type: targetForm.attr('method'),
            url: targetForm.attr('action'),
            data: targetForm.serialize(),
            success: function (data) {
                if (data) {
                    console.log("ajax login submission failed !");
                    if (data.length > 0) {
                        $(targetForm).parent().html(data);
                    }
                    return;
                }               
                console.log("Success!");
                window.location.reload(true);
            },
            error: function (data) {
                console.log("error!");
            }
        });
    });

}