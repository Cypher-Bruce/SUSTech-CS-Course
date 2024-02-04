
import java.sql.*;
import java.util.*;

public class DatabaseManipulation implements DataManipulation {
    private Connection con = null;
    private ResultSet resultSet;

    private String host = "localhost";
    private String dbname = "sustc";
    private String user = "postgres";
    private String pwd = "wmx040523";
    private String port = "5432";


    private void getConnection() {
        try {
            Class.forName("org.postgresql.Driver");
        } catch (Exception e) {
            System.err.println("Cannot find the PostgreSQL driver. Check CLASSPATH.");
            System.exit(1);
        }

        try {
            String url = "jdbc:postgresql://" + host + ":" + port + "/" + dbname;
            con = DriverManager.getConnection(url, user, pwd);

        } catch (SQLException e) {
            System.err.println("Database connection failed");
            System.err.println(e.getMessage());
            System.exit(1);
        }
    }


    private void closeConnection() {
        if (con != null) {
            try {
                con.close();
                con = null;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }


    @Override
    public String retrievalComparison() {
        StringBuilder result = new StringBuilder();
        getConnection();
        try{
            String sql = "select title from movies_metadata where title like '%XXX%';";
            Statement statement = con.createStatement();
            long timeStamp1 = System.currentTimeMillis();
            resultSet = statement.executeQuery(sql);
            long timeStamp2 = System.currentTimeMillis();
            while (resultSet.next()) {
                result.append(resultSet.getString("title")).append(System.lineSeparator());
            }
            long timeStamp3 = System.currentTimeMillis();

            result.append("Database execution time: ").append(timeStamp2 - timeStamp1).append("ms").append(System.lineSeparator());
            result.append("Database fetching time: ").append(timeStamp3 - timeStamp2).append("ms").append(System.lineSeparator());
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            closeConnection();
        }

        return result.toString();
    }

    @Override
    public String updateComparison() {
        StringBuilder result = new StringBuilder();
        getConnection();
        try{
            String sql = "update credits\n" +
                    "set crew = replace(crew, 'To', 'TTOO')\n" +
                    "where crew like E'%\\'name\\': \\'%To%\\'%';\n" +
                    "update credits\n" +
                    "set \"cast\" = replace(\"cast\", 'To', 'TTOO')\n" +
                    "where \"cast\" like E'%\\'name\\': \\'%To%\\'%';";
            Statement statement = con.createStatement();
            long timeStamp1 = System.currentTimeMillis();
            statement.executeUpdate(sql);
            long timeStamp2 = System.currentTimeMillis();
            result.append("Database execution time: ").append(timeStamp2 - timeStamp1).append("ms").append(System.lineSeparator());
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            closeConnection();
        }

        return result.toString();
    }

    @Override
    public String traverseComparison() {
        StringBuilder result = new StringBuilder();
        getConnection();
        String sql = "SELECT * FROM credits;";
        Statement statement = null;
        try {
            statement = con.createStatement();
            long timeStamp1 = System.currentTimeMillis();
            resultSet = statement.executeQuery(sql);
            long timeStamp2 = System.currentTimeMillis();
            result = new StringBuilder("Database traverse time: ").append(timeStamp2 - timeStamp1).append("ms").append(System.lineSeparator());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally {
            closeConnection();
        }
        return result.toString();
    }

    @Override
    public void test() {
        long[] mids = new long[]{1703941, 1966089, 917516, 393238, 655382, 1310751, 262176, 262177, 1703970, 1835045, 1703974, 1835047, 655401, 393255, 1966127, 51, 1441844, 1835062, 917560, 524348, 60, 655422, 1310785, 1966149, 1835084, 1441880, 1441882, 524389, 1966193, 1966194, 1704050, 1966198, 786551, 1704053, 655481, 1966201, 123, 1572989, 393345, 1572993, 131201, 1704073, 1573006, 524431, 524432, 1966226, 655509, 917664, 1573025, 524452, 1835172, 262307, 168, 131245, 174, 1704110, 1573042, 1966260, 1573051, 655556, 655561, 131278, 524497, 1704147, 1573075, 215, 786650, 1442010, 1835234, 1966306, 1573091, 237, 1573102, 1966324, 1966325, 1966327, 1573113, 1310977, 1704195, 393479, 1442055, 1704203, 1835275, 1310989, 1835285, 917782, 1573142, 655638, 393497, 524570, 524571, 131358, 286, 655646, 1311012, 1442089, 1966380, 917806, 1311024, 655669};
        getConnection();
        String getUserInfo = """
                SELECT getuserinfo(?)
        """;
        PreparedStatement getUserInfoStmt = null;
        try{
            getUserInfoStmt = con.prepareStatement(getUserInfo);
            long timeStamp1 = System.currentTimeMillis();
            int times = 10000;
            for(int i = 0; i < times; i++){
                getUserInfoStmt.setLong(1, mids[i%mids.length]);
                try(ResultSet getUserInfoRs = getUserInfoStmt.executeQuery()){

                }
            }
            long timeStamp2 = System.currentTimeMillis();
            System.out.println("Database execution time: " + (timeStamp2 - timeStamp1) + "ms");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
