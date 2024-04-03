import 'package:demo_app/components/Category/CategoriesItems.dart';
import 'package:demo_app/components/Category/CategoriesList.dart';
import 'package:demo_app/components/Home/CategoriesWidget.dart';
import 'package:demo_app/components/Home/PopularProductWidget.dart';
import 'package:demo_app/conf/const.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: customWhite,
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBar(
              backgroundColor: customWhite,
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
            ),
            Container(
              color: customWhite,
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Bread",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: customOrange),
                  ),
                ],
              ),
            ),
            // search bar
            Stack(
              children: [
                Container(
                  color: customWhite,
                  margin: const EdgeInsets.only(top: 0),
                  padding: const EdgeInsets.symmetric(vertical: 20),
                ),

                // search input
                Container(
                    height: 50,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 20),
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(.1),
                              spreadRadius: 3,
                              blurRadius: 3)
                        ]),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search',
                            ),
                            onChanged: (value) {},
                          ),
                        ),
                        const Icon(
                          Icons.search,
                          size: 25,
                          color: Colors.grey,
                        )
                      ],
                    )),
              ],
            ),

            // Categories title
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  // categories list
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Categories",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: customBrown),
                          ),
                        ]),
                  ),
                  const CategoryList(),

                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: CategoriesItems(),
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
