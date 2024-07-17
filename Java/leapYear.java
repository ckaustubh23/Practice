package programs.java;

public class leapYear {
    public static void main(String[] args) {
        int years = 2200;

        if(years%400 == 0){
            System.out.println("Its a leap year");
        }
        else if (years%100 == 0) {
            System.out.println("Ita not a leap year");
        } else if (years%4==0) {
            System.out.println("Its a leap year");
        }
        else {
            System.out.println("Its not a leap year");
        }
    }
}
