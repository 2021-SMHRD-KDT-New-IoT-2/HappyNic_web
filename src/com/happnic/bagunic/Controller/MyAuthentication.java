package com.happnic.bagunic.Controller;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class MyAuthentication extends Authenticator{
	PasswordAuthentication pa;
    public MyAuthentication(){
         
        String id = "bagunic21@gmail.com";  //발솔할 이메일의 아이디
        String pw = "gkskenftpt123";         //발송할 이메일의 비밀번호
 
        pa = new PasswordAuthentication(id, pw);
    }
 
    // 시스템에서 사용하는 인증정보
    public PasswordAuthentication getPasswordAuthentication() {
        return pa;
    }
}
