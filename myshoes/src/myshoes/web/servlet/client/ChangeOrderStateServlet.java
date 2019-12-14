package myshoes.web.servlet.client;
import java.io.IOException;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.mail.util.MailSSLSocketFactory;

import myshoes.domain.User;
import myshoes.service.OrderService;

public class ChangeOrderStateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 获得订单号数据
		String orderid = request.getParameter("orderid");
		String paySuccess = "恭喜您支付成功！";
		if (null != orderid) {
				OrderService service = new OrderService();
				// 根据订单号修改订单状态
				try {
					
					service.updateState(orderid);
					request.setAttribute("paySuccess", paySuccess);
					request.getRequestDispatcher("/findOrderByUser").forward(request, response);
					
				    String to = "312740338@qq.com";
				    User user = (User) request.getSession().getAttribute("user");
				    String em=user.getEmail();
			        // 发件人电子邮箱
			        String from = em;

			        // 指定发送邮件的主机为 smtp.qq.com
			        String host = "smtp.qq.com";  //QQ 邮件服务器

			        // 获取系统属性
			        Properties properties = System.getProperties();

			        // 设置邮件服务器
			        properties.setProperty("mail.smtp.host", host);

			        properties.put("mail.smtp.auth", "true");
			        MailSSLSocketFactory sf = new MailSSLSocketFactory();
			        sf.setTrustAllHosts(true);
			        properties.put("mail.smtp.ssl.enable", "true");
			        properties.put("mail.smtp.ssl.socketFactory", sf);
			        // 获取默认session对象
			        Session session = Session.getDefaultInstance(properties,new Authenticator(){
			            public PasswordAuthentication getPasswordAuthentication()
			            {
			                return new PasswordAuthentication("312740338@qq.com", "uxmmpifcjhagcahh"); 
			            }
			        });

			     
			            // 创建默认的 MimeMessage 对象
			            MimeMessage message = new MimeMessage(session);

			            // Set From: 头部头字段
			            message.setFrom(new InternetAddress(from));

			            // Set To: 头部头字段
			            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

			            // Set Subject: 头部头字段
			            message.setSubject("恭喜你购买成功！");

			            // 设置消息体
			            message.setText("这是你的发票");

			            // 发送消息
			            Transport.send(message);
			            //System.out.println("Sent message successfully....from runoob.com");
			        
	
					
					
				} catch (Exception e) {
					e.printStackTrace();
					response.getWriter().write("修改订单状态失败");
				}
			}
	}
}
