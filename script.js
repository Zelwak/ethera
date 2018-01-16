$( document ).ready(function() {

    var fieldType_list = {1: 'marais', 2: 'foret', 3: 'taiga', 4: 'desert', 5: 'plaine', 6: 'toundra', 7: 'jungle', 8: 'ocean', 9: 'colline', 10: 'montagne', 11: 'enfer'};

    $('.field').each(function(){
        var x = $(this).attr('x');
        var y = $(this).attr('y');
        var width = $(this).attr('width');
        var height = $(this).attr('height');
        var fieldType_id = $(this).attr('fieldType_id');

        $(this).width(width);
        $(this).height(height);
        $(this).offset({'left': x, 'top': y});
        $(this).addClass(fieldType_list[fieldType_id]);
    });

    $('.wizard').each(function(){
        var x = $(this).attr('x');
        var y = $(this).attr('y');

        $(this).offset({'left': x, 'top': y});
    });


    $('.field').click(function(){
        show_attr($(this));
        select_item($(this));
    });
    $('.wizard').click(function(){
        show_attr($(this));
        select_item($(this));
    });

    attr_remove_list = ['style'];
    function show_attr(item){
        var element = item,
            attributes = {};

        var gui = $('.GUI').find('ul');
        gui.find('li').find('span').text('');
        $.each(element.get(0).attributes, function(i, attrib){
            if(jQuery.inArray(attrib.name, attr_remove_list)){
                attributes[attrib.name] = attrib.value;
                gui.find('[class='+attrib.name+']').find('span').text(attrib.value);
            }
        });
    }

    function select_item(item){
        $('.selected').removeClass('selected');
        item.addClass('selected');
    }
});