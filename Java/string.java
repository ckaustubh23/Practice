public class string {
    public static void main(String[] args) {
        //operation on strings

        //concatenate --> joining two string

        String name1 = "Kaustubh";
        String name2 = " Chaubey";
        String Name = name1 + name2;
        String fullName = name1 + " Akhilesh " + name2;
        System.out.println(Name);
        System.out.println(fullName);

        //charAt --> to find the position of the word in the string
        System.out.println(Name.charAt(0));

        //length
        System.out.println(Name.length());

        //replace
        String newString = Name.replace('a', 'd');
        System.out.println(newString);

        //Strings in java are immutable -->> once created cannot be changed
        // if you wish to change the string create new string variable to save the same


        //Substrings 
        String text = "Lets learn Java";
        System.out.println(text.substring(0, 5));

    }
}
