package com.zj.dp.web.action;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class BaseAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	
	/**
	 * 获取HttpServletResponse对象
	 * @return HttpServletResponse对象
	 */
	protected HttpServletResponse getResponse() {
		return ServletActionContext.getResponse();
	}

	/**
	 * 获取HttpServletRequest对象
	 * @return HttpServletRequest对象
	 */
	protected HttpServletRequest getRequest() {
		return ServletActionContext.getRequest();
	}
	
	/**
	 * 获取HttpSession对象
	 * @return HttpSession对象
	 */
	protected HttpSession getSession(){
		return ServletActionContext.getRequest().getSession();
	}
	
	/**
	 * 得到Request域中的值
	 * @param attrName 要获取值的名字
	 * @return Object  得到的值
	 */
	protected Object getRequestAttribute(String attrName){
		return this.getRequest().getAttribute(attrName);
	}
	
	/**
	 * 设置Request域中的值
	 * @param attrName  设置的名字
	 * @param attrVal	设置的值
	 */
	protected void setRequestAttribute(String attrName,Object attrVal){
		this.getRequest().setAttribute(attrName,attrVal);
	}
	
	/**
	 * 得到Session域中的值
	 * @param attrName 要获取值的名字
	 * @return Object  得到的值
	 */
	protected Object getSessionAttribute(String attrName){
		return this.getSession().getAttribute(attrName);
	}
	
	/**
	 * 设置Session域中的值
	 * @param attrName  设置的名字
	 * @param attrVal	设置的值
	 */
	protected void setSessionAttribute(String attrName,Object attrVal){
		this.getSession().setAttribute(attrName,attrVal);
	}
	

	protected String out(Object obj) {
		try {
			HttpServletResponse response = getResponse();  
	        response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.print(obj);
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	protected String json(boolean success, String str) {
		if(str.indexOf("{") >= 0 && str.indexOf("}") >= 0) {
			return out("{\"success\":" + success + ",\"data\":" + str + "}");
		} else {
			return out("{\"success\":" + success + ",\"data\":\"" + str + "\"}");
		}
	}

}
