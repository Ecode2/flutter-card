import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          title: const Center(
              child: Text(
            'Business Card',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
        ),
        body: Container(
            decoration: const BoxDecoration(
                gradient: RadialGradient(
                    colors: [Colors.blueAccent, Colors.lightBlueAccent])),
            child: Center(
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    child: const SizedBox(
                        height: 200,
                        width: 350,
                        child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(children: [
                                    CircleAvatar(
                                      minRadius: 20,
                                      maxRadius: 30,
                                      backgroundImage:
                                          AssetImage('images/profile.png'),
                                    ),
                                    Text('E_code',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w900)),
                                    Text('Software Engineer',
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w100)),
                                    SizedBox(height: 8),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(children: [
                                          Icon(Icons.phone,
                                              size: 20, color: Colors.blue),
                                          SizedBox(width: 5),
                                          Text('+234 906 063 6536')
                                        ]),
                                        Row(children: [
                                          Icon(Icons.public,
                                              size: 20, color: Colors.blue),
                                          SizedBox(width: 5),
                                          Text('ecodeproject.tech')
                                        ]),
                                        Row(children: [
                                          Icon(Icons.mail_outline,
                                              size: 20, color: Colors.blue),
                                          SizedBox(width: 5),
                                          Text('ecode5814@gmail.com')
                                        ]),
                                      ],
                                    ),
                                  ]),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text('Skills',
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w600)),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('Web Development',
                                                style: TextStyle(fontSize: 13)),
                                            Text('Desktop App dev',
                                                style: TextStyle(fontSize: 13)),
                                            Text('Mobile App dev',
                                                style: TextStyle(fontSize: 13)),
                                            Text('Web Scraping',
                                                style: TextStyle(fontSize: 13)),
                                            Text('Task Automation',
                                                style: TextStyle(fontSize: 13)),
                                            Text('AI integration',
                                                style: TextStyle(fontSize: 13)),
                                          ],
                                        )
                                      ])
                                ])))))));
  }
}
