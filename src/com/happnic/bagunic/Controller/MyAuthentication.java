package com.happnic.bagunic.Controller;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class MyAuthentication extends Authenticator{
	PasswordAuthentication pa;
    public MyAuthentication(){
         
        String id = "bagunic21@gmail.com";  //�߼��� �̸����� ���̵�
        String pw = "gkskenftpt123";         //�߼��� �̸����� ��й�ȣ
 
        pa = new PasswordAuthentication(id, pw);
    }
 
    // �ý��ۿ��� ����ϴ� ��������
    public PasswordAuthentication getPasswordAuthentication() {
        return pa;
    }
}
