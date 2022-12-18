import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app/views/constants/constants_export.dart';
import 'package:my_app/views/styled_components/styled_export.dart';
import 'package:readmore/readmore.dart';

class PostItem extends StatefulWidget {
  const PostItem({super.key});

  @override
  State<PostItem> createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  int currentImage = 0;

  final CarouselController slideController = CarouselController();
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                const CircleAvatarComponent(
                  size: 32,
                  imageUrl: "https://i.dummyjson.com/data/products/1/1.jpg",
                ),
                const SizedBox(width: 10),
                const Text(
                  "joshua_l",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                SvgPicture.asset(AppIcons.menuIcon)
              ],
            ),
          ),
          const SizedBox(height: 10),
          Stack(
            children: [
              CarouselSlider.builder(
                itemCount: imgList.length,
                carouselController: slideController,
                itemBuilder: (context, index, realIndex) {
                  return Image.network(
                    imgList[index],
                    fit: BoxFit.cover,
                  );
                },
                options: CarouselOptions(
                  height: 500,
                  viewportFraction: 1,
                  autoPlay: true,
                  enableInfiniteScroll: false,
                  onPageChanged: (index, reason) {
                    if (mounted) {
                      setState(() {
                        currentImage = index;
                      });
                    }
                  },
                ),
              ),
              Positioned(
                right: 10,
                top: 10,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: AppColor.blackColor.withOpacity(0.3),
                      border: Border.all(color: AppColor.whiteColor)),
                  child: Text(
                    "${currentImage + 1}/${imgList.length}",
                    style: const TextStyle(
                        color: AppColor.whiteColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    SvgPicture.asset(AppIcons.likeIcon),
                    const SizedBox(width: 10),
                    SvgPicture.asset(AppIcons.commentIcon),
                    const SizedBox(width: 10),
                    SvgPicture.asset(AppIcons.shareIcon),
                    const Spacer(),
                    ...imgList.asMap().entries.map((entry) {
                      return Container(
                        height: 6,
                        width: 6,
                        margin: const EdgeInsets.symmetric(horizontal: 2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: entry.key == currentImage
                              ? AppColor.blueColor500
                              : AppColor.blackColor.withOpacity(0.15),
                        ),
                      );
                    }).toList(),
                    const Spacer(),
                    const Icon(Icons.bookmark_border_sharp)
                  ],
                ),
                const SizedBox(height: 4),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "6 likes",
                  ),
                ),
                const ReadMoreText(
                  'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                  trimLines: 2,
                  colorClickableText: AppColor.blackColor,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'more',
                  trimExpandedText: 'less',
                  moreStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: AppColor.blueColor500,
                  ),
                  lessStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: AppColor.blueColor500,
                  ),
                ),
                const SizedBox(height: 4),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Show all of 3 comments",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
