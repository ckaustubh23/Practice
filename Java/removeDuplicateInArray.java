package programs.java;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

public class removeDuplicateInArray {
    public static void main(String[] args) {
        int[] arrayWithDuplicates = {1, 2, 3, 1, 2, 4, 5, 3};
        int[] arrayWithoutDuplicates = removeDuplicates(arrayWithDuplicates);

        System.out.println(Arrays.toString(arrayWithoutDuplicates));
    }

    public static int[] removeDuplicates(int[] array) {
        Set<Integer> set = new HashSet<>();
        for (int num : array) {
            set.add(num);
        }

        int[] result = new int[set.size()];
        int index = 0;
        for (int num : set) {
            result[index++] = num;
        }

        return result;
    }
}

