import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app/models/post_model.dart';
import 'package:my_app/views/constants/constants_export.dart';
import 'package:my_app/views/screens/home_screen/widgets/post_item.dart';
import 'package:my_app/views/styled_components/styled_export.dart';
import 'package:readmore/readmore.dart';

// class PostListWidget extends StatelessWidget {
//   const PostListWidget({super.key, required this.postModelList});
//   final List<PostModel> postModelList;
//   @override
//   Widget build(BuildContext context) {

//   }
// }

class PostListWidget extends StatefulWidget {
  const PostListWidget({super.key, required this.postModelList});
  final List<PostModel> postModelList;

  @override
  State<PostListWidget> createState() => _PostListWidgetState();
}

class _PostListWidgetState extends State<PostListWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        PostItem(),
        PostItem(),
        PostItem(),
        PostItem(),
        PostItem(),
      ],
    );
    ;
  }
}
