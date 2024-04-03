import 'package:demo_app/conf/const.dart';
import 'package:demo_app/pages/productDetail_page.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CategoriesItems extends StatelessWidget {
  const CategoriesItems({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.only(bottom: 60),
      childAspectRatio: 1,
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: products.map((item) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              blurRadius: 3,
              spreadRadius: 3,
              color: Colors.black.withOpacity(.1),
            )
          ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ProductDetailPage(product: item)));
                },
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  child: Image.asset(
                    item.img!,
                    fit: BoxFit.cover,
                    width: 160,
                    height: 100,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
                child: Column(children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.productName!,
                        style: const TextStyle(
                            color: Color(0xFFA0522D),
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "${NumberFormat('###,###.###').format(item.productPrice)} VNĐ",
                        style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.shopping_bag_outlined,
                          size: 26,
                          color: Color(0xFFA0522D),
                        ),
                      )
                    ],
                  )
                ]),
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
