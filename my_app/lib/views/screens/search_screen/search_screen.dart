import 'package:flutter/cupertino.dart';
import 'widgets/search_exports.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [AppBarSearch(), Expanded(child: SearchStaggeredGrid())],
    );
  }
}
