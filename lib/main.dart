import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/noticias_page.dart';
import 'pages/quienes_somos_page.dart';
import 'pages/contacto_page.dart';

void main() {
  runApp(MinsalApp());
}

class MinsalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MINSAL Chile',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MainScaffold(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainScaffold extends StatefulWidget {
  @override
  _MainScaffoldState createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    NoticiasPage(),
    QuienesSomosPage(),
    ContactoPage(),
  ];

  final List<String> _titles = [
    'Inicio',
    'Noticias',
    'Quiénes Somos',
    'Contacto',
  ];

  void _onDrawerItemTap(int index) {
    setState(() {
      _selectedIndex = index;
      Navigator.pop(context); // Cierra el drawer
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_titles[_selectedIndex])),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'MINSAL Chile',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(title: Text('Inicio'), onTap: () => _onDrawerItemTap(0)),
            ListTile(title: Text('Noticias'), onTap: () => _onDrawerItemTap(1)),
            ListTile(
              title: Text('Quiénes Somos'),
              onTap: () => _onDrawerItemTap(2),
            ),
            ListTile(title: Text('Contacto'), onTap: () => _onDrawerItemTap(3)),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
