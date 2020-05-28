package bean;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;


  public class Exam implements Cloneable{
	public int topic_id = 0;
	public int currentQuestion = 0;
	public Map<Integer,Integer> selections=new LinkedHashMap<Integer,Integer>();
	
	public ArrayList<QuizQuestion> questionList = new ArrayList<QuizQuestion>(10);
	
	public Exam createClone(){
		//clone logic 
		return null;
	}
		
	public Exam(Integer topic_id)
	{   
		this.topic_id =  topic_id;
	}
	
	public void setQuestion(int i) {
		int number=i;
		String options[]=new String[4];
	    
	    Connection con=(Connection) ConnectionProvider.getConnection();		
		ResultSet set=null;
		try
		{
		 Statement st=(Statement) con.createStatement();
		 String sql = "Select * from  question where topic_id="+topic_id+" order by ques_id LIMIT " + number + ",1";
		 System.out.println(sql);
		 set=st.executeQuery(sql);
		 if(set.next())
		 { 
			 	QuizQuestion q=new QuizQuestion();
				q.setQuestionNumber(number);
				q.setQuestion(set.getString("Question"));
				q.setCorrectOptionIndex(set.getInt("correct_ans"));
				options[0] = set.getString("option1");
				options[1] = set.getString("option2");
				options[2] = set.getString("option3");
				options[3] = set.getString("option4");
				q.setQuestionOptions(options);
				questionList.add(number,q);
		 }
		 
		}catch(SQLException sqe){System.out.println("Error : While Fetching records from database" + sqe);}
		try
		{
		 con.close();	
		}catch(SQLException se){System.out.println("Error : While Closing Connection");
		}
	}
	
	public ArrayList<QuizQuestion> getQuestionList(){
		return this.questionList;
	}
	
	public int getCurrentQuestion(){return currentQuestion;}
	
	public Map<Integer,Integer> getSelections(){
		return this.selections;
	}
	
	 public void setSelectedOption(int qnumber, int value) {
		 if(selections.get(qnumber)==null) {
			 selections.put(qnumber,value);
		 }
		 else {
			 selections.replace(qnumber, value);
		 }
	 }
	
	public ResultList calculateResult(Exam exam){
		
		Map<Integer,Integer> userSelectionsMap=exam.selections;		
		List<Integer> userSelectionsList=new ArrayList<Integer>(10);
		for (Map.Entry<Integer, Integer> entry :userSelectionsMap.entrySet()) {
			userSelectionsList.add(entry.getValue());
		}
		List<QuizQuestion> questionList=exam.questionList;
		List<Integer> correctAnswersList=new ArrayList<Integer>(10);
		for(QuizQuestion question: questionList){
			correctAnswersList.add(question.getCorrectOptionIndex());
		}
		
		/*for(int i=0;i<selections.size();i++){
		System.out.println(userSelectionsList.get(i)+" --- "+correctAnswersList.get(i));
		if((userSelectionsList.get(i))==correctAnswersList.get(i)){
			totalCorrect++;
		}
	}
	
	System.out.println("You Got "+totalCorrect+" Correct");	
	return totalCorrect;*/
		
		ResultList resultList = new ResultList();
		resultList.setUserSelections(userSelectionsList);
		resultList.setCorrectAnswers(correctAnswersList);
		
		return resultList;
	}

  }
  
  

  