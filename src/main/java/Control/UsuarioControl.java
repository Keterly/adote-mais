/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import Dao.UsuarioDao;
import java.io.IOException;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class UsuarioControl {
     UsuarioDao ud;
     
    public UsuarioControl(String nome, String email, String telefone, String tipo, String descricao){
        ud = new UsuarioDao(nome, email, telefone, tipo, descricao);
    }
    public UsuarioControl(String nome, String email, String telefone, String opcao){
        ud = new UsuarioDao(nome, email, telefone, opcao);
    }
    
    public UsuarioControl(){
         ud = new UsuarioDao();
    }
    
    public void salvar(){
        ud.insert(); 
        ud.usuarioLista();
    }
     public void salvar_usu(){
        ud.insert_user();
    }
     
    public ArrayList<String> mostraLista() throws IOException{
        return ud.nomesLista();
    }
    
}
