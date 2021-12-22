import 'package:contactapp_assignment/contactcall.dart';
import 'package:flutter/material.dart';

class ContactDetail extends StatelessWidget {
  const ContactDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        bottom: PreferredSize(
          child: Container(
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1628149321186-7d4c5b1170f9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80"),
              radius: 65,
            ),
          ),
          preferredSize: Size.fromHeight(100),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Opoku Manu",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.amber,
                child: IconButton(
                  color: Colors.white,
                  padding: EdgeInsets.all(20),
                  iconSize: 20,
                  icon: Icon(Icons.mail),
                  onPressed: () {},
                ),
              ),
              title: Text("yankynovych@hotmail.com"),
              subtitle: Text("email address"),
            ),
            SizedBox(height: 5),
            ListTile(
                leading: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.black,
                  child: IconButton(
                    color: Colors.white,
                    padding: EdgeInsets.all(20),
                    iconSize: 20,
                    icon: Icon(Icons.home),
                    onPressed: () {},
                  ),
                ),
                title: Text("03028548512"),
                subtitle: Text("Home")),
            SizedBox(height: 5),
            ListTile(
                leading: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.red,
                  child: IconButton(
                    color: Colors.white,
                    padding: EdgeInsets.all(20),
                    iconSize: 20,
                    icon: Icon(Icons.phone_iphone),
                    onPressed: () {},
                  ),
                ),
                title: Text("+2335488770273"),
                subtitle: Text("Mobile")),
            SizedBox(height: 20),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color(0xff1976d2),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(70.0, 20, 70, 20),
                child: Text("Call", style: TextStyle(color: Colors.white)),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ContactCall();
                }));
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.lightBlueAccent,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined, color: Colors.black),
              title: Text(
                "(Icons.message_outlined",
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_page_sharp, color: Colors.black),
              title: Text("contact_phone")),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_applications, color: Colors.black),
              title: Text("Icons.settings_applications_outlined")),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.mail_sharp,
              color: Colors.black,
            ),
            title: Text("Icons.mail_sharp"),
          ),
        ],
      ),
    );
  }
}
