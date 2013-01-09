package bean5;

import java.util.ArrayList;

public class BeanSearchHotel {
	private String location;
	private String roomType;
	private int rating;
	ArrayList hotelId=new ArrayList();
	ArrayList hotelName=new ArrayList();
	ArrayList description=new ArrayList();
	ArrayList location1=new ArrayList();
	ArrayList rating1=new ArrayList();
	ArrayList roomType1=new ArrayList();
	ArrayList costPerRoom=new ArrayList();
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public String getRoomType() {
		return roomType;
	}
	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}
	public ArrayList getCostPerRoom() {
		return costPerRoom;
	}
	public void setCostPerRoom(ArrayList costPerRoom) {
		this.costPerRoom = costPerRoom;
	}
	public ArrayList getDescription() {
		return description;
	}
	public void setDescription(ArrayList description) {
		this.description = description;
	}

	public ArrayList getHotelName() {
		return hotelName;
	}
	public void setHotelName(ArrayList hotelName) {
		this.hotelName = hotelName;
	}
	public ArrayList getLocation1() {
		return location1;
	}
	public void setLocation1(ArrayList location1) {
		this.location1 = location1;
	}
	public ArrayList getRating1() {
		return rating1;
	}
	public void setRating1(ArrayList rating1) {
		this.rating1 = rating1;
	}
	public ArrayList getRoomType1() {
		return roomType1;
	}
	public void setRoomType1(ArrayList roomType1) {
		this.roomType1 = roomType1;
	}
	public ArrayList getHotelId() {
		return hotelId;
	}
	public void setHotelId(ArrayList hotelId) {
		this.hotelId = hotelId;
	}

}
