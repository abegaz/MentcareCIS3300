package mentcare.model;

public class MentcareModel {
	private String firstName;
	private String lastName;
	private String StreetAdress;
	private String City;
	private String State;
	private String Age;
	private String Height;
	private String Weight;
	private String ArrivalDate;
	private String ExpectedOuttakeDate;
	private String Treatment;
	private String DoctorNo;
	private String MedicinePrescribed;
	private String MeetingLocation;
	//private String Allergies;
	private String Gender;



public MentcareModel(String firstName, String lastName, String streetAdress, String city, String state, String age,
			String height, String weight, String gender, String arrivalDate, String expectedOuttakeDate, String treatment,
			String doctorno, String medicinePrescribed, String meetingLocation) {
		super();
	//	this.PatientId = PatientId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.StreetAdress = streetAdress;
		this.City = city;
		this.State = state;
		this.Age = age;
		this.Height = height;
		this.Weight = weight;
		this.Gender = gender;
		this.ArrivalDate = arrivalDate;
		this.ExpectedOuttakeDate = expectedOuttakeDate;
		this.Treatment = treatment;
		this.DoctorNo = doctorno;
		this.MedicinePrescribed = medicinePrescribed;
		this.MeetingLocation = meetingLocation;

}

public String getGender() {
	return Gender;
}

public void setGender(String gender) {
	Gender = gender;
}



public String getFirstName() {
	return firstName;
}
public void setFirstName(String firstName) {
	this.firstName = firstName;
}
public String getLastName() {
	return lastName;
}
public void setLastName(String lastName) {
	this.lastName = lastName;
}
public String getStreetAdress() {
	return StreetAdress;
}
public void setStreetAdress(String streetAdress) {
	StreetAdress = streetAdress;
}
public String getCity() {
	return City;
}
public void setCity(String city) {
	City = city;
}
public String getState() {
	return State;
}
public void setState(String state) {
	State = state;
}
public String getAge() {
	return Age;
}
public void setAge(String age) {
	Age = age;
}
public String getHeight() {
	return Height;
}
public void setHeight(String height) {
	Height = height;
}
public String getWeight() {
	return Weight;
}
public void setWeight(String weight) {
	Weight = weight;
}
public String getArrivalDate() {
	return ArrivalDate;
}
public void setArrivalDate(String arrivalDate) {
	ArrivalDate = arrivalDate;
}
public String getExpectedOuttakeDate() {
	return ExpectedOuttakeDate;
}
public void setExpectedOuttakeDate(String expectedOuttakeDate) {
	ExpectedOuttakeDate = expectedOuttakeDate;
}
public String getTreatment() {
	return Treatment;
}
public void setTreatment(String treatment) {
	Treatment = treatment;
}
public String getDoctorNo() {
	return DoctorNo;
}
public void setDoctorNo(String doctorno) {
	DoctorNo = doctorno;
}
public String getMedicinePrescribed() {
	return MedicinePrescribed;
}
public void setMedicinePrescribed(String medicinePrescribed) {
	MedicinePrescribed = medicinePrescribed;
}
public String getMeetingLocation() {
	return MeetingLocation;
}
public void setMeetingLocation(String meetingLocation) {
	MeetingLocation = meetingLocation;

}
}
