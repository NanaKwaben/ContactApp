import 'package:contactapp_assignment/contactdetail.dart';
import 'package:contactapp_assignment/homeView.dart';
import 'package:flutter/material.dart';

class ContactCall extends StatelessWidget {
  const ContactCall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1628149321186-7d4c5b1170f9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
              ),
            ),
          ),
          Positioned(
              bottom: 15,
              left: 20,
              child:
                  Icon(Icons.message_outlined, color: Color(0xff0000FF))),
          Positioned(
              bottom: 15,
              right: 40,
              child: Icon(Icons.mic_off_outlined, color: Color(0xff0000FF))),
          Positioned(
            bottom: 70,
            right: 225,
            child: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HomeView();
                  }));
                },
                icon: Icon(Icons.phone_callback, color: Color(0xffFF0000))),
          )
        ],
      ),
    );
  }
}
