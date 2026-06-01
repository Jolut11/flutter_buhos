import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.blueGrey),
      child: Center(
        child: Container(
          color: Colors.orange,
          child: Column(
            children: [
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
              const Text("Buhos y pasteles"),
              Expanded(
                child: Container(
                  color: Colors.red,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Pedidos"),
                          Text("Insumos"),
                          Text("Recetas"),
                          Text("Finanzas"),
                        ],
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          child: Column(
                            children: [
                              Text(
                                'MediaQuery: ${MediaQuery.of(context).size.width}',
                              ),
                              Text(
                                'PixelRatio: ${MediaQuery.of(context).devicePixelRatio}',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
