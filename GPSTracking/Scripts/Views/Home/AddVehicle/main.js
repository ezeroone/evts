$(document).ready(function () {
    //console.log( "ready ccc!" );
    //alert('sdsd');

    //$(".datepicker").datepicker();

    $("a.showImageUpload").click(function () {
        //alert('showImageUpload');
        showImageUploadPop(content);
    });


    //<a href="#image_upload_box" class="showImageUpload button red ">Upload photos</a>
    //<div id="image_upload_box" class="box">

    function showImageUploadPop(content) {
        $.fancybox({
            'href': '#image_upload_box',
            'scrolling': 'no',
            'titleShow': false,
            'transitionIn': 'elastic',
            'transitionOut': 'elastic',
            'padding': 0,
            'centerOnScroll': true,
        });
    }

    $('#fileupload').fileupload({
        dataType: 'json',
        done: function (e, data) {
            $.each(data.result.files, function (index, file) {
                $('<p/>').text(file.name).appendTo(document.body);
            });
        }
    });
});
