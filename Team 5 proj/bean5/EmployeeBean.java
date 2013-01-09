package bean5;

import java.util.ArrayList;

public class EmployeeBean {
	
	private int employeeId;
	private String employeeName1;
	private String employeeName2;
	private String employeeRole;
	private long contactNum;
	private String email;
	private int complaintId;
	private boolean flag;
	private int size;
	
	
	private ArrayList employeeIdAL = new ArrayList();
	private ArrayList employeeName1AL = new ArrayList();
	private ArrayList employeeName2AL = new ArrayList();
	private ArrayList employeeRoleAL = new ArrayList();
	private ArrayList contactNumAL = new ArrayList();
	private ArrayList emailAL = new ArrayList();
	private ArrayList complaintIdAL = new ArrayList();
	
//	Getter and setter methodss
	public int getComplaintId() {
		return complaintId;
	}
	public void setComplaintId(int complaintId) {
		this.complaintId = complaintId;
	}
	public ArrayList getComplaintIdAL() {
		return complaintIdAL;
	}
	public void setComplaintIdAL(ArrayList complaintIdAL) {
		this.complaintIdAL = complaintIdAL;
	}
	public long getContactNum() {
		return contactNum;
	}
	public void setContactNum(long contactNum) {
		this.contactNum = contactNum;
	}
	public ArrayList getContactNumAL() {
		return contactNumAL;
	}
	public void setContactNumAL(ArrayList contactNumAL) {
		this.contactNumAL = contactNumAL;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public ArrayList getEmailAL() {
		return emailAL;
	}
	public void setEmailAL(ArrayList emailAL) {
		this.emailAL = emailAL;
	}
	public int getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}
	public ArrayList getEmployeeIdAL() {
		return employeeIdAL;
	}
	public void setEmployeeIdAL(ArrayList employeeIdAL) {
		this.employeeIdAL = employeeIdAL;
	}
	public String getEmployeeName1() {
		return employeeName1;
	}
	public void setEmployeeName1(String employeeName1) {
		this.employeeName1 = employeeName1;
	}
	public ArrayList getEmployeeName1AL() {
		return employeeName1AL;
	}
	public void setEmployeeName1AL(ArrayList employeeName1AL) {
		this.employeeName1AL = employeeName1AL;
	}
	public String getEmployeeName2() {
		return employeeName2;
	}
	public void setEmployeeName2(String employeeName2) {
		this.employeeName2 = employeeName2;
	}
	public ArrayList getEmployeeName2AL() {
		return employeeName2AL;
	}
	public void setEmployeeName2AL(ArrayList employeeName2AL) {
		this.employeeName2AL = employeeName2AL;
	}
	public String getEmployeeRole() {
		return employeeRole;
	}
	public void setEmployeeRole(String employeeRole) {
		this.employeeRole = employeeRole;
	}
	public ArrayList getEmployeeRoleAL() {
		return employeeRoleAL;
	}
	public void setEmployeeRoleAL(ArrayList employeeRoleAL) {
		this.employeeRoleAL = employeeRoleAL;
	}
	public boolean isFlag() {
		return flag;
	}
	public void setFlag(boolean flag) {
		this.flag = flag;
	}
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	
	
	
}