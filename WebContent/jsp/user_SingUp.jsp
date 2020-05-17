<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysns", "root", "1213");
	Statement st = conn.createStatement();
	
	// request datas
	String input_id = request.getParameter("id");
	String input_pw = request.getParameter("pw");
	String input_email = request.getParameter("email");
	String input_birth = request.getParameter("birth");
	Integer input_gender = Integer.parseInt(request.getParameter("gender"));
	
	String sql = "INSERT INTO user(id, username, password, email, birth, gender) VALUES(";
	sql += "'"+input_id+"', ";
	sql += "'"+input_pw+"', ";
	sql += "'"+input_email+"', ";
	sql += "'"+input_birth+"', ";
	sql += "'"+input_gender+"'";
	sql += ")";
	
	int cnt = st.executeUpdate(sql);
	String res = (cnt==0) ? "회원가입 처리에 실패했습니다." : "회원가입이 완료되었습니다.";
	out.print(res);
	
	st.close();
	conn.close();
%>

<%// write by ksanbal%>