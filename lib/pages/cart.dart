import 'package:flutter/material.dart';

import '../Widgets/products_data.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf8f8f8),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 659,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for (var product in ProductsData.cart)
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          height: 400,
                          width: 350,
                          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              Image(
                                image: NetworkImage(product.image),
                                height: 300,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                  product.name,
                                  style: const TextStyle(color: Colors.grey, fontSize: 20),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Row(
                                  children: [
                                    Text(
                                      product.price,
                                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                                    ),
                                  ],
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
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFa4be9f)),
                child: const Text(
                  "اتمام الطلب",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
