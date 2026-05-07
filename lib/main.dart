import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              const SizedBox(
                height: 250,
                width: double.infinity,
                child: Image(
                  image: AssetImage(
                    "assets/peak tower.jpeg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(15, 200, 15, 15),
                child: Column(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(15),
                          margin: const EdgeInsets.only(top: 15),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                margin: const EdgeInsets.only(left: 95),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Nurain Mohamad Faizal",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge,
                                    ),
                                    const ListTile(
                                      contentPadding: EdgeInsets.all(0),
                                      title: Text("Software Engineering Student"),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 80,
                          height: 80,
                          margin: const EdgeInsets.only(left: 15),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(0, 0),
                                blurRadius: 10,
                                color: Colors.black.withOpacity(0.15),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: AssetImage(
                                "assets/profile.jpeg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Column(
                        children: <Widget>[
                          ListTile(
                            title: Text("About Me"),
                          ),
                          Divider(),
                          ListTile(
                            title: Text("Email"),
                            subtitle: Text("ainain074@gmail.com"),
                            leading: Icon(Icons.email),
                          ),
                          ListTile(
                            title: Text("Phone"),
                            subtitle: Text("017-5283109"),
                            leading: Icon(Icons.phone),
                          ),
                          ListTile(
                            title: Text("Birth Date"),
                            subtitle: Text("9th May 2004"),
                            leading: Icon(Icons.cake),
                          ),
                          ListTile(
                            title: Text("Life Motto"),
                            subtitle: Text("Live to the fullest."),
                            leading: Icon(Icons.star),
                          ),
                          ListTile(
                            title: Text("About"),
                            subtitle: Text(
                              "I am a software engineering student at Universiti Pendidikan Sultan Idris. I have a passion for coding and love to learn new technologies. I am currently learning Flutter and Dart.",
                            ),
                            leading: Icon(Icons.format_align_center),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}