import 'package:bookly_app/Features/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 30, bottom: 10, top: 10),
          //child: BookListViewItem(),
          child: Text('data'),
        );
      },
    );
  }
}
