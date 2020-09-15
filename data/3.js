
let userName = ''

$('#textInBub').text("Hello " + sessionStorage.getItem('userName'));

const msgBubble = $('.msg-bubble').hide();

$('#name-user').val(sessionStorage.getItem('userName'));

const btnSend = $('#btn-send').on('click', ()=>{
    $('.msg-input1').val('');
    msgBubble.hide();
});

$('#btnVet').on('click', ()=>{
    msgBubble.show();
})

const btnVet = $('#btnVet');
btnVet.hide();



$(".leaflet-marker-icon").on('click',function(event){

    
    setTimeout(function(){

        var text = $('#text_to_get_1').text();

        var text2 = $('#text_to_get_2').text() + '<br/>';

        var text3 = $('#text_to_get_3').text();

        var text4 = text.split(",").join('<br/>')

        $("#textInBub").html(text2 + text3 + text4);
        if (text == ''){
            btnVet.show();
            $('.msg-input1').val('');
            msgBubble.hide();
        }else{
            btnVet.hide();
            $('.msg-input1').val('');
            msgBubble.hide();
        }

    },300);



});