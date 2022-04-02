<%@page import="java.sql.*" %>

<%

  String s1,s2;

  s1=request.getParameter("t1");
s2=request.getParameter("t2");

  Connection con;
  Statement stmt;

  try
   {
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("Jdbc:mysql://localhost:3306/todo","root","");

   stmt=con.createStatement();

   int k=stmt.executeUpdate("insert into todo values('"+s1+"','"+s2+"')");
 %>
 <html>
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"></script>
      <link rel="stylesheet" href="style.css">
    <title>TODO-LIST</title>
  </head>

   <p class="showlist"><a href="showlist.jsp"><button type="submit" class="btn-sm btn-primary delete">SHOW LIST</button></a></p>
 </html>
 <%
  }
   catch(Exception e)
  {
   out.println(e);
   }

 




%>