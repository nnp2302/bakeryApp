import 'package:demo_app/conf/const.dart';
import 'package:demo_app/pages/voucher_page.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            // checkout appbar
            AppBar(
              leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: customOrange,
                ),
              ),
              title: const Text(
                'Checkout',
                style: TextStyle(
                    fontSize: 28,
                    color: customOrange,
                    fontWeight: FontWeight.w500),
              ),
              centerTitle: true,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delivery Address',
                        style: TextStyle(
                            color: Colors.grey.shade800,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(customOrange)),
                          child: const Text(
                            'Choose address',
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: TextField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                              BorderSide(color: Colors.grey.shade500, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey.shade800, width: 2),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 12,
            ),

            Container(
              height: 15,
              decoration: BoxDecoration(
                  border: const Border(
                      top: BorderSide(width: 1, color: Colors.grey)),
                  color: Colors.grey.shade300.withOpacity(.7)),
            ),

            // payment order detail
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Milk Cream Bread',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text('37.000')
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                spreadRadius: 1,
                                blurRadius: 2,
                                color: Colors.black.withOpacity(.3))
                          ], borderRadius: BorderRadius.circular(10)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/products/product1.jpg',
                              width: 100,
                              height: 90,
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ]),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: const Icon(
                              Icons.remove_circle_outline,
                              size: 30,
                              color: customOrange,
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          const Text(
                            '2',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          const Icon(
                            Icons.add_circle_outline,
                            size: 30,
                            color: customOrange,
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),

            const Divider(),

            // order bill
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Total Bill',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(width: 1, color: customOrange)),
                    child: const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Subtotal',
                            ),
                            Text('90.000')
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Delivery fee',
                            ),
                            Text('31.000')
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Discount',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: customOrange),
                            ),
                            Text(
                              '-20.000',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: customOrange),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total price',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              Row(
                                children: [
                                  Text(
                                    '121.000',
                                    style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    '101.000',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),

                  // order discount
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: customWhite,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Food discount 20K',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Applied the best discount',
                                )
                              ],
                            ),
                            Icon(
                              Icons.check_circle,
                              color: customOrange,
                              size: 24,
                            )
                          ],
                        ),
                        const Divider(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('More voucher'),
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const VoucherPage()));
                                },
                                child: const Icon(Icons.arrow_forward))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        clipBehavior: Clip.antiAlias,
        height: 110,
        decoration: BoxDecoration(
            boxShadow: const [BoxShadow(color: Colors.white)],
            border: Border(
                top: BorderSide(width: 5, color: Colors.grey.withOpacity(.1)))),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.payments,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text('Cash'),
                    ],
                  ),
                  Icon(Icons.more_horiz)
                ],
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            SizedBox(
              width: 320,
              child: ElevatedButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(customOrange)),
                  child: const Text(
                    'Order',
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
