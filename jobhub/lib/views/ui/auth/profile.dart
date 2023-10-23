import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:jobhub/constants/app_constants.dart';
import 'package:jobhub/views/common/app_bar.dart';
import 'package:jobhub/views/common/drawer/drawer_widget.dart';
import 'package:jobhub/views/common/exports.dart';
import 'package:jobhub/views/common/reusable_text.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: CustomAppBar(
          text: "Profile",
          child: DrawerWidget(),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            width: width,
            height: hieght * 0.12,
            decoration: BoxDecoration(
              color: Color(kLight.value),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  child: CachedNetworkImage(
                    imageUrl:
                        'https://pbs.twimg.com/media/F5NOMSCWAAAtf-d?format=jpg&name=large',
                    width: 80,
                    height: 100,
                  ),
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ReusableText(
                      text: 'Ronaldo',
                      style: appstyle(
                        20,
                        Color(kDark.value),
                        FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          MaterialIcons.location_pin,
                          color: Color(kLightGrey.value),
                        ),
                        const SizedBox(width: 5),
                        ReusableText(
                          text: 'Washington DC',
                          style: appstyle(
                            20,
                            Color(kDarkGrey.value),
                            FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Feather.edit,
                    size: 18,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
