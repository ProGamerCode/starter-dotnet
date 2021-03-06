﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="twilio_dotnet.Default" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <meta name="description" content="TwilioQuest starter code">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Welcome to the .NET Guild!</title>

    <!-- A little CSS to make our page prettier -->
    <link href="//fonts.googleapis.com/css?family=Press+Start+2P" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" runat="server" href="~/Content/app.css"/>
    <link rel="icon" type="image/png" runat="server" href="~/Content/favicon.png" />

    <!-- Include jQuery to help us with some UI stuff -->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js">
    </script>
</head>
<body>
    <form runat="server">

    <!-- A simple UI to test our Twilio back end -->
    <div id="content">

        <div id="flash" style="display:none;">
            <p><span id="flash-message"></span> <a href="#">Close</a></p>
        </div>

        <div id="welcome">
            <img runat="server" src="~/Content/dotnet_shield256.png" alt=".NET Shield"/>
            <h1><span>.NET</span> Guild</h1>
            <p>
                Welcome to the .NET Guild! You Scions of C# will be showered with
                fine meats and cheeses when you return home in victory from your Twilio quest!
            </p>
            <p>
                <a href="http://quest.twilio.com">Gather your party and
                venture forth</a>
            </p>
        </div>

        <h3>Hello World</h3>
        <p>
            Below, we have two simple demos that will confirm your environment
            has been properly configured.  Please refer to the 
            <a href="https://github.com/twilio/starter-dotnet">README.md in your 
            starter app repository</a> to see how to configure this application.
        </p>
        <br/>
        <ul id="tabs">
            <li id="messaging" class="current">Messaging</li>
            <li id="call">Voice Call</li>
        </ul>
        <%--<form>--%>
            <p>Enter your mobile phone number:</p>
            <input id="to" type="text" 
                placeholder="ex: +16518675309"/>
            <button>Send me a message</button>
        <%--</form>--%>
    </div>
    <div id="footer">
        <span>Twilio</span><img runat="server" src="~/Content/TwilioQuest32.png" alt="TwilioQuest"/>Quest
        <p>
            Made with <img runat="server" src="~/Content/heart.gif" alt="heart"> by your pals 
            <a href="http://www.twilio.com">@@twilio</a>.
        </p>
    </div>

    <!-- Some dirty JavaScript to help drive our UI -->
    <!-- Some ajax magic to hit our back end and make calls/send messages -->
    <asp:ScriptManager runat="server" LoadScriptsBeforeUI="false">
        <Scripts>
            <asp:ScriptReference Path="~/Content/js/ui.js" />
            <asp:ScriptReference Path="~/Content/js/form.js" />
        </Scripts>
    </asp:ScriptManager>

    </form>
</body>
</html>