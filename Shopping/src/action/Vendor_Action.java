package action;

import java.io.File;

import javax.servlet.ServletContext;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.util.ServletContextAware;

import com.opensymphony.xwork2.ActionSupport;

import dao.ShoppingDao;

public class Vendor_Action extends ActionSupport implements ServletContextAware
{
	private String Username;
	private String Email;
	private long Mobile;
	private File UploadId;
	private String UploadIdFileName;
	private ServletContext servletContext;
	
	public ServletContext getServletContext() {
		return servletContext;
	}
	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;
	}
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		Username = username;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public long getMobile() {
		return Mobile;
	}
	public void setMobile(long mobile) {
		Mobile = mobile;
	}
	public File getUploadId() {
		return UploadId;
	}
	public void setUploadId(File uploadId) {
		UploadId = uploadId;
	}
	public String getUploadIdFileName() {
		return UploadIdFileName;
	}
	public void setUploadIdFileName(String uploadIdFileName) {
		UploadIdFileName = uploadIdFileName;
	}
	public String register_vendor()
	{
		System.out.println("hai exe");
           ShoppingDao l=new ShoppingDao();		
		try {
			
			String flag = l.registerVendorWithIdProof(UploadIdFileName,"images/".concat(UploadIdFileName),Username,Email,Mobile);
			//String flag=l.setImage(fileName,"images/".concat(fileNameImage));
			System.out.println(UploadIdFileName);
			if (flag.equals("Inserted"))
			{
			String filePath = servletContext.getRealPath("/").concat("images");
			
			File fileToCreate = new File(filePath, this.UploadIdFileName);
			FileUtils.copyFile(this.UploadId, fileToCreate);
			
			addActionMessage("successfully inserted");
			//l.retrieve();
			}
			

			} catch (Exception e) {
			e.printStackTrace();
			addActionError(e.getMessage());
			return ERROR;
		}
		return SUCCESS;
	}

}
