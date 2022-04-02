<%@page import="java.sql.*" %>
<%

  Connection con;
   Statement stmt;

  
  try
  {
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("Jdbc:mysql://localhost:3306/todo","root","");
    stmt=con.createStatement();
   ResultSet rs=stmt.executeQuery("select * from todo");

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
    <title>TODO-LIST</title>
    </head>
  <link rel="stylesheet" href="style.css">
  <center>
    <div class="tablediv">
      <table class="table" border="2">
        <thead>
          <tr>
            <th scope="col">TITLE</th>
            <th scope="col">DISCRIPTION</th>
          </tr>
    <%
     while(rs.next())
    {
   %>
    <tr>
    <td><% out.println(rs.getString(1)); %> </td>
 <td> <% out.println(rs.getString(2)); %></td>
 <td><a href="dellist.jsp?did=<% out.println(rs.getString(1)); %>"><button type="submit" class="btn-sm btn-primary delete">DELETE</button></a> </td>
    </tr>

   
  <%
   }
  
}

  catch(Exception e)
  {
 

  }
  

   %>
  </table>
    </div>
    
    <div class="link"><a href="index.html"><button type="submit" class="btn-sm btn-primary delete">ADD</button></a></p></div>
   
</center>