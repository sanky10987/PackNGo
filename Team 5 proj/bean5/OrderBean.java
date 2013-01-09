package bean5;


/**
 * pAcK n GO
 * @author Sourabh Mishra
 * @version 1.0
 * 
 */

public class OrderBean {
	
private int orderId;
private int userId;
private int packageId;
private String startDate;
private String endDate;
private String flightName;
private int hotelId;
private int numAdult;
private int numChild;


private int totalAmount;
/**
 * @return the endDate
 */
public String getEndDate() {
	return endDate;
}
/**
 * @param endDate the endDate to set
 */
public void setEndDate(String endDate) {
	this.endDate = endDate;
}
/**
 * @return the flightName
 */
public String getFlightName() {
	return flightName;
}
/**
 * @param flightName the flightName to set
 */
public void setFlightName(String flightName) {
	this.flightName = flightName;
}
/**
 * @return the hotelId
 */
public int getHotelId() {
	return hotelId;
}
/**
 * @param hotelId the hotelId to set
 */
public void setHotelId(int hotelId) {
	this.hotelId = hotelId;
}

/**
 * @return the orderId
 */
public int getOrderId() {
	return orderId;
}
/**
 * @param orderId the orderId to set
 */
public void setOrderId(int orderId) {
	this.orderId = orderId;
}
/**
 * @return the packageId
 */
public int getPackageId() {
	return packageId;
}
/**
 * @param packageId the packageId to set
 */
public void setPackageId(int packageId) {
	this.packageId = packageId;
}
/**
 * @return the startDate
 */
public String getStartDate() {
	return startDate;
}
/**
 * @param startDate the startDate to set
 */
public void setStartDate(String startDate) {
	this.startDate = startDate;
}
/**
 * @return the totalAmount
 */
public int getTotalAmount() {
	return totalAmount;
}
/**
 * @param totalAmount the totalAmount to set
 */
public void setTotalAmount(int totalAmount) {
	this.totalAmount = totalAmount;
}
/**
 * @return the userId
 */
public int getUserId() {
	return userId;
}
/**
 * @param userId the userId to set
 */
public void setUserId(int userId) {
	this.userId = userId;
}
/**
 * @return the numAdult
 */
public int getNumAdult() {
	return numAdult;
}
/**
 * @param numAdult the numAdult to set
 */
public void setNumAdult(int numAdult) {
	this.numAdult = numAdult;
}
/**
 * @return the numChild
 */
public int getNumChild() {
	return numChild;
}
/**
 * @param numChild the numChild to set
 */
public void setNumChild(int numChild) {
	this.numChild = numChild;
}




}
