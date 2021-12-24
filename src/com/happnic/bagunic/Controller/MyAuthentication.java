package com.happnic.bagunic.Controller;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class MyAuthentication extends Authenticator{
	PasswordAuthentication pa;
    public MyAuthentication(){
         
        String id = "bagunic21@gmail.com";  // 보낼 메일 
        String pw = "gkskenftpt123";         // 비밀번호
 
        pa = new PasswordAuthentication(id, pw);
    }
 
    //보낼 메일 인증
    public PasswordAuthentication getPasswordAuthentication() {
        return pa;
    }
}
