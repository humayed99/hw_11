import 'package:flutter/material.dart';

import '../Widgets/products_data.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'معلومات المنتج',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color: Color(0xFFa4be9f)),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
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
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Color(0xFFa4be9f), fontSize: 25),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    children: [
                      Text(
                        product.price,
                        textAlign: TextAlign.right,
                        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          TextButton(
            onPressed: () {
              ProductsData.cart.add(product);
            },
            style: TextButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: const Color.fromARGB(255, 71, 140, 94)),
            child: const Text('اضافة للسلة'),
          )
        ],
      ),
    );
  }
}
