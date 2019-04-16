package com.atguigu.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class MyPropertyUtil {

	public static String getProperty(String prop,String key) {
		Properties properties = new Properties();
		
		InputStream inStream = MyPropertyUtil.class.getClassLoader().getResourceAsStream(prop);
		try {
			properties.load(inStream);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String property = properties.getProperty(key);
		return property;
	}

}
