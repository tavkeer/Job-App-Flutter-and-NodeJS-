import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:jobhub/views/common/app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: CustomAppBar(
          actions: const [
            Padding(
              padding: EdgeInsets.all(13),
              child: CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage('assets/images/user.png'),
              ),
            )
          ],
          child: drawerWidget(),
        ),
      ),
    );
  }

  Widget drawerWidget() {
    return GestureDetector(
      onTap: () => ZoomDrawer.of(context)!.toggle(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SvgPicture.asset('assets/icons/menu.svg'),
      ),
    );
  }
}
