package section3;

import javax.swing.JOptionPane;

import com.sun.speech.freetts.Voice;
import com.sun.speech.freetts.VoiceManager;

public class SpeakAndSpell {

	public static void main(String[] args) {
		// 1. Use the speak method to say the word. "e.g. spell mandlebrot"
speak("spell mandlebrot");
		// 2. Catch the user's answer in a String
String name = JOptionPane.showInputDialog("type here");
		// 3. If the user spelled the word correctly, speak "correct"
if(name.equalsIgnoreCase("mandlebrot")) {
		// 4. Otherwise say "wrong"
	speak("correct");
}
else {
	speak("wrong");
}

		// 5. repeat the process for other words
speak("spell des oiseaux");
// 2. Catch the user's answer in a String
name = JOptionPane.showInputDialog("type here");
// 3. If the user spelled the word correctly, speak "correct"
if(name.equalsIgnoreCase("des oiseaux")) {
// 4. Otherwise say "wrong"
speak("correct");
}
else {
speak("wrong");
}

	speak("spell gurgle");
	// 2. Catch the user's answer in a String
	name = JOptionPane.showInputDialog("type here");
	// 3. If the user spelled the word correctly, speak "correct"
	if(name.equalsIgnoreCase("gurgle")) {
	// 4. Otherwise say "wrong"
	speak("correct");
	}
	else {
	speak("wrong");
	}
		}

	static void speak(String words) {
		try {
			Runtime.getRuntime().exec("say " + words).waitFor();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}

}


