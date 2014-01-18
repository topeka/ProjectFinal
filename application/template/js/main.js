$(document).ready(function(){
  $("#login").live('click', function(event){
    event.preventDefault();
    $(".popup").show();
  });
  $("#btnlogin").click(function(e){
    e.preventDefault();
    var username = $("#username").val();
    var password = $("#password").val();
    $.ajax({
        url:base_url + 'index.php/main/process_login',
        type: 'POST',
        data: {username: username, password: password},
        success: function(data){
            if(data=="ok")
            {
                $(".popup").hide();
                var li= $("#login").parent();
                $("#login").remove();
                li.append('<a href="#" id="logout">Log Out</a>');
                var signup = li.prev("li").find('a');
                signup.attr('id', 'currentuser');
                signup.html("Hello, "+ username);
            }
            else
            {
                alert("Username hoac password sai!");
            }
        },
        error: function(e) {
            /* Act on the event */
            alert("Quá trình login bị lỗi");
        }
    });
  });

  $("#logout").live('click', function(event){
    event.preventDefault();
    $.ajax({
        url:base_url + 'index.php/main/process_logout',
        success: function(){
                var li= $("#logout").parent();
                $("#logout").remove();
                li.append('<a href="#" id="login">Log In</a>');

                var signup = li.prev("li").find('a');
                signup.attr('id', 'signup');
                signup.html("Sign Up");

        },
        error: function(e) {
            /* Act on the event */
            alert(e);
        }

    });
  });

  $("#signup").live("click", function(event)
  {
    event.preventDefault();
    $(".signup").show();
  });

  $("#btnsignup").live("click", function(event)
  {
    event.preventDefault();
    var fullname = $("#fullname").val();
    var username = $("#username1").val();
    var password = $("#password1").val();
    var email = $("#email").val();
    $.ajax({
        url:base_url + 'index.php/main/process_signup',
        type: "POST",
        data: {fullname:fullname,username:username,password:password,email:email},
        success: function(data){
            $('.signup').hide();
        },
        error: function(e) {
            /* Act on the event */
            alert(e);
        }

    });
  });
  $("#currentuser").live("click", function(event)
  {
    event.preventDefault();
  });

});