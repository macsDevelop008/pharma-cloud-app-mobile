import 'package:flutter_dotenv/flutter_dotenv.dart' show dotenv;

class Environments {
  static String app = dotenv.get('ENVIROMENT', fallback: 'null');
}
