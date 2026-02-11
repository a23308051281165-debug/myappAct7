import 'package:flutter/material.dart';

void main() => runApp(const HeladeriaApp());

class HeladeriaApp extends StatelessWidget {
  const HeladeriaApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Eliminamos 'const' de aquí porque Helados() no tiene un constructor constante simple
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Helados(),
    );
  }
} // Fin clase HeladeriaApp

class Helados extends StatelessWidget {
  const Helados({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Heladería Dana',
          style: TextStyle(color: Color.fromARGB(255, 218, 81, 134)),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 197, 216),
        leading: IconButton(
          icon: const Icon(Icons.camera_alt, color: Colors.white),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.ac_unit, color: Color.fromARGB(255, 218, 81, 134)),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.icecream, color: Color.fromARGB(255, 218, 81, 134)),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _tarjetaHelado(
              'Helado de Fresa',
              'Crema natural con trozos de fruta',
              'https://images.unsplash.com/photo-1567206563064-6f60f40a2b57?w=200',
            ),
            const SizedBox(height: 15),
            _tarjetaHelado(
              'Copa Triple',
              'Chocolate suizo y caramelo',
              'https://raw.githubusercontent.com/a23308051281165-debug/ImagenesHelados/refs/heads/main/450_1000.jpg',
            ),
            const SizedBox(height: 15),
            _tarjetaHelado(
              'Sorbet de Limón',
              'Refrescante y 100% artesanal',
              'https://raw.githubusercontent.com/a23308051281165-debug/ImagenesHelados/refs/heads/main/cono-487h.webp',
            ),
          ],
        ),
      ),
    );
  }

  // Se agregó el cierre correcto de esta función
  Widget _tarjetaHelado(String sabor, String descripcion, String urlImagen) {
    return Card(
      color: Colors.pink[100],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 5,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 2),
            image: DecorationImage(
              image: NetworkImage(urlImagen),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(
          sabor,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          descripcion,
          style: const TextStyle(color: Colors.white),
        ),
        trailing: const Icon(Icons.favorite_border, color: Colors.white),
      ),
    );
  }
} // Fin clase Helados