/**
 * Created by Peter on 10/18/2016.
 */
var xmlhttprequest = function () {

    var $table = $("#example");

    var dataSet = [];

    var xhr;

    function getData() {
        if (window.XMLHttpRequest) {
            xhr = new XMLHttpRequest();
        } else if (window.ActiveXObject) {
            var activeName = ["MSXML2.XMLHTTP", "Microsoft.XMLHTTP"];
            for (var i = 0; i < activeName.length; i++) {
                try {
                    xhr = new ActiveXObject(activeName[i]);
                    break;
                } catch (e) {

                }
            }
        }

        if (xhr == undefined || xhr == null) {
            alert("XMLHttpRequest对象创建失败！！")
        }

        xhr.onreadystatechange = callback;
        xhr.open("POST", "xmlhttprequest?s=" + new Date(), true);
        xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        xhr.send(null);
    }

    function callback() {
        if (xhr.readyState == 4) {
            if (xhr.status == 200) {
                dataSet = JSON.parse(xhr.responseText);
                $('#demo').html('<table cellpadding="0" cellspacing="0" border="0" class="display table table-responsive table-striped" id="example"></table>');
                var $table = $("#example");
                $table.DataTable({
                    "data": dataSet,
                    "aoColumns": [
                        {"sTitle": "Engine"},
                        {"sTitle": "Browser"},
                        {"sTitle": "Platform"},
                        {"sTitle": "Version"},
                        {"sTitle": "Grade"}
                    ]
                })
            }
        }
    }

    return {
        init: function () {
            getData();
        }
    }

}();

$(document).ready(function () {
    xmlhttprequest.init();
});
