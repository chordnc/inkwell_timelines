// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

function getFormattedDateFromDateTime(dateTime) {
    var date = dateTime.getDate();
    var month = dateTime.getMonth() + 1;
    var hour = dateTime.getHours();
    var mins = dateTime.getMinutes();
    return (date < 10 ? ('0' + date) : date) + '.' + (month < 10 ? ('0' + month) : month) + '.' + dateTime.getFullYear() +
        ' ' + (hour < 10 ? ('0' + hour) : hour) + ':' + (mins < 10 ? ('0' + mins) : mins);
}

$(document).ready(function () {
    $.each($('.inkwell_timelines .date'), function () {
        $(this).text(getFormattedDateFromDateTime(new Date(parseInt($(this).text()))));
        $(this).removeAttr('style');
    });
});
