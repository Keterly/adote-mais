/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Model.Pessoa;
import Model.Usuario;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class UsuarioDao extends Usuario {
    
    //insert de usuários
    
    public UsuarioDao(String nome, String email, String telefone, String tipo, String descricao){
        setNome(nome);
        setEmail(email);
        setTelefone(telefone);
        setTipo(tipo);
        setDescricao(descricao);
    }
    
     public UsuarioDao(String nome, String email, String telefone, String opcao){
        setNome(nome);
        setEmail(email);
        setTelefone(telefone);
        setOpcao(opcao);
    }
    
     public UsuarioDao(){
         
         File dir = new File("C:\\dados");
            if(!dir.exists()){
                dir.mkdir();
            }
     }
     
             
    public String insert(){
          try{
            FileWriter fw = new FileWriter("c:\\dados\\cadastros_adote.txt", true);
            PrintWriter pw = new PrintWriter(fw);
            pw.println(this.nome);
            pw.println(this.email);
            pw.println(this.telefone);
            pw.println(this.tipo);
            pw.println(this.descricao);
            pw.println("-------------------------------------------------------");
            pw.flush();
            pw.close();
            fw.close();
        }
        catch(IOException ex){
            Logger.getLogger(UsuarioDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
        }
    
    
      public String insert_user(){
          try{
            FileWriter fw = new FileWriter("c:\\dados\\cadastros_usuario.txt", true);
            PrintWriter pw = new PrintWriter(fw);
            pw.println(this.nome);
            pw.println(this.email);
            pw.println(this.telefone);
            pw.println(this.opcao);
            pw.println("-------------------------------------------------------");
            pw.flush();
            pw.close();
            fw.close();
        }
        catch(IOException ex){
            Logger.getLogger(UsuarioDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
        }
      
      public String usuarioLista(){
        try{
            FileWriter fw = new FileWriter("c:\\dados\\lista_usuarios.txt", true);
            PrintWriter pw = new PrintWriter(fw);
            pw.println(this.nome);
            pw.flush();
            pw.close();
            fw.close();
        }
        catch(IOException ex){
            Logger.getLogger(UsuarioDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
        }
      

    public ArrayList<String> nomesLista() throws FileNotFoundException, IOException{
       File arq = new File("c:\\dados\\lista_usuarios.txt");
       ArrayList<String> nomes = new ArrayList();
       
       if(!arq.exists()){
           return nomes;
       }
       FileReader fr = new FileReader(arq);
       BufferedReader br = new BufferedReader( fr );
       String nome = br.readLine();
       nomes.add(nome);
       while(br.ready()){
       nome = br.readLine();
       nomes.add(nome);
    }
       return nomes;
    }
}