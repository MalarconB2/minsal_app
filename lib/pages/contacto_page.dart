import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactoPage extends StatelessWidget {
  final String direccion = 'Av. Libertador Bernardo O\'Higgins 1370, Santiago, Chile';
  final String telefono = '+56 2 2574 0100';
  final String correo = 'contacto@minsal.cl';

// Funcionalidad personalizada 4:
// Este botón abre Google Maps con la dirección del MINSAL.
// Es útil para que el usuario ubique rápidamente el lugar en un entorno real.
// Atingente al contexto de contacto institucional.

  Future<void> _abrirMaps() async {
    final Uri url = Uri.parse(
      'https://www.google.com/maps/search/?api=1&query=Av.+Libertador+Bernardo+O\'Higgins+1370,+Santiago,+Chile',
    );
    if (!await launchUrl(url)) {
      throw 'No se pudo abrir el mapa';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Contáctanos',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(Icons.location_on),
            title: Text(direccion),
            onTap: _abrirMaps,
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text(telefono),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text(correo),
          ),
          SizedBox(height: 30),
          Center(
            child: ElevatedButton.icon(
              onPressed: _abrirMaps,
              icon: Icon(Icons.map),
              label: Text('Ver ubicación en Google Maps'),
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
