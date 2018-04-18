package mentcare.view;

import mentcare.Main;

import java.io.IOException;
import javafx.fxml.FXML;

public class MainItemsController {

	private Main main;

	@FXML
	private void goEnter1() throws IOException {
		main.showEnter1Scene();

	}

}
