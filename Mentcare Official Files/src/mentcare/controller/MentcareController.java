package mentcare.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import mentcare.model.MentcareModel;
import application.DatabaseConfig;
import javafx.fxml.FXML;
import javafx.scene.control.TextField;
//import MentcareModel.Java;

public class MentcareController {
	//These instance variables are used to create new poll objects
    @FXML private TextField Fname;
    @FXML private TextField Lname;
    @FXML private TextField Astreet;
    @FXML private TextField Acity;
    @FXML private TextField Astate;
    @FXML private TextField Azipcode;
    @FXML private TextField Age;
    @FXML private TextField Height;
    @FXML private TextField Gender;
    @FXML private TextField Weight;
    @FXML private TextField Adate;
    @FXML private TextField Edate;
    @FXML private TextField Treatment;
    @FXML private TextField Doctor;
    @FXML private TextField Mprescribed;
    @FXML private TextField Mlocation;
   // @FXML private Button Register;
   // @FXML private TextField Allergies; // Need to update, changed to TEXTBOXES

    public void AddNew()
    {


		  System.out.println("Hello Dr. A");
		//  int age =0;
		 // if(Age.getText()!="")
		//age= Integer.parseInt(Age.getText());
      MentcareModel test = new MentcareModel(
    		                                Fname.getText(),
    		  								Lname.getText(),
    		  								Astreet.getText(),
    		  								Acity.getText(),
    		  								Astate.getText(),
    		  								Age.getText(),
    		  								Height.getText(),
    		  								Weight.getText(),
    		  								Gender.getText(),
    		  								Adate.getText(),
    		  								Edate.getText(),
    		  								Treatment.getText(),
    		  								Doctor.getText(),
    		  								Mprescribed.getText(),
    		  								Mlocation.getText());

      System.out.println(test.toString());

      String query = "insert into patient  " + "(firstName, lastName, StreetAddress, City, State, Age, Height, Weight, ArrivalDate, ExpectedOuttakeDate, Treatment, DoctorNo, MedicinePrescribed, MeetingLocation, Gender)"
				+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

		try (Connection conn = DatabaseConfig.getConnection();
				PreparedStatement insertstuff = conn.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);) {

			insertstuff.setString(1, test.getFirstName());
			insertstuff.setString(2, test.getLastName());
			insertstuff.setString(3, test.getStreetAdress());
			insertstuff.setString(4, test.getCity());
			insertstuff.setString(5, test.getState());
			insertstuff.setString(6, test.getAge());
			insertstuff.setString(7, test.getHeight());
			insertstuff.setString(8, test.getWeight());
			insertstuff.setString(9, test.getArrivalDate());
			insertstuff.setString(10, test.getExpectedOuttakeDate());
			insertstuff.setString(11, test.getTreatment());
			insertstuff.setString(12, test.getDoctorNo());
			insertstuff.setString(13, test.getMedicinePrescribed());
			insertstuff.setString(14, test.getMeetingLocation());
			insertstuff.setString(15, test.getGender());
			// get the number of return rows
			int affectedRow = insertstuff.executeUpdate();

			if (affectedRow == 1) {
				System.out.println("Operation is successful");
				Fname.setText("");
				Lname.setText("");
				Astreet.setText("");
				Acity.setText("");
				Astate.setText("");
				Age.setText("");
				Height.setText("");
				Gender.setText("");
				Weight.setText("");
				Adate.setText("");
				Edate.setText("");
				Treatment.setText("");
				Doctor.setText("");
				Mprescribed.setText("");
				Mlocation.setText("");

			}

		} catch (Exception e) {
			System.out.println("Status: operation failed due to "+e);

		}
    }
}


