<%-- 
    Document   : pruebainforme
    Created on : 22/09/2017, 02:10:26 PM
    Author     : Estudiante
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
  <meta name="viewport" content="width=device-width">
        <title>prueba</title>
        
 <script>
            
            function addPerson(e) {
        e.preventDefault();
         row = createRow({
          name: $('#name').val(),
          lastname: $('#lastname').val()
        });
        $('table tbody').append(row);
        clean();
      }

      function createRow(data) {
        return (
          '<tr>' +
            '<td>${$('tbody tr').length + 1}</td>' +
            '<td>${data.name}</td>' +
            '<td>${data.lastname}</td>' +
          '</tr>'
        );
      }

      function clean() {
        $('#name').val('');
        $('#lastname').val('');
        $('#name').focus();
      }

            
        </script>
    </head>
    
    <body>
        <h1>Hello World!</h1>
            <form >
        <section class="group">
          <input type="text" id="name" placeholder="Nombre" />
          <input type="text" id="lastname" placeholder="Apellido" />
        </section>
        <button type="submit">Agregar</button>
      </form>

      <table style="display: inline-block">
        <thead>
          <tr>
            <th>#</th>
            <th>Nombre</th>
            <th>Apellido</th>
          </tr>
        </thead>
        <tbody>

        </tbody>
      </table>
    <script src="https://code.jquery.com/jquery-3.1.0.js"></script>
    </body>
</html>
