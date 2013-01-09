package bean5;

import java.util.ArrayList;

public class FeedbackBean {

	private int userId;
	private String testimonial;
	private int size;
	private boolean flag;
	
	private ArrayList userIdAL = new ArrayList();
	private ArrayList testimonialAL = new ArrayList();
	
	public String getTestimonial() {
		return testimonial;
	}
	public void setTestimonial(String testimonial) {
		this.testimonial = testimonial;
	}
	public ArrayList getTestimonialAL() {
		return testimonialAL;
	}
	public void setTestimonialAL(ArrayList testimonialAL) {
		this.testimonialAL = testimonialAL;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public ArrayList getUserIdAL() {
		return userIdAL;
	}
	public void setUserIdAL(ArrayList userIdAL) {
		this.userIdAL = userIdAL;
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
