import 'package:flutter/material.dart';

// Funcionalidad personalizada 3:
// Se emplea scroll vertical con jerarquía visual (títulos y subtítulos)
// para estructurar el contenido de forma clara y accesible.
// Es atingente porque mejora la lectura en dispositivos móviles.

class QuienesSomosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '¿Quiénes somos?',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Text(
            'El Ministerio de Salud de Chile es la institución encargada de promover y proteger la salud de la población, '
            'mediante el diseño y ejecución de políticas públicas que aseguren el acceso equitativo y oportuno a servicios de salud de calidad.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 20),
          Text(
            'Misión',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 10),
          Text(
            'Formular y coordinar políticas de salud públicas que mejoren la calidad de vida de la población chilena, '
            'fomentando la prevención y la atención integral en salud.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 20),
          Text(
            'Visión',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 10),
          Text(
            'Ser un referente en salud pública, reconocido por su eficiencia, equidad y compromiso con el bienestar de las personas.',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
