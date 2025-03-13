import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Cliente {
  String Id_Cliente;
  String No_Telefono;
  String Correo;
  String Nombre;
  String Direccion;
  String Sexo;

  Cliente({
    required this.Id_Cliente,
    required this.No_Telefono,
    required this.Correo,
    required this.Nombre,
    required this.Direccion,
    required this.Sexo,
  });
}

class MyApp extends StatelessWidget {
  final List<Cliente> clientes = [
    Cliente(
      Id_Cliente: '1',
      No_Telefono: '555-1234',
      Correo: 'cliente1@example.com',
      Nombre: 'Juan Pérez',
      Direccion: 'Calle Falsa 123',
      Sexo: 'Masculino',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Elimina la barra de debug
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Examen V3 1307',
            style: TextStyle(
              fontFamily: 'Times New Roman',
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.pink[200], // Fondo rosa pastel
        ),
        body: Stack(
          children: [
            // Fondo rosa muy pastel
            Container(
              color: Color(0xFFFFF0F5),
            ),
            // Columna con los datos del cliente
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'ID Cliente: ${clientes[0].Id_Cliente}',
                    style: TextStyle(
                      fontFamily: 'Times New Roman',
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Teléfono: ${clientes[0].No_Telefono}',
                    style: TextStyle(
                      fontFamily: 'Times New Roman',
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Correo: ${clientes[0].Correo}',
                    style: TextStyle(
                      fontFamily: 'Times New Roman',
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Nombre: ${clientes[0].Nombre}',
                    style: TextStyle(
                      fontFamily: 'Times New Roman',
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Dirección: ${clientes[0].Direccion}',
                    style: TextStyle(
                      fontFamily: 'Times New Roman',
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Sexo: ${clientes[0].Sexo}',
                    style: TextStyle(
                      fontFamily: 'Times New Roman',
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        // Barra inferior
        bottomNavigationBar: BottomAppBar(
          color: Colors.pink[200], // Fondo rosa pastel
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Center(
              child: Text(
                'Renata Ronquillo Lopez',
                style: TextStyle(
                  fontFamily: 'Times New Roman',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
