/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Model.Mensagem;
import Model.Pessoa;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class MensagemDao extends Mensagem{
    
    public MensagemDao(String nome, String email, String mensagem){
        setNome(nome);
        setEmail(email);
        setMensagem(mensagem);
        
        File dir = new File("C:\\dados");
            if(!dir.exists()){
                dir.mkdir();
            }
    }
 
    public String enviar(){
     try{
            FileWriter fw = new FileWriter("c:\\dados\\adote_mensagens.txt", true);
            PrintWriter pw = new PrintWriter(fw);
            pw.println(this.nome);
            pw.println(this.email);
            pw.println(this.mensagem);
            pw.println("-------------------------------------------------------");
            pw.flush();
            pw.close();
            fw.close();
        }
        catch(IOException ex){
            Logger.getLogger(MensagemDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
        }
    
    }
