import 'package:flutter/material.dart';
import 'package:my_app/views/constants/colors.dart';

class NotifyItem extends StatelessWidget {
  const NotifyItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          SizedBox(
            height: 60,
            width: 60,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network(
                "https://instagram.fdad1-3.fna.fbcdn.net/v/t51.2885-15/318833526_1821068541591191_6409861472965674755_n.jpg?stp=dst-jpg_e35&_nc_ht=instagram.fdad1-3.fna.fbcdn.net&_nc_cat=1&_nc_ohc=kCRrGP0rBq0AX8h8_u4&edm=ACWDqb8BAAAA&ccb=7-5&ig_cache_key=Mjk4OTM0ODkwNzcwOTY5NjgzNA%3D%3D.2-ccb7-5&oh=00_AfA84WwUQRCtlqILKgIr1TkhnHyDGX9F-pvmjsP47N7vtw&oe=63A395F5&_nc_sid=1527a3",
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: RichText(
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              text: const TextSpan(
                style: TextStyle(
                  color: AppColor.blackColor,
                  fontWeight: FontWeight.w500,
                ),
                children: [
                  TextSpan(
                    text:
                        "kiero_d, zackjohn and 26 others liked yojhj hjkhj hjhur photo.",
                  ),
                  TextSpan(
                    text: "3h",
                    style: TextStyle(
                      color: AppColor.greyColor500,
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(width: 10),
          Image.network(
            "https://instagram.fdad1-3.fna.fbcdn.net/v/t51.2885-15/318833526_1821068541591191_6409861472965674755_n.jpg?stp=dst-jpg_e35&_nc_ht=instagram.fdad1-3.fna.fbcdn.net&_nc_cat=1&_nc_ohc=kCRrGP0rBq0AX8h8_u4&edm=ACWDqb8BAAAA&ccb=7-5&ig_cache_key=Mjk4OTM0ODkwNzcwOTY5NjgzNA%3D%3D.2-ccb7-5&oh=00_AfA84WwUQRCtlqILKgIr1TkhnHyDGX9F-pvmjsP47N7vtw&oe=63A395F5&_nc_sid=1527a3",
            fit: BoxFit.cover,
            height: 60,
          ),
        ],
      ),
    );
  }
}
