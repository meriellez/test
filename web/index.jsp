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
  <canvas id="canvas"></canvas>
  <script>
      var canvas = document.getElementById('canvas');

      if(canvas.getContext)
      {
          var ctx = canvas.getContext('2d');
          drawEllipse(ctx, 0,0,40,40);
      }

      function drawEllipse(ctx, x, y, w, h) {
          var kappa = .5522848,
              ox = (w / 2) * kappa, 
              oy = (h / 2) * kappa,
              xe = x + w,
              ye = y + h,
              xm = x + w / 2,
              ym = y + h / 2;

          ctx.beginPath();
          ctx.moveTo(x, ym);
          ctx.bezierCurveTo(x, ym - oy, xm - ox, y, xm, y);
          ctx.bezierCurveTo(xm + ox, y, xe, ym - oy, xe, ym);
          ctx.bezierCurveTo(xe, ym + oy, xm + ox, ye, xm, ye);
          ctx.bezierCurveTo(xm - ox, ye, x, ym + oy, x, ym);
          ctx.stroke();
      }
  </script>
  </body>
</html>
