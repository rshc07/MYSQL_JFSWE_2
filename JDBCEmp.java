import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class JDBCEmp
{
    public static void main(String[] args) {
        try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/Employee_Details?user=root&password=Msdhoni1997*")) {
            String insertQuery = "INSERT INTO Empl3 (empcode, empname, empage, esalary) VALUES (?, ?, ?, ?)";

            // Create a PreparedStatement
            PreparedStatement preparedStatement = connection.prepareStatement(insertQuery);

            // Insert data
            preparedStatement.setInt(1, 101);
            preparedStatement.setString(2, "Jenny");
            preparedStatement.setInt(3, 25);
            preparedStatement.setDouble(4, 20000);
            preparedStatement.executeUpdate();

            preparedStatement.setInt(1, 102);
            preparedStatement.setString(2, "Jacky");
            preparedStatement.setInt(3, 30);
            preparedStatement.setDouble(4, 40000);
            preparedStatement.executeUpdate();

            preparedStatement.setInt(1, 103);
            preparedStatement.setString(2, "Joe");
            preparedStatement.setInt(3, 20);
            preparedStatement.setDouble(4, 80000);
            preparedStatement.executeUpdate();

            preparedStatement.setInt(1, 104);
            preparedStatement.setString(2, "John");
            preparedStatement.setInt(3, 40);
            preparedStatement.setDouble(4, 90000);
            preparedStatement.executeUpdate();

            System.out.println("Data inserted successfully.");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
