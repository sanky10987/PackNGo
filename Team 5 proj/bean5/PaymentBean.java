package bean5;

import java.util.ArrayList;

public class PaymentBean {
	private int orderId;

	private String paymentMode;
	private String paymentDetails;
	private String paymentStatus;
	private String orderStatus;
	private String deliveryDate;
	private int size;
	private boolean flag;
	
	private ArrayList orderIdAL = new ArrayList();
	private ArrayList paymentDetailsAL = new ArrayList();
	private ArrayList paymentStatusAL = new ArrayList();
	private ArrayList orderStatusAL = new ArrayList();
	private ArrayList deliveryDateAL = new ArrayList();
	private ArrayList paymentModeAL = new ArrayList();
	/**
	 * @return the deliveryDate
	 */
	public String getDeliveryDate() {
		return deliveryDate;
	}
	/**
	 * @param deliveryDate the deliveryDate to set
	 */
	public void setDeliveryDate(String deliveryDate) {
		this.deliveryDate = deliveryDate;
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
	 * @return the orderStatus
	 */
	public String getOrderStatus() {
		return orderStatus;
	}
	/**
	 * @param orderStatus the orderStatus to set
	 */
	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}
	/**
	 * @return the paymentDetails
	 */
	public String getPaymentDetails() {
		return paymentDetails;
	}
	/**
	 * @param paymentDetails the paymentDetails to set
	 */
	public void setPaymentDetails(String paymentDetails) {
		this.paymentDetails = paymentDetails;
	}
	/**
	 * @return the paymentMode
	 */
	public String getPaymentMode() {
		return paymentMode;
	}
	/**
	 * @param paymentMode the paymentMode to set
	 */
	public void setPaymentMode(String paymentMode) {
		this.paymentMode = paymentMode;
	}
	/**
	 * @return the paymentStatus
	 */
	public String getPaymentStatus() {
		return paymentStatus;
	}
	/**
	 * @param paymentStatus the paymentStatus to set
	 */
	public void setPaymentStatus(String paymentStatus) {
		this.paymentStatus = paymentStatus;
	}
	public ArrayList getDeliveryDateAL() {
		return deliveryDateAL;
	}
	public void setDeliveryDateAL(ArrayList deliveryDateAL) {
		this.deliveryDateAL = deliveryDateAL;
	}
	public boolean isFlag() {
		return flag;
	}
	public void setFlag(boolean flag) {
		this.flag = flag;
	}
	public ArrayList getOrderIdAL() {
		return orderIdAL;
	}
	public void setOrderIdAL(ArrayList orderIdAL) {
		this.orderIdAL = orderIdAL;
	}
	public ArrayList getOrderStatusAL() {
		return orderStatusAL;
	}
	public void setOrderStatusAL(ArrayList orderStatusAL) {
		this.orderStatusAL = orderStatusAL;
	}
	public ArrayList getPaymentDetailsAL() {
		return paymentDetailsAL;
	}
	public void setPaymentDetailsAL(ArrayList paymentDetailsAL) {
		this.paymentDetailsAL = paymentDetailsAL;
	}
	public ArrayList getPaymentModeAL() {
		return paymentModeAL;
	}
	public void setPaymentModeAL(ArrayList paymentModeAL) {
		this.paymentModeAL = paymentModeAL;
	}
	public ArrayList getPaymentStatusAL() {
		return paymentStatusAL;
	}
	public void setPaymentStatusAL(ArrayList paymentStatusAL) {
		this.paymentStatusAL = paymentStatusAL;
	}
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	
	


}
