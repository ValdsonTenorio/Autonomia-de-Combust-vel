import 'package:controlegasolina/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MyDrawer extends StatelessWidget {
  final AuthController _authController = AuthController();

  @override
  Widget build(BuildContext context) {
    User? user = _authController.getCurrentUser();

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(user?.displayName ?? 'Nome do Usuário', style: TextStyle(color: Colors.white)),
            accountEmail: Text(user?.email ?? 'email@exemplo.com', style: TextStyle(color: Colors.white)),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 0, 0),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            iconColor: Color.fromARGB(255, 255, 0, 0),
            title: Text('Home'),
            textColor: Colors.white,
            onTap: () => Navigator.pushNamed(context, '/home'),
          ),
          ListTile(
            leading: Icon(Icons.car_rental),
            iconColor: Color.fromARGB(255, 255, 0, 0),
            title: Text('Meus Veículos'),
            textColor: Colors.white,
            onTap: () => Navigator.pushNamed(context, '/meus_veiculos'),
          ),
          ListTile(
            leading: Icon(Icons.add),
            iconColor: Color.fromARGB(255, 255, 0, 0),
            title: Text('Adicionar Veículo'),
            textColor: Colors.white,
            onTap: () => Navigator.pushNamed(context, '/adicionar_veiculo'),
          ),
          ListTile(
            leading: Icon(Icons.history),
            iconColor: Color.fromARGB(255, 255, 0, 0),
            title: Text('Histórico de Abastecimentos'),
            textColor: Colors.white,
            onTap: () => Navigator.pushNamed(context, '/historico_abastecimentos'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            iconColor: Color.fromARGB(255, 255, 0, 0),
            title: Text('Perfil'),
            textColor: Colors.white,
            onTap: () => Navigator.pushNamed(context, '/perfil'),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            iconColor: Color.fromARGB(255, 209, 8, 8),
            title: Text('Logout'),
            textColor: Colors.white,
            onTap: () async {
              await _authController.logout();
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
        ],
      ),
      backgroundColor: Color(0xFF2E2E2E),
    );
  }
}
