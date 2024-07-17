package programs.java;

public class Swapping {
    public static void main(String[] args) {
        int a = 10;
        int b = 20;

        System.out.println(a + " " +b);

//        int temp = a;
//        a = b;
//        b = temp;

        a = a+b;
        b = a-b;
        a = a-b;

        System.out.println(a + " " +b);
    }
}
