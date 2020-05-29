/********************* Roshan Kumar ***********************/

package controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Statement;

import bean.ConnectionProvider;
import bean.User;

public class adminController {

	static Connection con = ConnectionProvider.getConnection();

	public static int processTest(String tname, Integer section) {
		int status = 0;
		try {
			PreparedStatement ps = con.prepareStatement("insert into topic values(?,?,?)");
			ps.setString(1, null);
			ps.setString(2, tname);
			ps.setInt(3, section);
			// System.out.println("Yes");

			status = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			// System.out.println("No");
		}
		return status;
	}

	public static int getTopicId(String topic_name) {
		int topic_id = 0;
		try {
			Statement st = (Statement) con.createStatement();
			String sql = "Select *from  topic where topic_name=\"" + topic_name + "\"";
			ResultSet set = null;
			System.out.println(sql);
			set = st.executeQuery(sql);
			while (set.next()) {
				topic_id = set.getInt("topic_id");
			}

		} catch (SQLException sqe) {
			System.out.println("Error : While Fetching records from database" + sqe);
		}
		System.out.println(topic_id);
		return topic_id;

	}

	public static int deleteTopic(String topic_name) {
		int topic_id = getTopicId(topic_name);
		int status = 0;
		try {
			Statement st = (Statement) con.createStatement();
			String sql = "delete from question where topic_id=" + topic_id;
			System.out.println(sql);
			status = st.executeUpdate(sql);
			String sql2 = "delete from topic where topic_id=" + topic_id;
			System.out.println(sql2);
			status = st.executeUpdate(sql2);

		} catch (SQLException sqe) {
			System.out.println("Error : While Fetching records from database" + sqe);
		}
		System.out.println(topic_id);
		return status;

	}

	public static int addQuestion(String question, String option1, String option2, String option3, String option4,
			int answer, String solution, int tid) {
		int status = 0;
		try {
			Connection con = ConnectionProvider.getConnection();

			PreparedStatement ps = con.prepareStatement("insert into question values(?,?,?,?,?,?,?,?,?)");
			ps.setString(1, null);
			ps.setString(2, question);
			ps.setString(3, option1);
			ps.setString(4, option2);
			ps.setString(5, option3);
			ps.setString(6, option4);
			ps.setInt(7, answer);
			ps.setString(8, solution);
			ps.setInt(9, tid);

			status = ps.executeUpdate();
			System.out.println("Yes");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("NO");
		}
		return status;
	}

	public static int storeFeedback(String email, String feedback) {
		int status = 0;
		java.sql.Timestamp timeStamp = new java.sql.Timestamp(new java.util.Date().getTime());
		if (User.isValid(email)) {
			try {
				PreparedStatement ps = con.prepareStatement("insert into feedback values(?,?,?,?)");
				ps.setString(1, null);
				ps.setString(2, email);
				ps.setString(3, feedback);
				ps.setTimestamp(4, timeStamp);
				// System.out.println("Yes");

				status = ps.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
				// System.out.println("No");
			}
		}
		return status;
	}

	public static int updateQuestion(int qid, String question, String option1, String option2, String option3,
			String option4, int answer, String solution, int tid) {
		int status = 0;
		try {
			Connection con = ConnectionProvider.getConnection();

			PreparedStatement ps = con.prepareStatement("Update question set ques_id=?, question=?, "
					+ "option1=?, option2=?, option3=?, option4=?, correct_ans=?, solution=?, topic_id=? where ques_id = "
					+ qid);
			ps.setInt(1, qid);
			ps.setString(2, question);
			ps.setString(3, option1);
			ps.setString(4, option2);
			ps.setString(5, option3);
			ps.setString(6, option4);
			ps.setInt(7, answer);
			ps.setString(8, solution);
			ps.setInt(9, tid);

			status = ps.executeUpdate();
			System.out.println("Yes");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("NO");
		}
		return status;
	}

}