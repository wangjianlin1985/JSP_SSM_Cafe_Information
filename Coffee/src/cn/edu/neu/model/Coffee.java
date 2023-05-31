package cn.edu.neu.model;

import java.util.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class Coffee {

  private int coffeeId;
  private float coffeePrice;
  private float coffeeDiscount;
  private int cateId;
  private Date coffeeDate;
  private int coffeeSales;
  private String coffeePic;
  private String coffeeArea;
  private List<Collection> collections;
  private String coffeeName;
  private int coffeeStock;
  private MultipartFile coffeePicFile;
  private List<Pic> pics;
  private String coffeeDisc;
  private int userId;
  
  public Coffee() {
	    super();
	    // TODO Auto-generated constructor stub
	  }
  public Coffee(int coffeeId, int cateId, String coffeeName, String coffeeDisc, float coffeePrice, float coffeeDiscount,
		int coffeeStock, MultipartFile coffeePicFile, List<Pic> pics, Date coffeeDate, int coffeeSales, String coffeePic,
		String coffeeArea,int userId, List<Collection> collections) {
	super();
	this.coffeeId = coffeeId;
	this.cateId = cateId;
	this.coffeeName = coffeeName;
	this.coffeeDisc = coffeeDisc;
	this.coffeePrice = coffeePrice;
	this.coffeeDiscount = coffeeDiscount;
	this.coffeeStock = coffeeStock;
	this.coffeePicFile = coffeePicFile;
	this.pics = pics;
	this.coffeeDate = coffeeDate;
	this.coffeeSales = coffeeSales;
	this.coffeePic = coffeePic;
	this.coffeeArea = coffeeArea;
	this.collections = collections;
	this.userId=userId;
}



  public int getUserId() {
	return userId;
}
public void setUserId(int userId) {
	this.userId = userId;
}
public List<Pic> getPics() {
	return pics;
}

public void setPics(List<Pic> pics) {
	this.pics = pics;
}

public void setCoffeePicFile(MultipartFile coffeePicFile) {
	this.coffeePicFile = coffeePicFile;
}


  public List<Collection> getCollections() {
    return collections;
  }

  public void setCollections(List<Collection> collections) {
    this.collections = collections;
  }



  public int getCoffeeId() {
    return coffeeId;
  }

  public void setCoffeeId(int coffeeId) {
    this.coffeeId = coffeeId;
  }

  public int getCateId() {
    return cateId;
  }

  public void setCateId(int cateId) {
    this.cateId = cateId;
  }

  public String getCoffeeName() {
    return coffeeName;
  }

  public void setCoffeeName(String coffeeName) {
    this.coffeeName = coffeeName;
  }

  public String getCoffeeDisc() {
    return coffeeDisc;
  }

  public void setCoffeeDisc(String coffeeDisc) {
    this.coffeeDisc = coffeeDisc;
  }

  public float getCoffeePrice() {
    return coffeePrice;
  }

  public void setCoffeePrice(float coffeePrice) {
    this.coffeePrice = coffeePrice;
  }

  public float getCoffeeDiscount() {
    return coffeeDiscount;
  }

  public void setCoffeeDiscount(float coffeeDiscount) {
    this.coffeeDiscount = coffeeDiscount;
  }

  public int getCoffeeStock() {
    return coffeeStock;
  }

  public void setCoffeeStock(int coffeeStock) {
    this.coffeeStock = coffeeStock;
  }

  public Date getCoffeeDate() {
    return coffeeDate;
  }

  public void setCoffeeDate(Date coffeeDate) {
    this.coffeeDate = coffeeDate;
  }

  public int getCoffeeSales() {
    return coffeeSales;
  }

  public void setCoffeeSales(int coffeeSales) {
    this.coffeeSales = coffeeSales;
  }

  public String getCoffeePic() {
    return coffeePic;
  }

  public void setCoffeePic(String coffeePic) {
    this.coffeePic = coffeePic;
  }

  public String getCoffeeArea() {
    return coffeeArea;
  }

  public void setCoffeeArea(String coffeeArea) {
    this.coffeeArea = coffeeArea;
  }

  public MultipartFile getCoffeePicFile() {
    return coffeePicFile;
  }

}
