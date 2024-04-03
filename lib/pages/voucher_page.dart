import 'package:demo_app/conf/const.dart';
import 'package:flutter/material.dart';

class VoucherPage extends StatefulWidget {
  const VoucherPage({super.key});

  @override
  State<VoucherPage> createState() => _VoucherPageState();
}

class _VoucherPageState extends State<VoucherPage> {
  bool _enabled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            // voucher appbar
            AppBar(
              title: const Text(
                'Voucher',
                style: TextStyle(
                    color: customOrange,
                    fontSize: 28,
                    fontWeight: FontWeight.w500),
              ),
              centerTitle: true,
              leading: InkWell(
                onTap: () => Navigator.pop(context),
                child: const Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: customOrange,
                ),
              ),
            ),

            const SizedBox(
              height: 12,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16, bottom: 6),
              child: Row(
                children: [
                  Text(
                    'Available',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),

            // voucher list
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Card(
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomLeft: Radius.circular(15)),
                          child: Image.asset(
                            'assets/images/voucher.jpg',
                            width: 150,
                            height: 170,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Delivery Discount 20%',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(
                                  height: 14,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Expire:',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey.shade700),
                                    ),
                                    Text(
                                      '30/05/2024',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey.shade700),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 14,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Require:',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey.shade700),
                                    ),
                                    Text(
                                      '200K Order',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey.shade700),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 14,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    ElevatedButton(
                                        style: const ButtonStyle(
                                            backgroundColor:
                                                MaterialStatePropertyAll(
                                                    customOrange)),
                                        onPressed: () {},
                                        child: const Text(
                                          'Apply',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(left: 16, bottom: 6, top: 12),
              child: Row(
                children: [
                  Text(
                    'Unavailable',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Card(
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomLeft: Radius.circular(15)),
                          child: Image.asset(
                            'assets/images/voucher.jpg',
                            width: 150,
                            height: 170,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Delivery Discount 25%',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(
                                  height: 14,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Expire:',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey.shade700),
                                    ),
                                    Text(
                                      '30/05/2024',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey.shade700),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 14,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Require:',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey.shade700),
                                    ),
                                    Text(
                                      '300K Order',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey.shade700),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 14,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStatePropertyAll(
                                                    _enabled
                                                        ? customOrange
                                                        : Colors.grey)),
                                        onPressed: _enabled ? () {} : null,
                                        child: const Text(
                                          'Apply',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
