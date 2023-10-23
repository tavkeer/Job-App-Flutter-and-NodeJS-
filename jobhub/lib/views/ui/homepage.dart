import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobhub/views/common/app_bar.dart';
import 'package:jobhub/views/common/drawer/drawer_widget.dart';
import 'package:jobhub/views/common/exports.dart';
import 'package:jobhub/views/common/heading_widget.dart';
import 'package:jobhub/views/common/height_spacer.dart';
import 'package:jobhub/views/common/search.dart';
import 'package:jobhub/views/common/vertical_tile.dart';
import 'package:jobhub/views/ui/jobs/job_page.dart';
import 'package:jobhub/views/ui/jobs/widgets/horizontal_tile.dart';
import 'package:jobhub/views/ui/search/searchpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: CustomAppBar(
          actions: [
            Padding(
              padding: EdgeInsets.all(13),
              child: CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage('assets/images/user.png'),
              ),
            )
          ],
          child: DrawerWidget(),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeightSpacer(size: 10),
                Text(
                  "Search\nFind & Apply",
                  style: appstyle(40, Color(kDark.value), FontWeight.bold),
                ),
                const HeightSpacer(size: 10),
                SearchWidget(ontap: () => Get.to(() => const SearchPage())),
                const HeightSpacer(size: 30),
                HeadingWidget(
                  text: 'Popular Jobs',
                  ontap: () {},
                ),
                SizedBox(
                  height: hieght * 0.28,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return JobHorizontalTile(ontap: () {});
                    },
                  ),
                ),
                const HeightSpacer(size: 20),
                HeadingWidget(
                  text: 'Recently Posted',
                  ontap: () {},
                ),
                const HeightSpacer(size: 20),
                const VerticalTile(
                    // ontap: () => Get.to(
                    // () => const JobPage(),
                    // ),
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
