package programs.java;

public class identityMatrix {

    static int identity(int sum){
        int row, col;

        for(row = 0; row < sum; row++){
            for(col = 0; col < sum; col++){
                if(row == col){
                    System.out.print(1+" ");
                }
                else{
                    System.out.print(0+ " ");
                }
            }
            System.out.println();
        }
        return 0;
    }

    public static void main(String[] args) {
        int size = 5;
        identity(size);
    }
}
