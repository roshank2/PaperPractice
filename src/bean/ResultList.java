/********************* Roshan Kumar ***********************/

package bean;

import java.util.List;

public class ResultList {
	private List<Integer> userSelections;
	private List<Integer> correctAnswers;

	public List<Integer> getUserSelections() {
		return userSelections;
	}

	public void setUserSelections(List<Integer> userSelections) {
		this.userSelections = userSelections;
	}

	public List<Integer> getCorrectAnswers() {
		return correctAnswers;
	}

	public void setCorrectAnswers(List<Integer> correctAnswers) {
		this.correctAnswers = correctAnswers;
	}
}
