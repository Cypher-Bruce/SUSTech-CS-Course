
public class Client {

    public static void main(String[] args) {
        try {
            DataManipulation dm = new DataFactory().createDataManipulation(args[0]);
            System.out.println(dm.findMoviesByLimited10("aba"));
        } catch (IllegalArgumentException e) {
            System.err.println(e.getMessage());
        }
    }
}

