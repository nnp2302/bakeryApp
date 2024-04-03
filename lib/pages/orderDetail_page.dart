import 'dart:math';

import 'package:demo_app/conf/const.dart';
import 'package:flutter/material.dart';

class OrderDetailPage extends StatelessWidget {
  const OrderDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(children: [
          // order detail appbar
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
              'Order Detail',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivered',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '1 Aug, 9:23 AM',
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text('Order AVLCOD01')
                  ],
                )
              ],
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          const Divider(),

          // delivery detail
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Delivery detail',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade900,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.store_mall_directory_outlined,
                      color: customOrange,
                      size: 30,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Store address',
                            style: TextStyle(color: Colors.grey.shade700),
                          ),
                          const Text(
                            '828 Sư Vạn Hạnh Q.10 ',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    )
                  ],
                ),

                // dots icon
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4, vertical: 3),
                  child: Row(
                    children: [
                      Icon(
                        Icons.more_vert,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),

                // client address
                Row(
                  children: [
                    const Icon(
                      Icons.my_location,
                      size: 30,
                      color: Colors.green,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Devivery address',
                            style: TextStyle(color: Colors.grey.shade700),
                          ),
                          const Text(
                            '121 Tô Hiến Thành',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),

          // end delivery detail
          const Divider(),

          // order products
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Dishes',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade900,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 12,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Milk Cream Bread',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text('2', style: TextStyle(fontWeight: FontWeight.w500))
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Chocolate Cupcake',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text('6', style: TextStyle(fontWeight: FontWeight.w500))
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider(),

          // order payment
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Payment detail',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade900,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 12,
                ),

                // subtotal
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'SubTotal',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text('157.000',
                          style: TextStyle(fontWeight: FontWeight.w500))
                    ],
                  ),
                ),

                // delivery fee
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delivery fee',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text('18.000',
                          style: TextStyle(fontWeight: FontWeight.w500))
                    ],
                  ),
                ),

                // discount fee
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Discount',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text('-31.000',
                          style: TextStyle(fontWeight: FontWeight.w500))
                    ],
                  ),
                ),
                const Divider(),

                // order total
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text('155.000',
                          style: TextStyle(fontWeight: FontWeight.w500))
                    ],
                  ),
                ),
                const Divider(),

                // order payment
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'MoMo Payment',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text('155.000',
                          style: TextStyle(fontWeight: FontWeight.w500))
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 260,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(customOrange)),
              onPressed: () {},
              child: const Text(
                'Order',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
