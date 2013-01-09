package bean5;

import java.util.ArrayList;

public class PackageBean {

	
		private int packageId;
		private String packageName;
		private String destination;
		private String description;
		private String flightName;
		private int hotelId;
		private int numOfDays;
		private String holidayType;
		private int costPerPerson;
		
		private ArrayList packageIdAL = new ArrayList();
		private ArrayList packageNameAL = new ArrayList();
		private ArrayList destinationAL = new ArrayList();
		private ArrayList descriptionAL = new ArrayList();
		private ArrayList hotelIdAL = new ArrayList();
		private ArrayList numOfDaysAL = new ArrayList();
		private ArrayList holidayTypeAL = new ArrayList();
		private ArrayList costPerPersonAL = new ArrayList();
		private boolean flag;
		private int size;
		
		public int getCostPerPerson() {
			return costPerPerson;
		}
		public void setCostPerPerson(int costPerPerson) {
			this.costPerPerson = costPerPerson;
		}
		public ArrayList getCostPerPersonAL() {
			return costPerPersonAL;
		}
		public void setCostPerPersonAL(ArrayList costPerPersonAL) {
			this.costPerPersonAL = costPerPersonAL;
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
		public String getDestination() {
			return destination;
		}
		public void setDestination(String destination) {
			this.destination = destination;
		}
		public ArrayList getDestinationAL() {
			return destinationAL;
		}
		public void setDestinationAL(ArrayList destinationAL) {
			this.destinationAL = destinationAL;
		}
		public boolean isFlag() {
			return flag;
		}
		public void setFlag(boolean flag) {
			this.flag = flag;
		}
		public String getFlightName() {
			return flightName;
		}
		public void setFlightName(String flightName) {
			this.flightName = flightName;
		}
		public String getHolidayType() {
			return holidayType;
		}
		public void setHolidayType(String holidayType) {
			this.holidayType = holidayType;
		}
		public ArrayList getHolidayTypeAL() {
			return holidayTypeAL;
		}
		public void setHolidayTypeAL(ArrayList holidayTypeAL) {
			this.holidayTypeAL = holidayTypeAL;
		}
		public int getHotelId() {
			return hotelId;
		}
		public void setHotelId(int hotelId) {
			this.hotelId = hotelId;
		}
		public ArrayList getHotelIdAL() {
			return hotelIdAL;
		}
		public void setHotelIdAL(ArrayList hotelIdAL) {
			this.hotelIdAL = hotelIdAL;
		}
		public int getNumOfDays() {
			return numOfDays;
		}
		public void setNumOfDays(int numOfDays) {
			this.numOfDays = numOfDays;
		}
		public ArrayList getNumOfDaysAL() {
			return numOfDaysAL;
		}
		public void setNumOfDaysAL(ArrayList numOfDaysAL) {
			this.numOfDaysAL = numOfDaysAL;
		}
		public int getPackageId() {
			return packageId;
		}
		public void setPackageId(int packageId) {
			this.packageId = packageId;
		}
		public ArrayList getPackageIdAL() {
			return packageIdAL;
		}
		public void setPackageIdAL(ArrayList packageIdAL) {
			this.packageIdAL = packageIdAL;
		}
		public String getPackageName() {
			return packageName;
		}
		public void setPackageName(String packageName) {
			this.packageName = packageName;
		}
		public ArrayList getPackageNameAL() {
			return packageNameAL;
		}
		public void setPackageNameAL(ArrayList packageNameAL) {
			this.packageNameAL = packageNameAL;
		}
		public int getSize() {
			return size;
		}
		public void setSize(int size) {
			this.size = size;
		}
		
		
	
	}
