import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:jobhub/views/common/exports.dart';
import 'package:jobhub/views/ui/search/widgets/custom_field.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController search = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(kOrange.value),
        iconTheme: IconThemeData(color: Color(kLight.value)),
        title: CustomField(
          hintText: 'Search for a job',
          suffixIcon: GestureDetector(
            onTap: () => setState(() {}),
            child: const Icon(
              AntDesign.search1,
            ),
          ),
          controller: search,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset(
                'assets/images/optimized_search.png',
              ),
            ),
            ReusableText(
              text: 'Start Searching For Jobs',
              style: appstyle(
                24,
                Color(kDark.value),
                FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
