var search = {
    init: function ()
    {
        search.searchauto();
    },
    searchauto: function ()
    {
        $("#txtKeywordMenu").autocomplete({
            minLength: 0,
            source: function (request, response) {
                $.ajax({
                    url: "/product/listname",
                    dataType: "json",
                    type:"GET",
                    data: {
                        q: request.term
                    },
                    success: function (res) {
                        response(res.data);
                    }
                });
            },
            focus: function (event, ui) {
                $("#txtKeywordMenu").val(ui.item.label);
                return false;
            },
            select: function (event, ui) {
                $("#txtKeywordMenu").val(ui.item.label);

                return false;
            }
        })
            .autocomplete("instance")._renderItem = function (ul, item) {
                return $("<li>")
                    .append("<div>" + item.label + "<br>" + "</div>")
                    .appendTo(ul);
            };
    }
};
search.init();