package com.sjtu.napu.struts.action;
import org.apache.struts.action.RequestProcessor;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
public class EncodingHandler extends RequestProcessor {
	public boolean processPreprocess (HttpServletRequest servletRequest, HttpServletResponse servletResponse){
		try {
			servletRequest.setCharacterEncoding("UTF-8");
		}catch (UnsupportedEncodingException ex){
			
		}
		return true;
	}
}
