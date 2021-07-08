/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Model.Admin;

/**
 *
 * @author Admin
 */
public class AdminDao extends Admin{
    
    public AdminDao(){
        setEmail("admin.adote@gmail.com");
        setSenha("adotemais2020");
    }
    //como um select
    
    public Boolean verificaLogin(String email, String senha){
        if(email.equals(this.email) && senha.equals(this.senha)){
            return true;
        }
        return false;
    }
}
