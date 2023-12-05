<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication7.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function ValidateEmail(input) {

            var validRegex = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;

            if (input.value.match(validRegex)) {

                alert("Valid email address!");

                document.form1.text1.focus();

                return true;

            } else {

                alert("Invalid email address!");

                document.form1.text1.focus();

                return false;

            }

        }


    </script>
</head>
<body>
     <body onload="document.form1.text1.focus()">

    <div class="mail">

      <h2>Input an email address</h2>

      <form name="form1" action="#">

        <ul>

          <li><input type="text" name="text1" /></li>

          <li>&nbsp;</li>

          <li class="validate">

            <input

              type="submit"

              name="validate"

              value="Validate"

              onclick="ValidateEmail(document.form1.text1)"

            />

          </li>

          <li>&nbsp;</li>

        </ul>

      </form>

    </div>

    <script src="email.js"></script>

  </body>


    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
