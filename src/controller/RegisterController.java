package controller;  
  
import java.sql.*;

import bean.ConnectionProvider;
import bean.User;  
  
public class RegisterController {  
  
public static int register(User u){  
int status=0;  
try{  
Connection con=ConnectionProvider.getConnection();  

PreparedStatement ps=con.prepareStatement("insert into user_registration values(?,?,?)");
ps.setString(1,u.getUname());  
ps.setString(2,u.getUemail());  
ps.setString(3,u.getUpass());  
              
status=ps.executeUpdate();  
}catch(Exception e){}  
      
return status;  
}  
  
}  