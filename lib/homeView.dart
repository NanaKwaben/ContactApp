import 'package:contactapp_assignment/contactcall.dart';
import 'package:contactapp_assignment/contactdetail.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  get bottomNavigationBar => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1611F6),
      body: Container(
          decoration: BoxDecoration(color: Colors.white),
          margin: EdgeInsets.only(top: 100),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Text("Address Book", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold), ),
                        Text("Contact List 300", textDirection: TextDirection.ltr,
                            style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(children: [
                      Icon(Icons.search),
                      Icon(Icons.more_vert_rounded)
                    ]),
                  )
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1546525848-3ce03ca516f6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80")),
              title: Text(
                "Kwaku DHL Man",
              ),
              subtitle: Text("Yesterday 10:29"),
              trailing: Icon(Icons.call_received)
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ContactDetail();
                }));
              },
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1628149321186-7d4c5b1170f9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")),
              title: Text(
                "Opoku Manu", style: TextStyle(color: Colors.red) 
              ),
              subtitle: Text("Sunday 07:30", style: TextStyle(color: Colors.red)),
              trailing: Icon(Icons.call_missed_sharp,color: Colors.red)),
          
            ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1559172802-f5de3d1ed91d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80https://images.unsplash.com/photo-1559172802-f5de3d1ed91d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")),
              title: Text(
                "Akua Achiaa",
              ),
              subtitle: Text("Sunday 9:40"),
              trailing: Icon(Icons.call_received),
            ),
            ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1521510895919-46920266ddb3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")),
              title: Text(
                "New friend",
              ),
              subtitle: Text("Sunday 07:30"),
              trailing: Icon(Icons.call_received),
            ),
            ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1463453091185-61582044d556?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80")),
              title: Text(
                "Mechanic",
              ),
              subtitle: Text("Sunday 07:12"),
              trailing: Icon(Icons.call_received),
            )
          ])),
    );
  }
}
