package action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import dao.ShoppingDao;

public class ShoppingAction extends ActionSupport implements SessionAware
{
	private int uid;
	private String Email;
	private String password;
	Map<String,Object> session;
	private List l;
	private int noOfProductsAdded;
	
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPassword() {
		return password;
	}
	
	public int getNoOfProductsAdded() {
		return noOfProductsAdded;
	}
	public void setNoOfProductsAdded(int noOfProductsAdded) {
		this.noOfProductsAdded = noOfProductsAdded;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Map<String, Object> getSession() {
		return session;
	}
	@Override
	public void setSession(Map<String, Object> m) 
	{
		session=m;
	}
	
	ShoppingDao s=new ShoppingDao();
	
	public String login()
	{
		String name=s.login(Email, password);
		if(name!=null)
		{
			
			session.put("username",name);
			noOfProductsAdded=s.getHowManyProductsAdded();
			session.put("noOfProducts",noOfProductsAdded);
			System.out.println(noOfProductsAdded);
			return "success";
		}
		else
		{
			addActionError("plz check ur credentials");
			return "error";
		}
	}
	
	public String displayCart()
	{
		l=s.displayCart();
		System.out.println(l.size()+" in action");
		return "success";
	}
	
	public String logout() throws Exception
	{
		if(session.containsKey("username"))
		{
			session.remove("username");
			session.remove("a");
			session.remove("b");
			session.remove("noOfProducts");
			//session.remove(("products");
		}
		return "success";
	}
	

}
