package bbs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

public class BbsDAO {// ������ ���̽� ���� ��ü�� ����
	private Connection conn;// connection db�� �����ϰ� ���ִ� ��ü
	private ResultSet rs;
	public BbsDAO() {
		try {
			String driverName = "oracle.jdbc.driver.OracleDriver";
			String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
			String dbID = "hr";
			String dbPassword = "hr";
			Class.forName(driverName);
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
//������ �ð��� �������� �Լ�
	public String getDate() {
		//String SQL = "Select GETDATE()";
		//
		String SQL = "SELECT SYSDATE FROM BBS";
		// Select GETDATE();
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "";// �����ͺ��̽� ����
	}
//bbsID �Խñ� ��ȣ �������� �Լ�
	public int getNext() {
		//String SQL = "SELECT bbsID FROM dbo.[BBS] ORDER BY bbsID DESC";
		String SQL = "SELECT bbsID FROM BBS ORDER BY bbsID DESC";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1; // ù��° �Խù��ΰ��
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;// �����ͺ��̽� ����
	}
//�� �ۼ��ϴ� �Լ�
	public int write(String bbsTitle, String userID, String bbsContent) {
		String SQL = "INSERT INTO BBS VALUES(?,?,?,?,?,?)";
	//String SQL = "insert into dbo.[BBS](bbsID, bbsTitle, userID, bbsDate, bbsContent, bbsAvailable) values(?,?,?,?,?,?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext());
			pstmt.setString(2, bbsTitle);
			pstmt.setString(3, userID);
			pstmt.setString(4, getDate());
			pstmt.setString(5, bbsContent);
			pstmt.setInt(6, 1);
			/*rs = pstmt.executeQuery();
			System.out.println(SQL);*/
			return pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // �����ͺ��̽� ����
	}
	public ArrayList<Bbs> getList(int pageNumber) {
		
		String SQL = "SELECT * FROM (SELECT * FROM BBS WHERE bbsID <? and bbsAvailable=1 ORDER BY bbsID DESC) WHERE ROWNUM<=10";
		
		//Bbs���� ������ �� �����Ҽ� �ִ� �ν��Ͻ��� ����
		ArrayList<Bbs> list = new ArrayList<Bbs>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
			//�Խñ��� ������ ���� ������ ������ �ҷ��� �׷��� 6���� �۰� �ҷ��� ��� ���ڰ� �� ������ �ҷ��� �̴�. �׷��� �Ϻη� �Լ��� ������̴�.
			rs = pstmt.executeQuery();
			//System.out.println("���� ������~");
			while (rs.next()) {
				Bbs bbs = new Bbs();
				bbs.setBbsID(rs.getInt(1));
				bbs.setBbsTitle(rs.getString(2)); 
				bbs.setUserID(rs.getString(3));
				bbs.setBbsDate(rs.getTimestamp(4));
				bbs.setBbsContent(rs.getString(5));
				bbs.setBbsAvailable(rs.getInt(6));
				list.add(bbs);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public boolean nextPage(int pageNumber) {
		  String SQL = "select * from (select * from bbs where bbsid <? and bbsAvailable=1 order by bbsID desc) where rownum<=10";
		ArrayList<Bbs> list = new ArrayList<Bbs>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	public Bbs getBbs(int bbsID) {
		//String SQL = "SELCET * FROM dbo.[BBS] WHERE bbsID = ?";
		String SQL = "SELECT * FROM BBS WHERE bbsID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, bbsID);
			//System.out.println("���� �����Դϱ�??");
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				Bbs bbs = new Bbs();
				bbs.setBbsID(rs.getInt(1));
				bbs.setBbsTitle(rs.getString(2));
				bbs.setUserID(rs.getString(3));
				//bbs.setBbsTitle(rs.getString(4));
				bbs.setBbsDate(rs.getTimestamp(4));
				bbs.setBbsContent(rs.getString(5));
				bbs.setBbsAvailable(rs.getInt(6));

				return bbs;

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	// ���� �Լ�
		public int update(int bbsID, String bbsTitle, String bbsContent) {
			String SQL = "UPDATE BBS SET bbsTitle = ?, bbsContent = ? WHERE bbsID = ?";
			try {
				PreparedStatement pstmt = conn.prepareStatement(SQL);
				pstmt.setString(1, bbsTitle);
				pstmt.setString(2, bbsContent);
				pstmt.setInt(3, bbsID);
				return pstmt.executeUpdate();

			} catch (Exception e) {
				e.printStackTrace();
			}
			return -1; // �����ͺ��̽� ����
		}
		// ���� �Լ�
		public int delete(int bbsID) {
			String SQL = "UPDATE BBS SET bbsAvailable = 0 WHERE bbsID = ?";
			try {
				PreparedStatement pstmt = conn.prepareStatement(SQL);
				pstmt.setInt(1, bbsID);
				return pstmt.executeUpdate();

			} catch (Exception e) {
				e.printStackTrace();
			}
			return -1; // �����ͺ��̽� ����
		}
	}