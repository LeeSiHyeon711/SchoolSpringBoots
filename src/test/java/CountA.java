public class CountA {
    public static void main(String[] args) {
        String text = "Java is amazing!";
        int count = 0;

        for (int i = 0; i < text.length(); i++) {
            if (text.charAt(i) == 'a') {
                count++;
            }
        }

        System.out.println("Number of 'a': " + count);
    }
}
