package dto;

import java.io.Serializable;

public class Product implements Serializable {
	
	private static final long serialVersionUID = -4274700572038677000L;

	private String productId;
	private String pname;
	private Integer unitPrice;
	private String description;
	private String manufacturer;
	private String category;
	private long unitInStock;
	private String condition;
	private String filename;
	private int quantity;

	public Product() {
		super();
	}

	public Product(String productId, String pname, Integer unitprice) {
		this.productId = productId;
		this.pname = pname;
		this.unitPrice = unitprice;
	}

	public String getProductId() {
		return productId;
	}
	
	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public Integer getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(Integer unitprice) {
		this.unitPrice = unitprice;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getManufacturer() {
		return manufacturer;
	}

	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public long getUnitInStock() {
		return unitInStock;
	}

	public void setUnitInStock(long unitInStock) {
		this.unitInStock = unitInStock;
	}

	public String getCondition() {
		return category;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}
	
	public String getFilename() {
		return filename;
	}
	
	public void setFilename(String filename) {
		this.filename = filename;
	}
	
	public int getQuantity() {
		return quantity;
	}
	
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
}
