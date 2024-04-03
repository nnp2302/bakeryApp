import 'package:demo_app/conf/const.dart';
import 'package:demo_app/pages/orderDetail_page.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  String initValue = 'Status';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
          // physics: const AlwaysScrollableScrollPhysics(),
          children: [
            Column(
              children: [
                AppBar(
                  title: const Text(
                    'Order',
                    style: TextStyle(
                        color: customOrange,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  centerTitle: true,
                ),

                const Divider(),

                // dropdown button status
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 10, right: 5),
                        decoration: BoxDecoration(
                            color: customWhite,
                            border: Border.all(width: 1.5, color: Colors.grey),
                            borderRadius: BorderRadius.circular(100)),
                        child: DropdownButton<String>(
                          value: initValue,
                          onChanged: (value) {
                            setState(() {
                              initValue = value!;
                            });
                          },
                          underline: Container(
                            color: Colors.transparent,
                          ),
                          items: const [
                            DropdownMenuItem(
                                value: 'Status', child: Text('Status')),
                            DropdownMenuItem(
                                value: 'On delivery',
                                child: Text('On delivery')),
                            DropdownMenuItem(
                                value: 'Delivered', child: Text('Delivered')),
                            DropdownMenuItem(
                                value: 'Cancelled', child: Text('Cancelled'))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 12,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OrderDetailPage()));
                  },
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Row(
                          children: [
                            Text(
                              '1 Aug, 9:23 AM',
                              style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        margin: const EdgeInsets.symmetric(
                            vertical: 1, horizontal: 5),
                        elevation: 0,
                        color: Colors.white,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/orderImg.jpg',
                              width: 120,
                              height: 120,
                              fit: BoxFit.cover,
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Column(
                                  children: [
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'AVLCOD01',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 18),
                                          ),
                                        ),
                                        Text('155,000 VND')
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 6,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.check_circle,
                                              color: Colors.green.shade800,
                                              size: 20,
                                            ),
                                            const SizedBox(
                                              width: 6,
                                            ),
                                            Text(
                                              'Delivered',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.grey.shade700,
                                                  fontWeight: FontWeight.w500),
                                            )
                                          ],
                                        ),
                                        ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor: customOrange),
                                          child: const Text(
                                            'Order',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const Divider()
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OrderDetailPage()));
                  },
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Row(
                          children: [
                            Text(
                              '1 Aug, 9:23 AM',
                              style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        margin: const EdgeInsets.symmetric(
                            vertical: 1, horizontal: 5),
                        elevation: 0,
                        color: Colors.white,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/orderImg.jpg',
                              width: 120,
                              height: 120,
                              fit: BoxFit.cover,
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Column(
                                  children: [
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'AVLCOD02',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 18),
                                          ),
                                        ),
                                        Text('56,000 VND')
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 6,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.cancel,
                                              color: Colors.red.shade800,
                                              size: 20,
                                            ),
                                            const SizedBox(
                                              width: 6,
                                            ),
                                            Text(
                                              'Cancelled',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.grey.shade700,
                                                  fontWeight: FontWeight.w500),
                                            )
                                          ],
                                        ),
                                        ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor: customOrange),
                                          child: const Text(
                                            'Order',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const Divider()
                    ],
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Row(
                        children: [
                          Text(
                            '18 May, 7:30 PM',
                            style: TextStyle(
                                color: Colors.grey.shade800,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      margin: const EdgeInsets.symmetric(
                          vertical: 1, horizontal: 5),
                      elevation: 0,
                      color: Colors.white,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/orderImg.jpg',
                            width: 120,
                            height: 120,
                            fit: BoxFit.cover,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Column(
                                children: [
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'AVLCOD03',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 18),
                                        ),
                                      ),
                                      Text('204,000 VND')
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.check_circle,
                                            color: Colors.green.shade800,
                                            size: 20,
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          Text(
                                            'On delivery',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.grey.shade700,
                                                fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      ),
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: customOrange),
                                        child: const Text(
                                          'Order',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const Divider(),
                  ],
                ),
              ],
            ),
          ]),
    );
  }
}
