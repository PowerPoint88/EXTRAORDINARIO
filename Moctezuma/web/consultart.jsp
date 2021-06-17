
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <% 
        Connection con = null;
                        Statement set = null;
                        ResultSet rs = null;
                        String url, userName, password, driver;
                        url = "jdbc:mysql://localhost/extraMoc";
                        userName = "root";
                        password = "FitBasilisk88";
                        driver = "com.mysql.jdbc.Driver";
                        
                        try{
                            Class.forName(driver);
                            con = DriverManager.getConnection(url, userName, password);
                            try{
                                set = con.createStatement();
                                //necesito los parametros del formulario
                                String q;
                                
                                q = "select * from registro order by pass";
                                
                                rs = set.executeQuery(q);
                                while(rs.next()){
                                    %>
                                   
                                    <h1>Consultas</h1> 
                                    <table>
                <tr>
                    <td><%=rs.getInt("id_usuario")%></td>
                    <td><%=rs.getString("nombre")%> </td>
                    <td><%=rs.getString("puesto")%> </td>
                    <td><%=rs.getString("sueldo")%> </td>
                    
                                        
                </tr>
                                    </table>
                <a href="index.html">Regresar a la Pagina Principal</a>
                                    
                                    <%
                                
                                }
                            rs.close();    
                            set.close();
                            
                            }catch(SQLException ed){
                                System.out.println("Error al consultar la tabla");
                                System.out.println(ed.getMessage());
                                }
                        }catch(Exception e){
                            System.out.println("Error al conectar la bd");
                            System.out.println(e.getMessage());
                            System.out.println(e.getStackTrace());
                        }
        
        
        %>
    </body>
</html>
