import 'package:flutter/material.dart';
import 'package:my_app/views/constants/colors.dart';
import 'package:my_app/views/styled_components/circle_avatar_component.dart';

class ProfileInformation extends StatefulWidget {
  const ProfileInformation({super.key});

  @override
  State<ProfileInformation> createState() => _ProfileInformationState();
}

class _ProfileInformationState extends State<ProfileInformation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              CircleAvatarComponent(
                size: 100,
                imageUrl:
                    'https://instagram.fdad1-3.fna.fbcdn.net/v/t51.2885-15/318833526_1821068541591191_6409861472965674755_n.jpg?stp=dst-jpg_e35&_nc_ht=instagram.fdad1-3.fna.fbcdn.net&_nc_cat=1&_nc_ohc=kCRrGP0rBq0AX8h8_u4&edm=ACWDqb8BAAAA&ccb=7-5&ig_cache_key=Mjk4OTM0ODkwNzcwOTY5NjgzNA%3D%3D.2-ccb7-5&oh=00_AfA84WwUQRCtlqILKgIr1TkhnHyDGX9F-pvmjsP47N7vtw&oe=63A395F5&_nc_sid=1527a3',
              ),
              Spacer(),
              InformItem(
                title: 'Posts',
                number: 54,
              ),
              Spacer(),
              InformItem(
                title: 'Followers',
                number: 834,
              ),
              Spacer(),
              InformItem(
                title: 'Following',
                number: 162,
              ),
              Spacer(),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            "Jacob West",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
          const Text(
            "Digital goodies designer @pixsellz Everything is designed.",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            padding: const EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
                border: Border.all(
                  color: AppColor.greyColor500,
                ),
                borderRadius: BorderRadius.circular(10)),
            child: const Center(
              child: Text(
                'Edit profile',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class InformItem extends StatelessWidget {
  const InformItem({
    Key? key,
    this.title = "",
    this.number = 0,
  }) : super(key: key);
  final String? title;
  final int? number;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "$number",
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          title ?? "",
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
