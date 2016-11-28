/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shopping;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * Web application lifecycle listener.
 *
 * @author Amang8662
 */
public class MyShoppingListener implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
         try {
            ShoppingModel.DBConn(sce);
        }
        catch (Exception ex) {
            System.out.println("Error Connecting DB");
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        if(ShoppingModel.getConn()!=null)
        {
            ShoppingModel.setConn(null);
            System.out.println("Disconnected From Book Search");
        }
    }
}
