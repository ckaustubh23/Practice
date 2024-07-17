package programs.java;

public class greatestCommonDivisor {
    public static void main(String[] args) {
        int a = 50;
        int b = 60;
        int g = 0;
        int i;

        for(i = 1; i<=a; i++){
            if(a%i==0 && b%i==0){
                g = i;
            }
        }
        System.out.println(g);
    }
}
