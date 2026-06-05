import 'package:flutter/material.dart';
import 'package:flutter_buhos/main.dart';

class PedidosView extends StatelessWidget {
  final ValueChanged<MenuEnum> onMenuPressed;

  const PedidosView({super.key, required this.onMenuPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 20,
        children: [
          OutlinedButton(
            onPressed: () {
              onMenuPressed(MenuEnum.nuevoPedido);
            },
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 20),
              foregroundColor: const Color.fromARGB(255, 201, 147, 72),
              side: const BorderSide(
                color: Color.fromARGB(255, 201, 147, 72),
                width: 2,
              ),
            ),
            child: const Text('Nuevo pedido', style: TextStyle(fontSize: 18)),
          ),
          OutlinedButton(
            onPressed: () {
              onMenuPressed(MenuEnum.pedidosPendientes);
            },
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 20),
              foregroundColor: const Color.fromARGB(255, 201, 147, 72),
              side: const BorderSide(
                color: Color.fromARGB(255, 201, 147, 72),
                width: 2,
              ),
            ),
            child: const Text(
              'Pedidos pendientes',
              style: TextStyle(fontSize: 18),
            ),
          ),
          OutlinedButton(
            onPressed: () {
              onMenuPressed(MenuEnum.pedidosEntregados);
            },
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 20),
              foregroundColor: const Color.fromARGB(255, 201, 147, 72),
              side: const BorderSide(
                color: Color.fromARGB(255, 201, 147, 72),
                width: 2,
              ),
            ),
            child: const Text(
              'Pedidos entregados',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
