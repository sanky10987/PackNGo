package facade5;

import bean5.Bean_Register;
import bean5.Beancomplaint;
import bean5.beanforgotp;
import bean5.checkuname;
import bean5.retrpass;
import bean5.userlogin;
import dbclass5.checkundb;
import dbclass5.compldb;
import dbclass5.dbforgpass;
import dbclass5.dbgetpass;
import dbclass5.dbset;
import dbclass5.logindb;
import dbclass5.setdb;
import dbclass5.updatedb;
import dbclass5.user_reg_db;
import bean5.PaymentBean;
import bean5.FlightSearchBean;
import bean5.AddFlightsBean;
import bean5.OrderBean;
import bean5.PackageSearchBean;
import dbclass5.AddFlightDb;
import dbclass5.OrderDb;
import dbclass5.RegisterPaymentDb;
import dbclass5.FlightSearchDb;
import dbclass5.PackageSearchDb;
import dbclass5.DbBookingStatus;
import dbclass5.DbFeedback;
import dbclass5.DbHotel;
import dbclass5.DbOrderHotel;
import dbclass5.RegisterPaymentDb;
import bean5.BeanSearchHotel;
import bean5.Bean_Register;
import bean5.Bean_feedback;
import bean5.OrderHotelBean;
import bean5.HotelBean;
import bean5.PaymentBean;
import bean5.ComplaintBean;
import bean5.EmployeeBean;
import bean5.FeedbackBean;
import bean5.FlightBean;
import bean5.HotelBean;
import bean5.LoginInternalBean;
import bean5.PaymentBean;
import dbclass5.PaymentDb;
import bean5.PackageBean;
import dbclass5.ComplaintDb;
import dbclass5.DbHotel;
import dbclass5.EmployeeDb;
import dbclass5.FeedbackDb;
import dbclass5.FlightDb;
import dbclass5.LoginInternalDb;
import dbclass5.PackageDb;

public class FacadeMain {

	public void showFlightsdep(FlightSearchBean fs)
	{
		FlightSearchDb fb = new FlightSearchDb();
		fb.setParam(fs);
		fb.getFlightDetailsdep(fs);
	}
	
	
	public void addFlight(AddFlightsBean ob)
	{
		AddFlightDb db = new AddFlightDb();
		db.setParam(ob);
		db.insertData();
		db.insertdata1();
	}
	
	public void OrderEntry(OrderBean ob)
	{
		OrderDb fo = new OrderDb();
		fo.setParam(ob);
		fo.insertOrder(ob);
		fo.getOrderId(ob);
	}
	public void OrderEntryFlights(OrderBean ob)
	{
		OrderDb fo = new OrderDb();
		fo.setParam(ob);
		fo.insertOrderFlight(ob);
		fo.getOrderId(ob);
	}

	public void searchPackage(PackageSearchBean pb)
	{
		PackageSearchDb ps = new PackageSearchDb();
		ps.setParam(pb);
		ps.showPackageType(pb);
	}
	
	public void checkdb(checkuname bean)
	{
		checkundb checkun=new checkundb();
		checkun.check(bean);
	}
	
	public void complaintdb(Beancomplaint bean,userlogin beanL)
	{
		compldb db=new compldb();
		db.complain(bean,beanL);
	}
	
	public void logindb(userlogin bean) 
	{
		logindb log=new logindb();
		log.login(bean);
	}
	
	public void regdb(Bean_Register Regbean){
		user_reg_db user_reg=new user_reg_db();
		user_reg.user(Regbean);
		user_reg.user_un(Regbean);
		user_reg.insertui(Regbean);
	}
	
	public void forgot(beanforgotp bean)
	{
		dbforgpass forg=new dbforgpass();
		forg.pass(bean);
	}
	
	public void getpassw(retrpass bean)
	{
		dbgetpass getpassw=new dbgetpass();
		getpassw.pass(bean);
		getpassw.get(bean);
	}
	
	public void fupdate(Bean_Register bean)
	{
		updatedb db=new updatedb();
		db.update(bean);
	}
	
	public void setprofile(Bean_Register bean, userlogin beanL)
	{
		setdb set=new setdb();
		set.passbeans(bean,beanL);
	}

	public void setuser(Bean_Register beanset,userlogin beanL)
	{
		dbset db=new dbset();
		db.set(beanset,beanL);
	}
	
	public void bookingstatus(PaymentBean hb,OrderHotelBean ob,int n)
	{
		
			DbBookingStatus dbo=new DbBookingStatus();
			try {
				dbo.DbBookedHistory(hb,ob,n);
			} catch (Exception e) {
				System.out.println(e);
			}
	}
	public void HotelCatch(HotelBean hb)
	{
		
			DbHotel dbh=new DbHotel(hb);
			try {System.out.println("hi");
				dbh.InsertDbHotel();
			} catch (Exception e) {
				System.out.println(e);
			}
	}
	public void bookHotel(HotelBean hb)
	{
		DbHotel dbh=new DbHotel();
		try {
			dbh.bookkHotel(hb);
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
	public void OrderCatch(OrderHotelBean b){
		DbOrderHotel dbo=new DbOrderHotel(b);
		try{
			dbo.InsertDbHotel();
		}
		catch (Exception e) {
			System.out.println(e);
		}
	}

	public void SearchHotel(BeanSearchHotel hb)
	{
		
			DbHotel dbh=new DbHotel(hb);
			try {
				dbh.DbSearchHotel(hb);
			} catch (Exception e) {
				System.out.println(e);
			}
	}
	public void UserFeedback(Bean_feedback fb)
	{
		
		DbFeedback dbh=new DbFeedback(fb);
			try {
				dbh.DbInsertFeedback();
			} catch (Exception e) {
				System.out.println(e);
			}
	}
	public void PaymentEntry(PaymentBean pb)
    	{
        RegisterPaymentDb rp = new RegisterPaymentDb();
        rp.setparam(pb);
        rp.InsertPayment(pb);
    	}
	public void hotels(HotelBean hb)
    	{
		DbHotel dh = new DbHotel();
        try{
        	dh.viewHotels(hb);
        }
	catch (Exception e) {
		System.out.println(e);
	}
    }
	
	public void InternalLoginCatch(LoginInternalBean lib)
	{
			LoginInternalDb obj =new LoginInternalDb();
			obj.ValidateEmployee(lib);		
	}
	
	public EmployeeBean EmployeeDelete(EmployeeBean bean){
		EmployeeDb db = new EmployeeDb();
		db.DeleteEmployeeDb(bean);
		return bean;
	}
	public EmployeeBean EmployeeEdit(EmployeeBean bean){
		System.out.println(bean.getEmployeeId());
		EmployeeDb db = new EmployeeDb();
		db.EditEmployeeDb(bean);
		return bean;
	}
	
	public void viewEmployee(EmployeeBean bean)
	{
		EmployeeDb db = new EmployeeDb();
		db.ViewEmployeeDb(bean);
	}
	public PackageBean PackageCatch(PackageBean bean)
	{
			PackageDb d= new PackageDb();
			d.AddPackageDb(bean);
			System.out.println(bean.getPackageId());
			System.out.println(bean.getDestination());
			System.out.println(bean.getCostPerPerson());
			return bean;
	}
	
	public void EmployeeCatch(EmployeeBean bean)
	{
			EmployeeDb db = new EmployeeDb();
			db.AddEmployeeDb(bean);
			System.out.println(bean.getEmployeeName1());
			
	}
	public void AssignComplaint(EmployeeBean bean){
		EmployeeDb db = new EmployeeDb();
		db.AssignComplaintEmployeeDb(bean);
	}
	
	public void viewPackage(PackageBean bean){
		System.out.println(bean.isFlag());
		PackageDb obj = new PackageDb();
		obj.ViewPackageDb(bean);
		
	}
	
	public void FlightCatch(FlightBean bean)
	{
		System.out.println(bean.getFlightName());
			FlightDb d= new FlightDb();
			d.insertData(bean);
			d.insertDate(bean);
			System.out.println(bean.getFlightName());
	}
	public void FlightDelete(FlightBean bean) {
		System.out.println(bean.getFlightName());
		FlightDb db = new FlightDb();
		db.DeleteFlightDb(bean);
	}
	public void viewFlight(FlightBean bean){
		System.out.println(bean.isFlagFlight());
		FlightDb obj = new FlightDb();
		obj.ViewFlightDb(bean);
	}
	
	
	public void viewComplaint(ComplaintBean bean){
		ComplaintDb db = new ComplaintDb();
		db.ViewComplaintDb(bean);
		
	}
	
	public void viewPayment(PaymentBean bean){
		PaymentDb db = new PaymentDb();
		db.ViewPaymentDb(bean);
	}
	public void PaymentEdit(PaymentBean bean){
		PaymentDb db = new PaymentDb();
		db.EditPaymentDb(bean);
	}
	
	public void viewTestimonial(FeedbackBean bean){
		FeedbackDb db = new FeedbackDb();
		db.ViewFeedbackDb(bean);
	}
	
	public void HotelDelete(HotelBean bean){
		System.out.println(bean.getHotelId());
		DbHotel db = new DbHotel();
		db.DeleteHotelDb(bean);
	}
	
	public void HotelEdit(HotelBean bean){
		DbHotel db = new DbHotel();
		System.out.println(bean.getHotelId());
		db.EditHotelDb(bean);	
	}
	public void HotelEdited(HotelBean bean) {
		DbHotel db = new DbHotel();
		System.out.println(bean.getHotelId());
		db.EditedHotelDb(bean);	
	}
	public void PackageDelete(PackageBean bean) {
		System.out.println(bean.getPackageId());
		PackageDb db = new PackageDb();
		db.DeletePackageDb(bean);
		
	}
	public void EmployeeEditCatch(EmployeeBean bean) {
		EmployeeDb db = new EmployeeDb();
		db.EditedEmployeeDb(bean);
		System.out.println(bean.getEmployeeName1());
		System.out.println(bean.getEmployeeName2());
		System.out.println(bean.getEmployeeRole());
		System.out.println(bean.getContactNum());
		System.out.println(bean.getEmail());
		System.out.println(bean.getComplaintId());
		
	}
	public void PackageEdited(PackageBean bean) {
		PackageDb db = new PackageDb();
		System.out.println(bean.getPackageId());
		db.EditedPackageDb(bean);	
	}
	public void PackageEdit(PackageBean bean) {
		PackageDb db = new PackageDb();
		System.out.println(bean.getPackageId());
		db.EditPackageDb(bean);	
	}




}
