/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shopping;

import java.sql.*;
import java.util.ArrayList;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
/**
 *
 * @author Amang8662
 */
public class ShoppingModel {

    public static Connection getConn() {
        return conn;
    }

    public static void setConn(Connection conn) {
        ShoppingModel.conn = conn;
    }
    
    private static Connection conn=null;
    private ItemDetail item=null;
    private UserDetail user=null;
    private ItemList li=null;
    
    public static void DBConn(ServletContextEvent sce)throws Exception
    {
     
            ServletContext ctxt=sce.getServletContext();
            String driver=ctxt.getInitParameter("driver");
            String url=ctxt.getInitParameter("url");
            String uname=ctxt.getInitParameter("username");
            String pwd=ctxt.getInitParameter("password");
			
            Class.forName(driver);
            System.out.println("Driver loaded Successfully");
            conn=DriverManager.getConnection(url,uname,pwd);
            System.out.println("Connected to the Database");
       
    }
    
    public ItemDetail getItem(int item_id) throws SQLException
    {
        PreparedStatement ps=conn.prepareStatement("select * from shopping where item_id=?");
        ps.setInt(1, item_id);
        ResultSet rs=ps.executeQuery();
        item=new ItemDetail();
        while(rs.next())
        {
            item.setItem_id(rs.getInt(1));
            item.setItem_type(rs.getString(2));
            item.setItem_name(rs.getString(3));
            item.setDescription(rs.getString(4));
            item.setItem_price(rs.getInt(5));
            item.setImage(rs.getString(6));
        }
        return item;
    }
    
    public UserDetail getUser(String username,String password) throws SQLException
    {
        PreparedStatement ps=conn.prepareStatement("select * from allusers where username=? and password=?");
        ps.setString(1,username);
        ps.setString(2,password);
        ResultSet rs=ps.executeQuery();
        if(rs.next())
        {
            user=new UserDetail();
            user.setUserid(rs.getInt(1));
            user.setUsername(rs.getString(2));
            user.setPassword(rs.getString(3));
        } 
        return user;
    }
    
    public ArrayList<ItemList> getItemList(String itemtype) throws SQLException
    {
        PreparedStatement ps=conn.prepareStatement("select item_id,item_name,item_price from shopping where item_type=?");
        ps.setString(1,itemtype);
        ResultSet rs=ps.executeQuery();
        ArrayList <ItemList>arrlist=new ArrayList<>();
        while(rs.next())
        {
            li=new ItemList();
            li.setId(String.valueOf(rs.getInt(1)));
            li.setName(rs.getString(2));
            li.setPrice(String.valueOf(rs.getDouble(3)));
            arrlist.add(li);
        }
        return arrlist;
    }
}
