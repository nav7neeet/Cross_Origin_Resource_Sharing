package com.test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class FetchData
{
	public static List fetchData(String id) throws Exception
	{
		String sql = "select * from emp where id ="+id;
        
    	Connection conn = Database.connect();
        Statement stmt  = conn.createStatement();
        ResultSet rs    = stmt.executeQuery(sql);
        
        // loop through the result set
		List list = new ArrayList();

        while (rs.next())
        {
        	list.add(rs.getString(1));
			list.add(rs.getString(2));
            System.out.println(rs.getString("id") + "\t" + rs.getString("name"));
        }
        return list;
	}
	
	public static List patched(String id) throws Exception
	{
		String sql = "select * from emp where id =?";
        
    	Connection conn = Database.connect();
    	PreparedStatement ps;
    	ps = conn.prepareStatement(sql);
		ps.setString(1, id);
    	ResultSet rs    = ps.executeQuery();
        
        // loop through the result set
		List list = new ArrayList();

        while (rs.next())
        {
        	list.add(rs.getString(1));
			list.add(rs.getString(2));
            System.out.println(rs.getString("id") + "\t" + rs.getString("name"));
        }
        return list;
	}
}
