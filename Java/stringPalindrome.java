package programs.java;

public class stringPalindrome {
    static boolean isPalindromeString(String text){
        String reverse = reverse(text);
        if(text.equals(reverse)) {
            return true;
        }
        return false;
    }
public static String reverse(String input) {
        if(input == null || input.isEmpty()){
            return input;
        }
        return input.charAt(input.length()- 1) + reverse(input.substring(0, input.length() - 1));
    }

    public static void main(String[] args){
        String k = "";

        if(isPalindromeString(k)==true){
            System.out.println(k +" is Palindrome");
        }
        else{
            System.out.println("Is not a palindrome");
        }
    }
}
