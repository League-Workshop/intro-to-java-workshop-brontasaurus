package section4;

import javax.swing.JOptionPane;

public class QuizGame {
	
	public static void main(String[] args) {
		
		// 1.  Create a variable to hold the user's score 
		int score = 0;
		// 2.  Ask the user a question 
		String name = JOptionPane.showInputDialog("what is your name?");
		// 3.  Use an if statement to check if their answer is correct
		if(name.equalsIgnoreCase("arthur king of the britians")) {
		// 4.  if the user's answer was correct, add one to their score 
		score++;
		}
		// 5.  Create more questions by repeating steps 1, 2, and 3 below. 
		name = JOptionPane.showInputDialog("what is your quest?");
		
		if(name.equalsIgnoreCase("I seek the holy grail")) {
			score++;
		}
		name = JOptionPane.showInputDialog("what is the maximum velosity of an unlaiden swallow?");
		
		if(name.equalsIgnoreCase("which one? African or european swallow?")) {
			score++;
		}
		
name = JOptionPane.showInputDialog("I dont know that! AHHHH!");
		
			score++;
		
		// 6.  After all the questions have been asked, print the user's score 
		System.out.println(score);
	}
}
