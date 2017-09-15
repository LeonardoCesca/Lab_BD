
/**
 * + *
 * + * @author 17180277
 * + */
import java.sql.*;

public class Conexao {

    public static void main(String[] args) throws SQLException {

        try (
                Connection conexao = DriverManager.getConnection(
                        "jdbc:oracle:thin:@//CAMBURI.PUCRS.BR:1521/FACIN11G", "BH180277", "BH180277")) {
            System.out.println("Conectado.");
            String sql = "INSERT INTO VEICULOS"
                    + " (placa, ano, km, marca, modelo)"
                    + " VALUES ('IAB-5555', 2016, 0, 'Fiat', 'Palio')";
            try (PreparedStatement stmt = conexao.prepareStatement(sql)) {
                stmt.execute();
            }
            System.out.println("Veículo inserido.");
        }
    }
}
