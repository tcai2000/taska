import 'package:flutter/material.dart';
import 'package:my_app/models/post_model.dart';
import 'package:my_app/models/story_model.dart';
import 'package:my_app/views/screens/home_screen/widgets/post_list_widget.dart';

import 'widgets/home_exports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HomeAppBarWidget(),
        const SizedBox(height: 12),
        StoryListWidget(storyModelList: [
          StoryModel(
            userName: "tcai2000",
            imageUrl: "https://i.dummyjson.com/data/products/1/1.jpg",
            isView: false,
            listStory: [],
          ),
          StoryModel(
            userName: "tcai2000",
            imageUrl: "https://i.dummyjson.com/data/products/1/1.jpg",
            isView: false,
            listStory: [],
          ),
          StoryModel(
            userName: "tcai2000",
            imageUrl: "https://i.dummyjson.com/data/products/1/1.jpg",
            isView: false,
            listStory: [],
          ),
          StoryModel(
            userName: "tcai2000",
            imageUrl: "https://i.dummyjson.com/data/products/1/1.jpg",
            isView: false,
            listStory: [],
          ),
          StoryModel(
            userName: "tcai2000",
            imageUrl: "https://i.dummyjson.com/data/products/1/1.jpg",
            isView: false,
            listStory: [],
          ),
          StoryModel(
            userName: "tcai2000",
            imageUrl: "https://i.dummyjson.com/data/products/1/1.jpg",
            isView: false,
            listStory: [],
          ),
          StoryModel(
            userName: "tcai2000",
            imageUrl: "https://i.dummyjson.com/data/products/1/1.jpg",
            isView: false,
            listStory: [],
          ),
          StoryModel(
            userName: "tcai2000",
            imageUrl: "https://i.dummyjson.com/data/products/1/1.jpg",
            isView: false,
            listStory: [],
          ),
          StoryModel(
            userName: "tcai2000",
            imageUrl: "https://i.dummyjson.com/data/products/1/1.jpg",
            isView: false,
            listStory: [],
          ),
          StoryModel(
            userName: "tcai2000",
            imageUrl: "https://i.dummyjson.com/data/products/1/1.jpg",
            isView: false,
            listStory: [],
          ),
          StoryModel(
            userName: "tcai2000",
            imageUrl: "https://i.dummyjson.com/data/products/1/1.jpg",
            isView: false,
            listStory: [],
          ),
          StoryModel(
            userName: "tcai2000",
            imageUrl: "https://i.dummyjson.com/data/products/1/1.jpg",
            isView: false,
            listStory: [],
          ),
        ]),
        Expanded(
          child: PostListWidget(
            postModelList: [PostModel()],
          ),
        )
      ],
    );
  }
}
