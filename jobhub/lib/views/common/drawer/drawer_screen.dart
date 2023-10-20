import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:jobhub/controllers/zoom_provider.dart';
import 'package:jobhub/views/common/exports.dart';
import 'package:provider/provider.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key, required this.valueSetter});
  final ValueSetter valueSetter;
  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ZoomNotifier>(
      builder: ((context, zoomNotifier, child) {
        return GestureDetector(
          onTap: () {
            ZoomDrawer.of(context)!.toggle();
          },
          child: Scaffold(
            backgroundColor: Color(kLightBlue.value),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Draweritem(
                  icon: AntDesign.home,
                  text: 'Home',
                  index: 0,
                  color: zoomNotifier.currentIndex == 0
                      ? Color(kLight.value)
                      : Color(kDarkGrey.value),
                ),
                Draweritem(
                  icon: Ionicons.chatbubble_outline,
                  text: 'Chat',
                  index: 1,
                  color: zoomNotifier.currentIndex == 1
                      ? Color(kLight.value)
                      : Color(kDarkGrey.value),
                ),
                Draweritem(
                  icon: Ionicons.bookmark_outline,
                  text: 'Bookmarks',
                  index: 2,
                  color: zoomNotifier.currentIndex == 2
                      ? Color(kLight.value)
                      : Color(kDarkGrey.value),
                ),
                Draweritem(
                  icon: MaterialCommunityIcons.devices,
                  text: 'Device Mng',
                  index: 3,
                  color: zoomNotifier.currentIndex == 3
                      ? Color(kLight.value)
                      : Color(kDarkGrey.value),
                ),
                Draweritem(
                  icon: FontAwesome.user_circle_o,
                  text: 'Profile',
                  index: 4,
                  color: zoomNotifier.currentIndex == 4
                      ? Color(kLight.value)
                      : Color(kDarkGrey.value),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}

class Draweritem extends StatelessWidget {
  const Draweritem(
      {super.key,
      required this.icon,
      required this.text,
      required this.index,
      required this.color});

  final IconData icon;
  final String text;
  final int index;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(
        text,
        style: appstyle(
          12,
          color,
          FontWeight.w400,
        ),
      ),
    );
  }
}
