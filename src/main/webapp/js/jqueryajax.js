/**
 * Created by Peter on 10/18/2016.
 */
var jqueryAjax = function () {

    var handleEvents = function () {
        $("#ajaxGet").on('click', function () {
            $.ajax({
                url: "ajaxRequest",
                type: 'get',
                dataType: 'json',
                success: function (data) {
                    $("#result").text("我是success");
                    $("#resultData").text(data.info);
                    $('div.alert-info').removeClass("hide");
                },
                error: function (data, XMLHttpRequest, textStatus, errorThrown) {
                    $("#result").text("我是error");
                    $("#resultData").text(data.info);
                    $('div.alert-info').removeClass("hide");
                },
                complete: function (XMLHttpRequest, textStatus) {
                    $("#complete").text(XMLHttpRequest.getResponseHeader("complete"));
                    $('div.alert-danger').removeClass("hide");
                }
            }).done(function (data) {
                alert(data.info);
            }).fail(function (data) {
                alert("fail");
            })
        });
        $("#ajaxPost").on('click', function () {
            $.ajax({
                url: "ajaxRequest",
                type: 'POST',
                dataType: 'json',
                success: function (data) {
                    $("#result").text("我是success");
                    $("#resultData").text(data.info);
                    $('div.alert-info').removeClass("hide");
                },
                error: function (data, XMLHttpRequest, textStatus, errorThrown) {
                    $("#result").text("我是error");
                    $("#resultData").text(data.info);
                    $('div.alert-info').removeClass("hide");
                },
                complete: function (XMLHttpRequest, textStatus) {
                    $("#complete").text(XMLHttpRequest.getResponseHeader("complete"));
                    $('div.alert-danger').removeClass("hide");
                }
            }).done(function (data) {
                alert(data.info);
            })
        });

        $("#ajaxPut").on('click', function () {
            $.ajax({
                url: "ajaxRequest",
                type: 'PUT',
                dataType: 'json',
                success: function (data) {
                    $("#result").text("我是success");
                    $("#resultData").text(data.info);
                    $('div.alert-info').removeClass("hide");
                },
                error: function (data, XMLHttpRequest, textStatus, errorThrown) {
                    $("#result").text("我是error");
                    $("#resultData").text(data.info);
                    $('div.alert-info').removeClass("hide");
                },
                complete: function (XMLHttpRequest, textStatus) {
                    $("#complete").text(XMLHttpRequest.getResponseHeader("complete"));
                    $('div.alert-danger').removeClass("hide");
                }
            }).done(function (data) {
                alert(data.info);
            })
        });

        $("#ajaxHead").on('click', function () {
            $.ajax({
                url: "ajaxRequest",
                type: 'HEAD',
                dataType: 'json',
                success: function (data) {
                    $("#result").text("我是success");
                    // $("#resultData").text(data.info);
                    $('div.alert-info').removeClass("hide");
                },
                error: function (data, XMLHttpRequest, textStatus, errorThrown) {
                    $("#result").text("我是error");
                    $("#resultData").text(data.info);
                    $('div.alert-info').removeClass("hide");
                },
                complete: function (XMLHttpRequest, textStatus) {
                    $("#complete").text(XMLHttpRequest.getResponseHeader("complete"));
                    $('div.alert-danger').removeClass("hide");
                }
            }).done(function (data) {
                alert("HEAD");
            })
        });

        $("#changAjax").on('click', function () {
            $.ajax({
                url: "ajaxRequest",
                type: 'POST',
                dataType: 'json',
                beforeSend: function (XMLHttpRequest) {
                    // 禁用按钮防止重复提交
                    // $("#submit").attr({ disabled: "disabled" });
                    XMLHttpRequest.setRequestHeader("Accept-Language", "en-cus");
                },
                success: function (data) {
                    $("#result").text("我是success");
                    $("#resultData").text(data.info);
                    $('div.alert-info').removeClass("hide");
                },
                error: function (data, XMLHttpRequest, textStatus, errorThrown) {
                    $("#result").text("我是error");
                    $("#resultData").text(data.info);
                    $('div.alert-info').removeClass("hide");
                },
                complete: function (XMLHttpRequest, textStatus) {
                    $("#complete").text(XMLHttpRequest.getResponseHeader("complete"));
                    $('div.alert-danger').removeClass("hide");
                }
            }).done(function (data) {
                alert(data.info);
            })
        });

        $("#load").on('click', function () {
            $("#loadDom").load("load.css");
        })
    };

    return {
        init: function () {
            handleEvents();
        }
    }

}();

$(document).ready(function () {
    jqueryAjax.init();
});
