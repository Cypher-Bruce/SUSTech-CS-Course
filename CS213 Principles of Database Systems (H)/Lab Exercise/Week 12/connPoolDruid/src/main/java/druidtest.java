import java.lang.reflect.Field;
import java.sql.*;

import com.alibaba.druid.pool.DruidDataSource;

import javax.sql.DataSource;

public class druidtest {
    public static void main(String[] args) throws Exception{
        // declare druid connection pool
        DruidDataSource dataSource = new DruidDataSource();


        dataSource.setInitialSize(3);//druidConfig.getInitialSize()
        dataSource.setMinIdle(3);//druidConfig.getMinIdle()
        dataSource.setMaxActive(3);//druidConfig.getMaxActive()
        dataSource.setMaxWait(1000);//druidConfig.getMaxWait()


        /* ----------------------------Connection------------------------- */
        // loads the jdbc driver, here we use pgsql
        // if the db is mysql, the string will be "com.mysql.cj.jdbc.Driver", etc

        dataSource.setDriverClassName("org.postgresql.Driver");
        dataSource.setUsername("postgres");
        dataSource.setPassword("wmx040523");
        dataSource.setUrl("jdbc:postgresql://localhost:5432/postgres");

        // test 3: change the max pool size and initial pool size

        //dataSource.setInitialSize(1);
        //dataSource.setMaxActive(1);


        Connection connection = dataSource.getConnection();
        System.out.println(connection.getClass().getName());    // Test connection statement
        connection.close();
        poolStatus(dataSource);

        /*
        // inner proxy mechanism
        Object inner= getConnectionInner(connection);
        if (inner != null)
            System.out.println(inner.getClass().getName());
*/

        // test 1: add one connection, watch the Idle/busy/all num
        /**/
        Connection connection1 = dataSource.getConnection();
        System.out.println(connection1.getClass().getName());
        System.out.println(connection==connection1);
        poolStatus(dataSource);





        // test 2: add two more connections, watch the all num
        /**/
        Connection connection2 = dataSource.getConnection();
        System.out.println(connection==connection2);
        poolStatus(dataSource);
        Connection connection3 = dataSource.getConnection();
        System.out.println(connection==connection3);
        poolStatus(dataSource);

        Connection connection4 = dataSource.getConnection();


        connection2.close();
        connection3.close();

        System.out.println("Before Create");
        poolStatus(dataSource);
        createCon(dataSource);
        System.out.println("After Create");
        poolStatus(dataSource);


        /* ----------------------------Get Statement------------------------- */
        poolStatus(dataSource);


        /* ----------------------------Query------------------------- */
        /**/
        String sql_query = "insert into emp(id,name,salary) values (23,'test3',5000)";
        try {
            /* statement */
            Statement query = connection1.createStatement();
            query.execute(sql_query);

            /* prestatement */
            PreparedStatement ps_query = connection1.prepareStatement(sql_query);
            ps_query.execute();

            poolStatus(dataSource);

        }catch (Exception e){
            e.printStackTrace();
        }








    }

    public static Object getConnectionInner(Object connection){
        Object result = null;
        Field field = null;
        try {
            field = connection.getClass().getDeclaredField("inner");
            field.setAccessible(true);
            result = field.get(connection);
        }catch (Exception e){
            e.printStackTrace();
        }
        return result;
    }

    public static void poolStatus(DruidDataSource dataSource) throws SQLException {
        System.out.println("Busy Num " + dataSource.getActiveCount());
        System.out.println("Idle Num " + dataSource.getCloseCount());
        System.out.println("All Num " + dataSource.getConnectCount());
    }

    public static void createCon(DataSource dataSource) throws SQLException {
        Connection connection = dataSource.getConnection();
    }

}
