import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' show dotenv;
import 'package:pharma_cloud_app_mobile_flutter/configuration/configuration.dart';
import 'package:pharma_cloud_app_mobile_flutter/presentation/presentation.dart';

void main() async {
  //! Inicializa variables de entorno
  await dotenv.load(fileName: ".env");

  //! Ejecuta la aplicacion según el entorno
  runApp(_getEnvironmentApp());
}

/// Calcula el entorno de la aplicacion según el valor en el archivo .env
///
/// Si el valor es 'dev' se ejecuta la aplicacion de desarrollo
/// Si el valor es 'prod' se ejecuta la aplicacion de produccion
/// Si el valor es 'null' se lanza una excepcion
Widget _getEnvironmentApp() {
  switch (Environments.app) {
    case 'dev':
      return const DevelopmentMain();
    case 'prod':
      return const ProductionMain();
    case 'null':
      throw Exception(
        'Error al encontrar el entorno de la aplicacion. Su valor en .env es null',
      );
    default:
      return const ProductionMain();
  }
}
