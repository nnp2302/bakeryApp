import 'package:demo_app/conf/const.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: categoriesImg.asMap().entries.map<Widget>((val) {
            final int index = val.key;
            final Object item = val.value;
            return Container(
              margin: index == 0
                  ? const EdgeInsets.only(right: 10, top: 10, bottom: 10)
                  : const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              decoration: BoxDecoration(
                color: index != 0 ? Colors.white : customWhite,
                border: Border.all(width: 1, color: const Color(0xFFA0522D)),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    (item as Map)['path'],
                    width: 20,
                    height: 20,
                    color: const Color(0xFFA0522D),
                    filterQuality: FilterQuality.medium,
                  ),
                  const Padding(padding: EdgeInsets.symmetric(horizontal: 2)),
                  Text(
                    (item)['name'],
                    style:
                        const TextStyle(color: Color(0xFFA0522D), fontSize: 14),
                  )
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
