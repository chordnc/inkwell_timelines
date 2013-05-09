$(document).ready(function () {
    var inkwell_multi_selector = {
        popup_shown: false,
        show_popup: function (action_obj) {
            this.popup_shown = true;
            action_obj.addClass('on');
            action_obj.find('.dropdown').show();
        },

        hide_popup: function (action_obj) {
            if (!action_obj) {
                var dropdown = $('.inkwell_multi_selector .dropdown:visible');
                action_obj = dropdown.closest('.inkwell_multi_selector .action');
            }
            this.popup_shown = false;
            action_obj.removeClass('on');
            action_obj.find('.dropdown').hide();
        },

        uncheck_upper_checkboxes: function (next_parent) {
            var checkboxes = $(next_parent).children('.checkbox_with_label');
            if (checkboxes.length == 0) return;
            $(checkboxes).removeClass('checked');
            inkwell_multi_selector.uncheck_upper_checkboxes(next_parent.parent());
        }

    };

    $('.inkwell_multi_selector').on('click', '.action', function (event) {
        if ($(event.target).hasClass('dropdown') || $(event.target).closest('.inkwell_multi_selector .dropdown').length != 0) return;
        inkwell_multi_selector.popup_shown ?
            inkwell_multi_selector.hide_popup($(this)) :
            inkwell_multi_selector.show_popup($(this));
    });

    $(document).on('click', function (event) {
        if (!inkwell_multi_selector.popup_shown) return;
        if ($(event.target).closest('.inkwell_multi_selector .action').length == 0) inkwell_multi_selector.hide_popup();
    });

    $('.inkwell_multi_selector').on('click', '.checkbox_with_label', function (event) {
        if ($(this).hasClass('checked')) {
            $(this).removeClass('checked');
            inkwell_multi_selector.uncheck_upper_checkboxes($(this).parents(':eq(1)'));
        } else {
            $(this).parent().find('.checkbox_with_label').addClass('checked');
        }
    });

    $('.inkwell_multi_selector').on('click', '.collapsed', function (event) {
        $(this).removeClass('collapsed').addClass('expanded');
        $(this).parent().children('.nested').show();
    });

    $('.inkwell_multi_selector').on('click', '.expanded', function (event) {
        $(this).removeClass('expanded').addClass('collapsed');
        $(this).parent().children('.nested').hide();
    });

});