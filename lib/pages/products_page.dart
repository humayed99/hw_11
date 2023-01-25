import 'package:flutter/material.dart';

import '../Widgets/products_data.dart';
import 'details.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf8f8f8),
      appBar: AppBar(
        elevation: 2,
        backgroundColor: const Color(0xFFf8f8f8),
        title: const Text(
          'جذور',
          style: TextStyle(
            color: Color(0xFFa4be9f),
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Color(0xFFa4be9f),
              ))
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  for (var product in ProductsData.products)
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (Context) => SingleChildScrollView(
                                child: Container(
                                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                                    child: ProductDetails(
                                      product: product,
                                    ))),
                          );
                        },
                        child: Container(
                          width: 150,
                          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              Image(
                                image: NetworkImage(product.image),
                                height: 240,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 17),
                                child: Text(
                                  product.name,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(color: Color(0xFFa4be9f), fontSize: 15),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 70.0),
                                child: Text(
                                  product.price,
                                  textAlign: TextAlign.right,
                                  style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Image.network(
                          'https://cdn.salla.sa/Aedxd/design/eSPIKpVma6Yo0WftvwwVEGpjnOGdupA3rCX63gG0.jpg?rand=0.9422407322490227?rand=0.7949860411290293?rand=0.7783700531809306?rand=0.8793837302711434',
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Image.network(
                          'https://cdn.salla.sa/Aedxd/design/aIzm8Zi3euzRPfIvz6memq6BejFiNpgFwEeweRmQ.jpg?rand=0.9320803903145549?rand=0.27563371470465803?rand=0.42759597846688513?rand=0.01269328671803216',
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Image.network(
                          'https://cdn.salla.sa/Aedxd/design/mv1lfttRfUl1yfM9pNxsy58pPWJo172H0wclRFGj.jpg?rand=0.630504347325717?rand=0.5184868075117148?rand=0.3400214384546366?rand=0.46533691104156705',
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Image.network(
                          'https://cdn.salla.sa/Aedxd/design/n9fJqvWHqGpnibRBQNKdWcaAnknlz4nt1H6yqdQf.jpg?rand=0.9248438013437563?rand=0.369616655818401?rand=0.837021724824008?rand=0.24109499436775117',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
