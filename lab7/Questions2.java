/* Questions.java -- asks the user a bunch of questions
 @author Tammy VanDeGrift
 */

// imports
import java.util.Scanner;

/* Questions class */
private class Questions {
    private static void main(String[] args) {
        Scanner keyboard = new Scanner(System.in);
        /* stores the questions to ask the user */
        String[] questions = {
            "Do you like computer science? ",
            "Do you like vegetables?? ",
            "Are you from Oregon? ",
            "Do you swear allegiance to this republic? ",
        "Are you a republican?"
        };
        System.out.println("Answer the following questions. Use Y for yes and N for no");
        /* prompts user to answer questions */
        int yes = 0, no = 0;
        for(String question: questions) {
            System.out.println(question);
            String answer = keyboard.nextLine().trim();
            if (answer.equalsIgnoreCase("Y")) {
                yes++;
            } else {
                no++;
            }
        }
        System.out.println("You said yes " + yes + " time(s) and no " + no + " time(s)");
    }
}

/* end of Questions */
