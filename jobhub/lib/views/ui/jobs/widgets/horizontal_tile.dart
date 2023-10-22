import 'package:flutter/material.dart';
import 'package:jobhub/views/common/exports.dart';
import 'package:jobhub/views/common/height_spacer.dart';

class JobHorizontalTile extends StatelessWidget {
  const JobHorizontalTile({super.key, this.ontap});
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.only(right: 12),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          width: width * 0.7,
          height: hieght * 0.27,
          decoration: BoxDecoration(
            color: Color(kLightGrey.value),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/images/user.png',
                    ),
                  ),
                  const SizedBox(width: 15),
                  ReusableText(
                    text: 'Facebook',
                    style: appstyle(
                      20,
                      Color(kDark.value),
                      FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const HeightSpacer(size: 15),
              ReusableText(
                text: 'Senior Developer',
                style: appstyle(
                  20,
                  Color(kDark.value),
                  FontWeight.w600,
                ),
              ),
              ReusableText(
                text: 'Washington DC',
                style: appstyle(
                  16,
                  Color(kDarkGrey.value),
                  FontWeight.w600,
                ),
              ),
              const HeightSpacer(size: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ReusableText(
                    text: '15k/monthly',
                    style: appstyle(
                      16,
                      Color(kDark.value),
                      FontWeight.w600,
                    ),
                  ),
                  const CircleAvatar(
                    radius: 15,
                    child: Icon(Icons.chevron_right_outlined),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
