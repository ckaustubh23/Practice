public class types {
    public static void main(String[] args) {
        //Primitive types  --> fixed range

        // byte - 1 [-128 to 127]
        // short -2 bytes
        // int - 4 bytes
        // long - 8 bytes
        // float - 4 bytes
        // double - 8 bytes
        // char - 2 bytes
        // boolean - 1 bytes 

        byte age = 30;
        int phone = 1234567890;
        long phone2 = 1234567890000L;
        float pi = 3.14F;
        char letter = 'a';
        boolean isAdult = false;


        //Non primitive types --> needs to be declared using "new keyword"
        String name = new String("KaustubhChaubey");
        String friend = "Chaubey";
        System.out.println(name.length());

    }
}
