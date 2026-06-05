import 'package:flutter/material.dart';
import 'package:flutter_buhos/Menus/menu_pedidos_entregados.dart';
import 'package:flutter_buhos/Menus/menu_pedidos_pendientes.dart';
import 'package:flutter_buhos/Menus/menu_nuevo_pedido.dart';
import 'home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

enum MenuEnum { nuevoPedido, pedidosPendientes, pedidosEntregados }

class _MyHomePageState extends State<MyHomePage> {
  bool mostrarPanel = false;
  MenuEnum menuActual = MenuEnum.nuevoPedido;

  void abrirMenu(MenuEnum menu) => setState(() {
    menuActual = menu;
    mostrarPanel = true;
  });

  Widget obtenerContenido() {
    switch (menuActual) {
      case MenuEnum.nuevoPedido:
        return MenuNuevoPedido();

      case MenuEnum.pedidosPendientes:
        return MenuPedidosPendientes();

      case MenuEnum.pedidosEntregados:
        return MenuPedidosEntregados();

      default:
        return Text("Contenido no disponible");
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Stack(
          children: [
            HomeView(onMenuPressed: abrirMenu),

            // Fondo oscuro opcional
            if (mostrarPanel)
              GestureDetector(
                onTap: () {
                  setState(() {
                    mostrarPanel = false;
                  });
                },
                child: Container(color: Colors.black38),
              ),

            // Panel deslizante
            AnimatedPositioned(
              duration: Duration(milliseconds: 300),
              curve: Curves.easeOut,
              left: 0,
              right: 0,
              top: mostrarPanel ? 40 : MediaQuery.of(context).size.height,
              bottom: 0,
              child: Container(
                height: 450,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                  boxShadow: [BoxShadow(blurRadius: 15, color: Colors.black26)],
                ),
                child: obtenerContenido(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
