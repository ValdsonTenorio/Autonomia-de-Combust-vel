import 'package:controlegasolina/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MyDrawer extends StatelessWidget {
  final AuthController _authController = AuthController();

  @override
  Widget build(BuildContext context) {
    User? user = _authController.getCurrentUser();

    return Drawer(
      child: Container(
        color: Color(0xFF2E2E2E),
        child: Column(
          children: [
            Container(
              color: Colors.red,
              padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 40,
                    child: Text(
                      user?.displayName?.substring(0, 1) ?? 'U',
                      style: TextStyle(fontSize: 40, color: Colors.red),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(user?.displayName ?? 'Nome do Usuário', style: TextStyle(color: Colors.white, fontSize: 20)),
                  Text(user?.email ?? 'email@exemplo.com', style: TextStyle(color: Colors.white70, fontSize: 14)),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.only(top: 20),
                children: [
                  _buildDrawerItem(context, 'Home', Icons.home, '/home'),
                  _buildDrawerItem(context, 'Meus Veículos', Icons.car_rental, '/meus_veiculos'),
                  _buildDrawerItem(context, 'Adicionar Veículo', Icons.add, '/adicionar_veiculo'),
                  _buildDrawerItem(context, 'Histórico de Abastecimentos', Icons.history, '/historico_abastecimentos'),
                  _buildDrawerItem(context, 'Perfil', Icons.person, '/perfil'),
                  _buildDrawerItem(context, 'Logout', Icons.logout, '/', isLogout: true),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerItem(BuildContext context, String title, IconData icon, String route, {bool isLogout = false}) {
    return ListTile(
      leading: Icon(icon, color: Colors.red),
      title: Text(title, style: TextStyle(color: Colors.white, fontSize: 16)),
      onTap: () async {
        if (isLogout) {
          await _authController.logout();
        }
        Navigator.pushReplacementNamed(context, route);
      },
    );
  }
}
