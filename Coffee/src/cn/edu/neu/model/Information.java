package cn.edu.neu.model;

import java.util.Date;

public class Information {
	  private int informationId;
	  private String informationName;
	  private String informationPic;
	  private String informationContent;
	  private Date informationDate;
	public Date getInformationDate() {
		return informationDate;
	}
	public void setInformationDate(Date informationDate) {
		this.informationDate = informationDate;
	}
	public int getInformationId() {
		return informationId;
	}
	public void setInformationId(int informationId) {
		this.informationId = informationId;
	}
	public String getInformationName() {
		return informationName;
	}
	public void setInformationName(String informationName) {
		this.informationName = informationName;
	}
	public String getInformationPic() {
		return informationPic;
	}
	public void setInformationPic(String informationPic) {
		this.informationPic = informationPic;
	}
	public String getInformationContent() {
		return informationContent;
	}
	public void setInformationContent(String informationContent) {
		this.informationContent = informationContent;
	}
	public Information() {
	    super();
	    // TODO Auto-generated constructor stub
	  }
	 public Information(int informationId, String informationName,  String informationPic, String informationContent) {
		    super();
		    this.informationId=informationId;
		    this.informationName=informationName;
		    this.informationPic=informationPic;
		    this.informationContent=informationContent;
		  }
}
