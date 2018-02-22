<%--
  Created by IntelliJ IDEA.
  User: mrlz
  Date: 22.02.2018
  Time: 14:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Happy site</title>
  </head>
  <body>
  hello world!
  happy feet
  <canvas id="square"></canvas>
  <script>
      var c=document.getElementById('square');
      var ctx=c.getContext('2d');
      ctx.rect(20,20,150,100);
      ctx.stroke();
  </script>
  </body>
</html>
