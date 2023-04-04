import 'package:flutter/material.dart';
import 'package:whatsapp_app/widgets/contacts_list.dart';
import 'package:whatsapp_app/widgets/web_profile_bar.dart';

class WebScreenLauyout extends StatelessWidget {
  const WebScreenLauyout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  WebProfileBar(),
                  //web search bar
                  ContactsList(),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/backgroundImage.png'),
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
