package pojo;

public class Product 
{
	private int product_id;
	private String product_name;
	private String product_description;
	private int product_mrp;
	private int product_discount;
	private int product_quantity;
	private String product_color;
	private Image_pojo p_img_id;
	private String nameString;
	
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getProduct_description() {
		return product_description;
	}
	public void setProduct_description(String product_description) {
		this.product_description = product_description;
	}
	public int getProduct_mrp() {
		return product_mrp;
	}
	public void setProduct_mrp(int product_mrp) {
		this.product_mrp = product_mrp;
	}
	public int getProduct_discount() {
		return product_discount;
	}
	public void setProduct_discount(int product_discount) {
		this.product_discount = product_discount;
	}
	public int getProduct_quantity() {
		return product_quantity;
	}
	public void setProduct_quantity(int product_quantity) {
		this.product_quantity = product_quantity;
	}
	public String getProduct_color() {
		return product_color;
	}
	public void setProduct_color(String product_color) {
		this.product_color = product_color;
	}
	public Image_pojo getP_img_id() {
		return p_img_id;
	}
	public void setP_img_id(Image_pojo p_img_id) {
		this.p_img_id = p_img_id;
	}
	
	
	

}
