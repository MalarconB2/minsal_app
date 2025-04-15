import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NoticiasPage extends StatelessWidget {
  final List<Map<String, String>> noticias = [
    {
      'titulo': 'MINSAL lanza nueva campaña de vacunación 2024',
      'fecha': '10 de abril de 2025',
      'descripcion':
          'El Ministerio de Salud inició una nueva campaña para reforzar la vacunación contra la influenza.',
      'url':
          'https://www.minsal.cl/minsal-lanza-nueva-campana-vacunacion-2024/',
    },
    {
      'titulo': 'Nuevas medidas sanitarias en transporte público',
      'fecha': '6 de abril de 2025',
      'descripcion':
          'Se anuncian protocolos reforzados para el uso de mascarillas y sanitización en buses y metro.',
      'url':
          'https://www.minsal.cl/nuevas-medidas-sanitarias-en-transporte-publico/',
    },
    {
      'titulo': 'Inversión histórica en infraestructura hospitalaria',
      'fecha': '1 de abril de 2025',
      'descripcion':
          'Gobierno anuncia ampliación de hospitales y centros de atención primaria.',
      'url':
          'https://www.minsal.cl/inversion-infraestructura-hospitalaria-2025/',
    },
  ];

  // Funcionalidad personalizada 2:
  // Lista dinámica de noticias destacadas con enlaces reales al sitio del MINSAL.
  // Es atingente porque permite mantener informado al usuario sobre eventos relevantes.
  // Cada botón "Ver más" abre la noticia completa en el navegador.

  Future<void> _abrirNoticia(String url) async {
    final Uri _url = Uri.parse(url);
    if (!await launchUrl(_url)) {
      throw 'No se pudo abrir $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: noticias.length,
      itemBuilder: (context, index) {
        final noticia = noticias[index];
        return Card(
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  noticia['titulo'] ?? '',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  noticia['fecha'] ?? '',
                  style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                ),
                SizedBox(height: 8),
                Text(
                  noticia['descripcion'] ?? '',
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () => _abrirNoticia(noticia['url'] ?? ''),
                    child: Text('Ver más'),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
