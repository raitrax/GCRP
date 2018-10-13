$(function() {
    window.addEventListener('message', function(event) { 
        if (event.data.type == "OpenPoliceComputer"){
            $('.main').css('display', 'block')
            $('.general').css('display', 'block')
            $('.auth').css('display', 'block')
            $('.about').css('display', 'block')
        } 
    });
});

$('#submit-form').click(function(){
    if (isLspdUser() == true) {
        $('.auth').css('display', 'none')
        $('.about').css('display', 'none')
        $('.anpr').css('display', 'block')
    } else {
        $('.auth-error-message').css('display', 'block')  
    }
})

$('#exitcomputer').click(function(){
    $('.general').css('display', 'none')
    $('.main').css('display', 'none')
    $('.auth-error-message').css('display', 'none')
    $('.auth').css('display', 'none')
    $('.about').css('display', 'none')
    $('.anpr').css('display', 'none')
    $.post('http://esx_policecomputers/NUIFocusOff', JSON.stringify({}));
})

function getUsername() { return document.getElementById('username').value; }
function getPassword() { return document.getElementById('password').value; }
function isLspdUser() {
    var username = getUsername()
    var password = getPassword()
    if (username == "lspdlsav") {
        if (password == "20lspdlsav18") {
            return true
        } else {
            return false
        }
    } else {
        return false
    }
}

var jqxhr = $.getJSON( "https://www.lspdlsav.ga/internal-service/radars.php", function(json) { 
    var obj = json
});

    var tbl=$("<table/>").attr("id","mytable");
    $("#div1").append(tbl);
    for(var i=0;i<obj.length;i++)
    {
        var tr="<tr>";
        var td1="<td>"+obj[i]["id"]+"</td>";
        var td2="<td>"+obj[i]["name"]+"</td>";
        var td3="<td>"+obj[i]["color"]+"</td></tr>";

       $("#mytable").append(tr+td1+td2+td3); 

    }   