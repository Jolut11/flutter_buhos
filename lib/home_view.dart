import 'package:flutter/material.dart';
import 'pedidos_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.blueGrey),
      child: Center(
        child: Container(
          color: const Color.fromARGB(255, 255, 194, 129),
          child: Column(
            children: [
              SizedBox(height: 50),
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://cdn-icons-png.flaticon.com/512/1864/1864521.png",
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const Text(
                "Buhos y pasteles",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const TabBar(
                      dividerHeight: 0,
                      overlayColor: WidgetStatePropertyAll(Colors.transparent),
                      indicator: UnderlineTabIndicator(
                        borderSide: BorderSide(width: 2.0, color: Colors.black),
                        insets: EdgeInsets.only(
                          bottom: 15,
                        ), // Adjust this negative value as needed
                      ),
                      labelColor: Color.fromARGB(255, 0, 0, 0),
                      labelStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      unselectedLabelColor: Color.fromARGB(255, 172, 114, 38),
                      tabs: [
                        Tab(text: "Pedidos"),
                        Tab(text: "Insumos"),
                        Tab(text: "Recetas"),
                        Tab(text: "Finanzas"),
                      ],
                    ),

                    // 3. Expanded fills remaining height inside the Container
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                          ),
                        ),
                        child: TabBarView(
                          children: [
                            PedidosView(),
                            PedidosView(),
                            PedidosView(),
                            PedidosView(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
