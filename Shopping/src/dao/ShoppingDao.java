package dao;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;

import com.opensymphony.xwork2.ActionContext;

import pojo.User_Login;

public class ShoppingDao 
{
	SessionFactory sf=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
	Session s=sf.openSession();
	Map<String,Object> session=ActionContext.getContext().getSession();
	
	public String login(String email,String pswd)
	{
		int uid=0;
		String emailid=null;
		String password=null;
		String user=null;
		Criteria crit=s.createCriteria(User_Login.class);
		Criterion c1=Restrictions.eq("Email", email);
		Criterion c2=Restrictions.eq("password", pswd);
		crit.add(c1);
		crit.add(c2);
		List<User_Login> l=crit.list();
		if(l!=null)
		{
			for(User_Login u:l)
			{
				uid=u.getId();
				emailid=u.getEmail();
				password=u.getPassword();
				user=u.getUsername();
			}
		}
		if(email.equals(emailid)&&pswd.equals(password))
		{
			session.put("a",uid);
			session.put("b",user);
			System.out.println(user);
			return user;
		}
		else
		return null;
	}
	
	public int getHowManyProductsAdded()
	{
		Object o=session.get("a");
		Integer i=(Integer)o;
		int uid=(int)i;
		Query q=s.createQuery("select p_id from Cart where u_id='"+uid+"'");
		//q.setParameter(0,uid);
		List l=q.list();
		int size=l.size();
		session.put("products",size);
		System.out.println(size);
		return size;
	}
	
	public List displayCart()
	{
		Object o=session.get("a");
		Integer i=(Integer)o;
		int uid=(int)i;
		Query q=s.createQuery("select cart_id from Cart where u_id='"+uid+"'");
		List l=q.list();
		System.out.println(l.size());
		return l;
	}
	
	public String registerVendorWithIdProof(String UploadId,String UploadIdPath,String vname,String Email,long Mobile)
	{
		return "success";
	}
}
