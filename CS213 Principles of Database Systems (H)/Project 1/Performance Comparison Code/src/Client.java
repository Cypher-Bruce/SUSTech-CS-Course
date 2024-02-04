
public class Client {

    public static void main(String[] args) {
        try {
            DataManipulation DatabaseDM = new DataFactory().createDataManipulation("database");
            DataManipulation FileDM = new DataFactory().createDataManipulation("file");
            DatabaseDM.test();
            //System.out.println(DatabaseDM.retrievalComparison());
            //System.out.println(FileDM.retrievalComparison());
            //System.out.println(DatabaseDM.updateComparison());
            //System.out.println(FileDM.updateComparison());
            //System.out.println(DatabaseDM.traverseComparison());
            //System.out.println(FileDM.traverseComparison());
        } catch (IllegalArgumentException e) {
            System.err.println(e.getMessage());
        }
    }
}

