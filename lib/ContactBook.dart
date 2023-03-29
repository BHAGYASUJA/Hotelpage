import 'package:flutter/material.dart';

class contactbook extends StatelessWidget {
  const contactbook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var name = ["Adam", "Bhavana", "Clerin", "Darson", "febin"];
    var images = [
      "assets/Stickers/a.jpg",
      "assets/Stickers/b.jpg",
      "assets/Stickers/c.jpg",
      "assets/Stickers/d.jpg",
      "assets/Stickers/f.jpg"
    ];
    var p =["9656430050","8979797990","987654432","987654321","897867566"];
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Contacts"),
      ),
      body:
      ListView(
      children: List.generate(5,
          (index) =>
          Card(
            child: ListTile(
              title:  Text(name[index]),
              subtitle: Text(" ${p[index]}"),
              leading: Image.asset(images[index]),
              trailing: const Icon(Icons.contact_mail_outlined),
            ),
          ),
    )
      ),

        );



  }
}