package org.napu.test;

import java.sql.Connection;

import org.napu.db.ConnectionFactory;

public class TestConnectionFactory {
	
	public static void main(String[] args){
		Connection conn = ConnectionFactory.getConnection();
		if(conn != null) {
			System.out.println("连接成功");
		}else{
			System.out.println("连接失败");
		}
	}
}
