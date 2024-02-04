import java.io.*;
import java.util.*;
import java.util.regex.*;

public class FileManipulation implements DataManipulation {

    @Override
    public String retrievalComparison() {
        String line;
        int titleIndex = 17;
        ArrayList<String> resultSet = new ArrayList<>();
        StringBuilder result = new StringBuilder();
        try{
            long timeStamp1 = System.currentTimeMillis();
            BufferedReader bufferedReader = new BufferedReader(new FileReader("movies_metadata.txt"));
            bufferedReader.readLine();
            while((line = bufferedReader.readLine()) != null){
                if(line.split("\\|")[titleIndex].contains("XXX")){
                    resultSet.add(line);
                }
            }
            long timeStamp2 = System.currentTimeMillis();
            for (String s : resultSet) {
                result.append(s.split("\\|")[titleIndex]).append(System.lineSeparator());
            }
            long timeStamp3 = System.currentTimeMillis();
            result.append("File execution time: ").append(timeStamp2 - timeStamp1).append("ms").append(System.lineSeparator());
            result.append("File fetching time: ").append(timeStamp3 - timeStamp2).append("ms").append(System.lineSeparator());
        }catch (IOException e) {
            e.printStackTrace();
        }

        return result.toString();
    }

    @Override
    public String updateComparison() {
        StringBuilder result = new StringBuilder();
        StringBuilder resultSet = new StringBuilder();
        try{
            long timeStamp1 = System.currentTimeMillis();
            BufferedReader bufferedReader = new BufferedReader(new FileReader("credits.txt"));
            String line;
            Pattern pattern = Pattern.compile("'name': '.*?To.*?'");
            while((line = bufferedReader.readLine()) != null){
                Matcher matcher = pattern.matcher(line);
                if(matcher.find()){
                    line = line.replaceAll("To", "TTOO");
                }
                resultSet.append(line).append(System.lineSeparator());
            }
            FileWriter fileWriter = new FileWriter("credits_modified.txt");
            fileWriter.write(resultSet.toString());
            long timeStamp2 = System.currentTimeMillis();
            result.append("File execution time: ").append(timeStamp2 - timeStamp1).append("ms").append(System.lineSeparator());
        }catch (IOException e) {
            e.printStackTrace();
        }

        return result.toString();
    }

    @Override
    public String traverseComparison(){
        long timeStamp1 = System.currentTimeMillis();
        StringBuilder resultSet = new StringBuilder();
        try{
            BufferedReader bufferedReader = new BufferedReader(new FileReader("credits.txt"));
            bufferedReader.readLine();
            String line;
            String[] lineSplit;
            while((line = bufferedReader.readLine()) != null){
                lineSplit = line.split("\\|");
                resultSet.append(line).append(System.lineSeparator());
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        long timeStamp2 = System.currentTimeMillis();
        return "File traverse time: " + (timeStamp2 - timeStamp1) + "ms" + System.lineSeparator();
    }

    @Override
    public void test() {

    }
}
