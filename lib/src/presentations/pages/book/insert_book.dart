import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_nusantara/src/core/no_glow.dart';
import 'package:test_nusantara/src/widgets/book_text_field.dart';

class AddBookPage extends StatefulWidget {
  const AddBookPage({super.key});

  @override
  State<AddBookPage> createState() => _AddBookPageState();
}

class _AddBookPageState extends State<AddBookPage> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Book"),
        elevation: 0,
      ),
      body: ScrollConfiguration(
        behavior: NoGlow(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Form(
            key: formKey,
            child: ListView(
              children: [
                AppBookTextField(
                  hint: "ISBN",
                  controller: TextEditingController(),
                ),
                AppBookTextField(
                  hint: "Title",
                  controller: TextEditingController(),
                ),
                AppBookTextField(
                  hint: "Subtitle",
                  controller: TextEditingController(),
                ),
                AppBookTextField(
                  hint: "Author",
                  controller: TextEditingController(),
                ),
                AppBookTextField(
                  hint: "Published",
                  controller: TextEditingController(),
                ),
                AppBookTextField(
                  hint: "Publisher",
                  controller: TextEditingController(),
                ),
                AppBookTextField(
                  hint: "Pages",
                  controller: TextEditingController(),
                ),
                AppBookTextField(
                  hint: "Description",
                  controller: TextEditingController(),
                ),
                AppBookTextField(
                  hint: "Website",
                  controller: TextEditingController(),
                ),
                SizedBox(height: 10.h),
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {}
                  },
                  child: const Text("Insert"),
                ),
                SizedBox(height: 10.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
