package org.napu.utils;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.RequestProcessor;

public class EncodingHandler extends RequestProcessor {
	public boolean processPreprocess(HttpServletRequest request, HttpServletResponse response){
		try{
			request.setCharacterEncoding("UTF-8");
		}catch(UnsupportedEncodingException ex){
			
		}
		return true;
	}
}
