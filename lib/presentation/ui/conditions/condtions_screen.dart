import 'package:flutter/material.dart';
import 'package:yuktidea/presentation/widget/my_text.dart';
import 'package:yuktidea/services/api_services.dart';
import 'package:yuktidea/utils/colors.dart';

class ConditionsScreen extends StatefulWidget {
  const ConditionsScreen({super.key});

  @override
  State<ConditionsScreen> createState() => _ConditionsScreenState();
}

class _ConditionsScreenState extends State<ConditionsScreen> {
  ApiServices apiService = ApiServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            child: Row(
              children: [
                Image.asset('assets/terms.png'),
                const Column(
                  children: [
                    MyText(
                        text: 'Terms of Service',
                        colors: text1,
                        size: 18,
                        weight: FontWeight.w500),
                    MyText(
                        text: 'Update 16/03/2023',
                        colors: Color.fromRGBO(125, 126, 128, 1),
                        size: 14,
                        weight: FontWeight.w400)
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),

          //   Privacy policy
          const MyText(
              text: 'Privacy Policy',
              colors: text1,
              size: 14,
              weight: FontWeight.w500)
        ],
      )),
    );
  }
}
