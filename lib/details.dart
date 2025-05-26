import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Details extends StatelessWidget {
  Details({
    Key? key,
    required this.idEmpleado,
    required this.nombre,
    required this.apellidos,
    required this.sexo,
    required this.direccion,
    required this.celular,
    required this.email,
    required this.sucursal,
  }) : super(key: key);

  final String idEmpleado;
  final String nombre;
  final String apellidos;
  final String sexo;
  final String direccion;
  final String celular;
  final String email;
  final String sucursal;

  Widget customCard(String title, String subtitle, IconData icon) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.grey.shade300, width: 1.0),
      ),
      child: ListTile(
        leading: Icon(icon, color: Colors.blueAccent),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        subtitle: Text(subtitle),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Detalles del Producto"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(12.0),
        children: [
          customCard("ID Empleado", idEmpleado, Icons.badge),
          customCard("Nombre", nombre, Icons.person),
          customCard("Apellidos", apellidos, Icons.people),
          customCard("Sexo", sexo, Icons.wc),
          customCard("Dirección", direccion, Icons.home),
          customCard("Celular", celular, Icons.phone),
          customCard("Email", email, Icons.email),
          customCard("Id_Sucursal", sucursal, Icons.home),
        ],
      ),
    );
  }
}