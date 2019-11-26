package section2;

import javax.swing.JOptionPane;
import org.jointheleague.graphical.robot.Robot;

public class FourSquare {
	
	Robot rob = new Robot();

	void go() {
		rob.setSpeed(100);

		rob.setPenWidth(5);

		for(int i=0;i<4;i++) {

			rob.setRandomPenColor();
	
			drawSquare();
	
			rob.turn(90);
		}
	}

	
	void drawSquare() {
		JOptionPane.showMessageDialog(null, "yay! you called the drawSquare() method!");
	
			rob.penDown();
			for(int i=0;i<4;i++){
			rob.move(100);
			rob.turn(90);
			}
	
	}

	public static void main(String[] args) {
		new FourSquare().go();
	}

}



