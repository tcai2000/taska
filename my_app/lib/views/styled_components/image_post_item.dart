import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app/views/constants/constants_export.dart';
import 'package:my_app/views/styled_components/styled_export.dart';

class ImagePostItem extends StatefulWidget {
  const ImagePostItem({super.key, required this.imageUrl});

  @override
  State<ImagePostItem> createState() => _ImagePostItemState();
  final String imageUrl;
}

class _ImagePostItemState extends State<ImagePostItem> {
  bool longPressImage = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPressEnd: (de) {
        if (mounted) {
          setState(() {
            longPressImage = false;
          });
        }
      },
      onLongPress: () {
        if (mounted) {
          setState(() {
            longPressImage = true;
          });
        }
        Future.delayed(const Duration(microseconds: 200), () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              contentPadding: EdgeInsets.zero,
              content: Container(
                decoration: BoxDecoration(
                    color: AppColor.whiteColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: const [
                          CircleAvatarComponent(
                            size: 32,
                            imageUrl:
                                "https://i.dummyjson.com/data/products/1/1.jpg",
                          ),
                          SizedBox(width: 10),
                          Text(
                            "joshua_l",
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 375,
                      child: Image.network(
                        "https://instagram.fdad1-3.fna.fbcdn.net/v/t51.2885-15/318833526_1821068541591191_6409861472965674755_n.jpg?stp=dst-jpg_e35&_nc_ht=instagram.fdad1-3.fna.fbcdn.net&_nc_cat=1&_nc_ohc=kCRrGP0rBq0AX8h8_u4&edm=ACWDqb8BAAAA&ccb=7-5&ig_cache_key=Mjk4OTM0ODkwNzcwOTY5NjgzNA%3D%3D.2-ccb7-5&oh=00_AfA84WwUQRCtlqILKgIr1TkhnHyDGX9F-pvmjsP47N7vtw&oe=63A395F5&_nc_sid=1527a3",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(AppIcons.heartIcon),
                          // SvgPicture.asset(AppIcons.profileIcon),
                          const Icon(Icons.account_circle_sharp),

                          SvgPicture.asset(AppIcons.shareIcon),
                          const Icon(Icons.more_vert_outlined)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
      },
      child: Stack(
        children: [
          SizedBox(
            height: double.maxFinite,
            child: Image.network(
              widget.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            right: 10,
            top: 10,
            child: SvgPicture.asset(
              AppIcons.galleryIcon,
            ),
          ),
          if (longPressImage)
            Positioned(
                child: Container(
              decoration: BoxDecoration(
                color: AppColor.blackColor.withOpacity(.2),
              ),
            ))
        ],
      ),
    );
  }
}
