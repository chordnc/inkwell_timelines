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
        },

        action_click_handler: function (action, event) {
            if ($(event.target).hasClass('dropdown') || $(event.target).closest('.inkwell_multi_selector .dropdown').length != 0) return;
            inkwell_multi_selector.popup_shown ?
                inkwell_multi_selector.hide_popup(action) :
                inkwell_multi_selector.show_popup(action);
        },

        get_children_checkboxes: function (checkbox) {
            var result = [];
            var child_divs = checkbox.parent().children('.nested');
            child_divs.each(function () {
                result.push($(this).children('.checkbox_with_label')[0]);
            });
            return result;
        },

        change_state_on_uncheck: function (checkbox) {
            var selector = checkbox.closest('.inkwell_multi_selector');
            var state_panel = selector.children('.current_state')[0];
            var selector_name = inkwell_multi_selector.get_selector_name(selector);

            var id = inkwell_multi_selector.get_id_from_attr_id(checkbox.attr('id'));

            $(state_panel).children('#inkwell_' + selector_name + '_state_' + id).remove();

            var child_checkboxes = inkwell_multi_selector.get_children_checkboxes(checkbox);
            $(child_checkboxes).each(function () {
               $(state_panel).append('<span id="inkwell_' + selector_name + '_state_' + inkwell_multi_selector.get_id_from_attr_id($(this).attr('id')) + '">' + $(this).text() + '</span>');
            });
        },

        change_state_on_check: function(checkbox) {
            var selector = checkbox.closest('.inkwell_multi_selector');
            var state_panel = selector.children('.current_state')[0];
            var selector_name = inkwell_multi_selector.get_selector_name(selector);

            var child_checkboxes = inkwell_multi_selector.get_children_checkboxes(checkbox);
            $(child_checkboxes).each(function () {
                $(state_panel).children('#inkwell_' + selector_name + '_state_' + inkwell_multi_selector.get_id_from_attr_id($(this).attr('id'))).remove();
            });

            var id = inkwell_multi_selector.get_id_from_attr_id(checkbox.attr('id'));
            $(state_panel).append('<span id="inkwell_' + selector_name + '_state_' + id + '">' + checkbox.text() + '</span>');
        },

        get_id_from_attr_id: function (attr_id) {
            var splitted_id = attr_id.split('_');
            return splitted_id[splitted_id.length - 1];
        },

        get_selector_name: function (selector) {
            return selector.attr('id').replace('inkwell_', '');
        }

    };

    $('.inkwell_multi_selector').on('click', '.action', function (event) {
        inkwell_multi_selector.action_click_handler($(this), event);
    });

    $(document).on('click', function (event) {
        if (!inkwell_multi_selector.popup_shown) return;
        if ($(event.target).closest('.inkwell_multi_selector .action').length == 0) inkwell_multi_selector.hide_popup();
    });

    $('.inkwell_multi_selector').on('click', '.checkbox_with_label', function () {
        if ($(this).hasClass('checked')) {
            $(this).removeClass('checked');
            inkwell_multi_selector.change_state_on_uncheck($(this));
            inkwell_multi_selector.uncheck_upper_checkboxes($(this).parent());
        } else {
            inkwell_multi_selector.change_state_on_check($(this));
            $(this).parent().find('.checkbox_with_label').addClass('checked');
        }
    });

    $('.inkwell_multi_selector').on('click', '.collapsed', function () {
        $(this).removeClass('collapsed').addClass('expanded');
        $(this).parent().children('.nested').show();
    });

    $('.inkwell_multi_selector').on('click', '.expanded', function () {
        $(this).removeClass('expanded').addClass('collapsed');
        $(this).parent().children('.nested').hide();
    });

});