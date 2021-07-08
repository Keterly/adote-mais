/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import Dao.AdminDao;

/**
 *
 * @author Admin
 */
public class AdminControl {
    private AdminDao ad;
    
    public AdminControl(){
        ad = new AdminDao();
    }
    
   public boolean login(String email, String senha){
       return ad.verificaLogin(email, senha);
   } 
   
   public AdminDao getAdminDao(){
       return ad;
   }
}
