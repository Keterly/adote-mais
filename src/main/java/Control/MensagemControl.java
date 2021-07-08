/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import Dao.MensagemDao;

/**
 *
 * @author Admin
 */
public class MensagemControl {
    MensagemDao md;
    
    public MensagemControl(String nome, String email, String mensagem){
        md = new MensagemDao(nome, email, mensagem);
    }
    
    public void enviarMsg(){
        md.enviar();
    }
    
    public MensagemDao getMensagemDao(){
        return md;
    }
}
