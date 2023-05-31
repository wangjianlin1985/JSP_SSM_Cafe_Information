package cn.edu.neu.model;

public class Collection {
	private int userId;
	private int collectionId;
	private int typId;
	public Collection() {
		super();
		// TODO Auto-generated constructor stub
	}
		
	@Override
	public String toString() {
		return "Collection [userId=" + userId + ", collectionId=" + collectionId + ", typId=" + typId + "]";
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getCollectionId() {
		return collectionId;
	}
	public void setCollectionId(int collectionId) {
		this.collectionId = collectionId;
	}
	public int getTypId() {
		return typId;
	}
	public void setTypId(int typId) {
		this.typId = typId;
	}
}
