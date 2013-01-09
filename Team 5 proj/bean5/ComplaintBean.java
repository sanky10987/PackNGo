package bean5;

import java.util.ArrayList;

public class ComplaintBean {
	
	private int complaintId;
	private String complaintType;
	private String description;
	private int userId;
	private int size;
	private boolean flag;
	
	private ArrayList complaintIdAL = new ArrayList();
	private ArrayList complaintTypeAL = new ArrayList();
	private ArrayList descriptionAL = new ArrayList();
	private ArrayList userIdAL = new ArrayList();
	
	
	public ArrayList getComplaintIdAL() {
		return complaintIdAL;
	}
	public void setComplaintIdAL(ArrayList complaintIdAL) {
		this.complaintIdAL = complaintIdAL;
	}
	public ArrayList getComplaintTypeAL() {
		return complaintTypeAL;
	}
	public void setComplaintTypeAL(ArrayList complaintTypeAL) {
		this.complaintTypeAL = complaintTypeAL;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public ArrayList getDescriptionAL() {
		return descriptionAL;
	}
	public void setDescriptionAL(ArrayList descriptionAL) {
		this.descriptionAL = descriptionAL;
	}
	public ArrayList getUserIdAL() {
		return userIdAL;
	}
	public void setUserIdAL(ArrayList userIdAL) {
		this.userIdAL = userIdAL;
	}
	public int getComplaintId() {
		return complaintId;
	}
	public void setComplaintId(int complaintId) {
		this.complaintId = complaintId;
	}
	public String getComplaintType() {
		return complaintType;
	}
	public void setComplaintType(String complaintType) {
		this.complaintType = complaintType;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	public boolean isFlag() {
		return flag;
	}
	public void setFlag(boolean flag) {
		this.flag = flag;
	}
	
}