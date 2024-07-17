package programs.java;

public class integerPalindrome {
    public static void main(String[] args) {
        int a = 123321;
        int temp = a;
        int rev = 0;

        while(a!=0){
            rev = rev*10 + a%10;
            a = a/10;
        }
        if(rev == temp)
            System.out.println("Its a Palindrome");
        else
            System.out.println("Its not a palindrome");
    }
}
