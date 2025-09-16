import 'package:booklyapp/features/Home/widgets/Vertical_books_list.dart';
import 'package:booklyapp/features/Home/widgets/horezintal_books_list_future_builder.dart'
    show HorezintalListOfBooksFutureBuilder;
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});
  final SizedBox s1 = const SizedBox(height: 10);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(child: s1),

          SliverToBoxAdapter(child: HorezintalListOfBooksFutureBuilder()),

          SliverToBoxAdapter(child: s1),

          const SliverToBoxAdapter(
            child: Text(
              "Newest Books",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
          SliverToBoxAdapter(child: s1),

          SliverToBoxAdapter(child: VerticalListOfBooksFuturBuilder()),
        ],
      ),
    );
  }
}
