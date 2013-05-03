<%-- 
    Document   : RecoveryPass
    Created on : May 3, 2013, 1:57:26 PM
    Author     : HR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Password Recovery</title>
    </head>
    <body>
        <form name="pass" id="pass" action="Controller?">
            <input type="hidden" name="Action" id="Action" value="ForwardPsw" class="validate[required] medium" />        
            <div class="section">
                <label> Email Account <small>Text
                        custom</small></label>
                <div>
                    <input type="text" placeholder="Email" class="medium"
                           name="email" id="email"/><label
                           id="msg_email" class="red"></label>
                    <span class="f_help">
                        <b></b> </span>
                </div>
            </div>

            <input type="submit" value="submit" name="submit">
            </div>
        </form>
    </body>
</html>
