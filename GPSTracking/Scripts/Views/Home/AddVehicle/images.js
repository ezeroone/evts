$(document).ready(function () {


    console.log("ready Images.js!");
    Handler();
    //alert("ready Images.js!");

    $(".datepicker").datepicker();
    $(".datepicker").datepicker("option", "dateFormat", "yy-mm-dd");

    $("a.showImageUpload").click(function () {
        showImageUploadPop(content);
    });

    $("a.showDocumentUpload").click(function () {
        showDocumentUpload(content);
    });

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


    function showDocumentUpload(content) {
        $.fancybox({
            'href': '#document_upload_box',
            'scrolling': 'no',
            'titleShow': false,
            'transitionIn': 'elastic',
            'transitionOut': 'elastic',
            'padding': 0,
            'centerOnScroll': true,
        });
    }


    function Handler() {
        var _vechileIdSelector = "#parentVehicleId";
        var _vechileId = $(_vechileIdSelector).val();
        ImagePartialHandler(_vechileId);
        DocumentPartialHandler(_vechileId);
    }


    function ImagePartialHandler(vechileId) {

        var _vechileId = vechileId;
        var _containerSelector = "#image_container";
        var _removeIconSelector = ".removeImage";
        var _fetchUrl = "/Vehicle/Images/" + _vechileId;
        var _removeUrl = "/Vehicle/RemoveImageAjax";
        var _form = $('#frmImageUpload');

        _form.submit(function (event) {
            upload(event);
        });

        $(_removeIconSelector).click(function (event) {
            remove(event);
        })


        var reload = function () {
            $(_containerSelector).load(_fetchUrl, function (response, status, xhr) {
                if (status == "success") {
                    $(_containerSelector).html(response)
                }
            });
        }


        var upload = function (event) {
            // Stop form from submitting normally
            event.preventDefault();

            var formURL = _form.attr("action");
            var formData = new FormData(_form[0]);
            $.ajax({
                url: formURL,
                type: 'POST',
                data: formData,
                mimeType: "multipart/form-data",
                contentType: false,
                cache: false,
                processData: false,
                success: function (data, status, jqXHR) {
                    if (status == "success") {
                        var response = new AjaxResponse(data);
                        if (!response.Status || response.Status.length == 0) {
                            reload();
                        }
                    }
                },
                error: function (jqXHR, status, errorThrown) {
                    console.log("Image Upload Error " + jqXHR)
                }
            });
        };


        var remove = function (event) {
            console.log("remove");
            event.preventDefault();

            var article = $(event.target).closest("article");
            if (!article) { return; }
            var imageId = article.data('id');


            var postData = {
                vId: _vechileId,
                id: imageId
            }
            $.ajax({
                url: _removeUrl,
                type: 'GET',
                data: postData,
                dataType: 'json',
                success: function (data, status, jqXHR) {
                    if (status == "success") {
                        var response = new AjaxResponse(data);
                        if (!response.Status || response.Status.length == 0) {
                            reload();
                        }
                    }
                },
                error: function (jqXHR, status, errorThrown) {
                    console.log("Image Upload Error " + jqXHR)
                }
            });
        }
    }


    function DocumentPartialHandler(vechileId) {

        var _vechileId = vechileId;
        var _containerSelector = "#document_container";
        var _removeIconSelector = ".removeDocument";
        var _fetchUrl = "/Vehicle/Documents/" + _vechileId;
        var _removeUrl = "/Vehicle/RemoveDocumentAjax";
        var _form = $('#frmDocumentUpload');
        _form.submit(function (event) {
            upload(event);
        });

        $(_removeIconSelector).click(function (event) {
            remove(event);
        })


        var reload = function () {
            $(_containerSelector).load(_fetchUrl, function (response, status, xhr) {
                if (status == "success") {
                    $(_containerSelector).html(response)
                }
            });
        }


        var upload = function (event) {
            // Stop form from submitting normally
            event.preventDefault();

            var formURL = _form.attr("action");
            var formData = new FormData(_form[0]);
            $.ajax({
                url: formURL,
                type: 'POST',
                data: formData,
                mimeType: "multipart/form-data",
                contentType: false,
                cache: false,
                processData: false,
                success: function (data, status, jqXHR) {
                    if (status == "success") {
                        var response = new AjaxResponse(data);
                        if (!response.Status || response.Status.length == 0) {
                            reload();
                        }
                    }
                },
                error: function (jqXHR, status, errorThrown) {
                    console.log("Image Upload Error " + jqXHR)
                }
            });
        };


        var remove = function (event) {
            console.log("remove");
            event.preventDefault();

            var article = $(event.target).closest("div .row");
            if (!article) { return; }
            var imageId = article.data('id');


            var postData = {
                vId: _vechileId,
                id: imageId
            }
            $.ajax({
                url: _removeUrl,
                type: 'GET',
                data: postData,
                dataType: 'json',
                success: function (data, status, jqXHR) {
                    if (status == "success") {
                        var response = new AjaxResponse(data);
                        if (!response.Status || response.Status.length == 0) {
                            reload();
                        }
                    }
                },
                error: function (jqXHR, status, errorThrown) {
                    console.log("Image Upload Error " + jqXHR)
                }
            });
        }
    }


    function AjaxResponse() {
        this.Status = "";
        this.Message = "";
        this.Data = null;
    }

});
