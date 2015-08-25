package com.zj.dp.web.action;

import java.util.List;

import com.zj.dp.biz.IPayBiz;
import com.zj.dp.biz.impl.OrderInfo;
import com.zj.dp.biz.impl.PayBizImpl;
import com.zj.dp.entity.User;



public class PayAction extends BaseAction{

	private int ticketType;
	private int[] ticketId;
	IPayBiz payBiz=new PayBizImpl();
	
	
	public int getTicketType() {
		return ticketType;
	}

	public void setTicketType(int ticketType) {
		this.ticketType = ticketType;
	}

	public int[] getTicketId() {
		return ticketId;
	}

	public void setTicketId(int[] ticketId) {
		this.ticketId = ticketId;
	}

	public String chupiao(){
		/*
		 * 先check票是否能出售
		 * 通过url传来的票ID找出信息显示
		 * 转入出票页面
		 */
		boolean result=payBiz.checkTicket(ticketId);
		if(!result){
			return "error";
		}
		OrderInfo orderInfo=payBiz.getTickets(ticketId,ticketType);
		setSessionAttribute("orderInfo", orderInfo);
		return this.SUCCESS;
	}
	
	public String pay(){
		/*
		 * 判断用户是否登录
		 * 已登录则进入结算
		 * 否则返回登录页面
		 */
		User user=(User) getSessionAttribute("user");
		if(user==null){
			String fromURL = getRequest().getHeader("Referer");
			System.out.println(fromURL);
			String data="{\"login\":\""+fromURL+"\"}";
			System.out.println(data);
			json(false,data);
			return null;
		}
		/*
		 * 进行结算扣钱处理
		 * 扣钱失败提示用户
		 * 扣钱成功转入用户订单页面
		 */
		//System.out.println(user.getUserid()+" "+user.getUsername()+" "+user.getMoney());
		OrderInfo orderInfo=(OrderInfo) getSessionAttribute("orderInfo");
		if(orderInfo==null){
			String data="{\"error\":\"error\"}";
			json(false,data);
			return null;
		}
		int result=payBiz.pay(user,orderInfo);
		if(result==0){
			json(true,"");
			return null;
		}else if(result==1){
			String data="{\"msg\":\"账户余额不足！\"}";
			json(true,data);
			return null;
		}else{
			String data="{\"error\":\"error\"}";
			json(false,data);
			return null;
		}
	}
}
