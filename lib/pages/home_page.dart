// Funcionalidad personalizada 1:
// Este botón permite al usuario acceder directamente al sitio oficial del MINSAL,
// proporcionando una vía rápida a información completa y actualizada.
// Es atingente porque mejora la utilidad y acceso a la fuente principal de contenido.

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  final Uri _url = Uri.parse('https://www.minsal.cl');

  Future<void> _launchURL() async {
    if (!await launchUrl(_url)) {
      throw 'No se pudo abrir $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Bienvenido al Ministerio de Salud de Chile',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          Text(
            'Aquí encontrarás información actualizada sobre salud pública, campañas, noticias y contacto directo con el MINSAL.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 30),
          Center(
            child: ElevatedButton.icon(
              onPressed: _launchURL,
              icon: Icon(Icons.language),
              label: Text('Ir al sitio oficial'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
