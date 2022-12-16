import 'package:app/components/shared/konstants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

const categories = [1, 2, 3, 4];

class CategoryListPage extends StatelessWidget {
  static const routeName = "CategoryListPage";
  const CategoryListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [],
          body: CustomScrollView(slivers: <Widget>[
            // const SliverAppBar(
            //   pinned: true,
            //   expandedHeight: 250.0,
            //   flexibleSpace: FlexibleSpaceBar(
            //     title: Text('Custom Scroll View'),
            //   ),
            // ),
            // SliverGrid(
            //   gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            //     maxCrossAxisExtent: 200.0,
            //     mainAxisSpacing: 10.0,
            //     crossAxisSpacing: 10.0,
            //     childAspectRatio: 4.0,
            //   ),
            //   delegate: SliverChildBuilderDelegate(
            //     (BuildContext context, int index) {
            //       return Container(
            //         alignment: Alignment.center,
            //         color: Colors.amber,
            //         child: Text('$index'),
            //       );
            //     },
            //     childCount: 20,
            //   ),
            // ),

            SliverFixedExtentList(
              itemExtent: 400,
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    color: Colors.red,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Category title", style: kHeadingTextStyle),
                        Container(
                          height: 100,
                          child: CustomScrollView(
                            scrollDirection: Axis.horizontal,
                            slivers: [
                              SliverFixedExtentList(
                                itemExtent: 100,
                                delegate: SliverChildBuilderDelegate(
                                    (context, index) => Container(
                                          margin: EdgeInsets.only(right: 10),
                                          color: Colors.amber,
                                        )),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
                childCount: categories.length,
              ),
            )
          ]),
        ),
      ),
    );
  }
}
