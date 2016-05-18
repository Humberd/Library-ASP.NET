function init() {
    var columns = $(".book-id");
    if (columns.length === 0) {
        return;
    }
    $.cookie.json = true;
    if (!getCookie()) {
        writeCookie([]);
    }
    var ids = [];
    for (var i = 0; i < columns.length; i++) {
        ids.push(parseInt($(columns[i]).text().trim()));
    }
    var rows = $("table.main-table tbody tr:gt(0)");
    $("table.main-table tbody tr:eq(0)").prepend("<td></td>")
    for (var i = 0; i < rows.length; i++) {
        var button = $("<button class='btn' type='button'></button>");
        button.attr("book-id", ids[i]);
        checkIfFavoourite(ids[i]) ? setFavouritesButton(button) : removeFavouritesButton(button);

        button.on("click", function () {
            var thisId = parseInt($(this).attr("book-id"));
            var cookiesArray = getCookie();
            if (checkIfFavoourite(thisId)) {
                cookiesArray.splice(cookiesArray.indexOf(thisId), 1);
                removeFavouritesButton($(this));
            } else {
                cookiesArray.push(thisId);
                setFavouritesButton($(this));
            }
            writeCookie(cookiesArray);
        });
        var cell = $("<td></td>");
        cell.prepend(button);
        cell.css({
            "width": "10px"
        });
        $(rows[i]).prepend(cell);
    }
}
function writeCookie(array) {
    $.cookie("favourites", array, { expires: 999, path: "/" })
}
function getCookie() {
    return $.cookie("favourites");
}
function setFavouritesButton(button) {
    button.removeClass("btn-default");
    button.addClass("btn-success");
    button.text("Remove from favourites");
}
function removeFavouritesButton(button) {
    button.removeClass("btn-success");
    button.addClass("btn-default");
    button.text("Add to favourites");
}
function checkIfFavoourite(id) {
    var arr = getCookie();
    return arr.some(function (value) {
        return value == id;
    });
}