package com.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Database 
{
	public static Connection connect() throws Exception
	{
		Connection conn = null;
		
			Class.forName("org.sqlite.JDBC");
            String url = "jdbc:sqlite:/C:/Users/nav/Desktop/sqlite3/test.db";
            conn = DriverManager.getConnection(url);
            
            if (conn != null)
            {
                System.out.println("Connection to SQLite has been established.");
            }
        return conn;
	}
}
