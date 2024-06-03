import 'package:flutter/material.dart';
import 'package:happy_shop/components/address.dart';
import 'package:product_repository/product_repository.dart';

class BuyNow extends StatelessWidget {
  final Product product;

  const BuyNow(this.product, {super.key});
  // const BuyNow({super.key});

  @override
  Widget build(BuildContext context) {
    final _addressController = TextEditingController();
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: Row(
          children: [
            Image.asset(
              'assects/images/happy.png',
              scale: 16,
            ),
            const SizedBox(width: 8),
            const Text(
              'HAPPY SHOP',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey, offset: Offset(3, 3), blurRadius: 5)
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const Text(
                        "Buy Now",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 60,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                                image: NetworkImage(product.picture))),
                      ),
                      Text(
                        product.name,
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.green.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(30)),
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text(
                                "Color: ${product.color}",
                                style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 125,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(30)),
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text(
                                "Size: ${product.Size}",
                                style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AddressFormField(
                          controller: _addressController,
                          label: "Address",
                          hint: "Enter your address",
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Order Summary",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Row(
                        children: [
                          const Text("Total price "),
                          const SizedBox(
                            width: 180,
                          ),
                          Text("${product.price}"),
                        ],
                      ),
                      const Row(
                        children: [
                          Text("Delivery fees "),
                          SizedBox(
                            width: 165,
                          ),
                          Text("150"),
                        ],
                      ),
                      Row(
                        children: [
                          const Text("Total Discount"),
                          const SizedBox(
                            width: 158,
                          ),
                          Text("${product.price * (product.discount / 100)}"),
                        ],
                      ),
                      Row(
                        children: [
                          const Text("Total price "),
                          const SizedBox(
                            width: 180,
                          ),
                          Text(
                              "${150 + (product.price - (product.price * (product.discount / 100)))}"),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              elevation: 3.0,
                              backgroundColor:
                                  const Color.fromARGB(233, 76, 175, 79),
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          child: const Text(
                            "Buy Now",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      )
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
