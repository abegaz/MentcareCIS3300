package mentcare.view;

import java.io.IOException;

import javafx.fxml.FXML;
import mentcare.Main;

public class MainViewController {

	private Main main;

	@FXML
	private void goHome() throws IOException{
		main.showMainItems();
	}
