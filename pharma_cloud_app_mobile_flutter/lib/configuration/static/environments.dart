import 'package:flutter_dotenv/flutter_dotenv.dart' show dotenv;

/// Esta clase es para obtener las variables de entorno
class Environments {
  /// Constructor privado para evitar la instanciación de la clase
  Environments._();

  /// Variable para obtener el entorno de ejecución de la app
  static String app = dotenv.get('ENVIROMENT', fallback: 'null');
}
