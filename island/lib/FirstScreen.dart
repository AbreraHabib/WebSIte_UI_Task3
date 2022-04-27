import 'package:flutter/material.dart';
import 'constant.dart';
import 'SecondScreen.dart';
import 'imagestack.dart';
import 'buttonfile.dart';

enum City {
  Indo,
  Thai,
  China,
  Vitenam,
  SiriLanka,
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  Color Indo = Kdeactive;
  Color Thai = Kdeactive;
  Color China = Kdeactive;
  Color Vitenam = Kdeactive;
  Color SiriLanka = Kdeactive;
  void UpdateColor(City type) {
    if (type == City.Indo) {
      Indo = Kactive;
      Thai = Kdeactive;
      China = Kdeactive;
      Vitenam = Kdeactive;
      SiriLanka = Kdeactive;
    } else if (type == City.Thai) {
      Thai = Kactive;
      Indo = Kdeactive;
      China = Kdeactive;
      Vitenam = Kdeactive;
      SiriLanka = Kdeactive;
    } else if (type == City.China) {
      Thai = Kdeactive;
      Indo = Kdeactive;
      China = Kactive;
      Vitenam = Kdeactive;
      SiriLanka = Kdeactive;
    } else if (type == City.Vitenam) {
      Thai = Kdeactive;
      Indo = Kdeactive;
      China = Kdeactive;
      Vitenam = Kactive;
      SiriLanka = Kdeactive;
    } else if (type == City.SiriLanka) {
      Thai = Kdeactive;
      Indo = Kdeactive;
      China = Kdeactive;
      Vitenam = Kdeactive;
      SiriLanka = Kactive;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu,
                    ),
                    Center(
                      child: Text(
                        "Discover",
                        style: TextStyle(
                          color: Color.fromARGB(255, 55, 54, 54),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Icon(Icons.search),
                  ],
                ),
              ),
              Container(
                height: 210,
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 210,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            UpdateColor(City.Indo);
                          });
                        },
                        child: Button(
                          colors: Indo,
                          text: "Indonesia",
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 210,
                      child: GestureDetector(
                        onTap: (() {
                          setState(() {
                            UpdateColor(City.Thai);
                          });
                        }),
                        child: Button(
                          colors: Thai,
                          text: "ThaiLand",
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 210,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            UpdateColor(City.China);
                          });
                        },
                        child: Button(
                          colors: China,
                          text: "China",
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 210,
                      child: GestureDetector(
                        onTap: (() {
                          setState(() {
                            UpdateColor(City.Vitenam);
                          });
                        }),
                        child: Button(
                          colors: Vitenam,
                          text: "Vietnam",
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 210,
                      child: GestureDetector(
                        onTap: (() {
                          setState(() {
                            UpdateColor(City.SiriLanka);
                          });
                        }),
                        child: Button(
                          colors: SiriLanka,
                          text: "Sirilanka",
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 230,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    TextButton(
                      onPressed: null,
                      child: Column(
                        children: [
                          ImageStack(imageName: 'hunza.jpg', numrate: '4.7'),
                          Row(
                            children: [
                              Text(
                                'Hunza Valley',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 20),
                              Icon(
                                Icons.more_vert,
                                size: 14,
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.bed_outlined,
                                size: 12,
                                color: Kactive,
                              ),
                              Text(
                                " Hotels",
                                textAlign: TextAlign.left,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 150),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecondScreen()));
                      },
                      child: Column(
                        children: [
                          ImageStack(imageName: 'bali.jpg', numrate: '4.7'),
                          Row(
                            children: [
                              Text(
                                'Bali Island',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 20),
                              Icon(
                                Icons.more_vert,
                                size: 14,
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.bed_outlined,
                                size: 12,
                                color: Colors.teal,
                              ),
                              Text(
                                " Hotels",
                                style: TextStyle(color: Colors.black),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 150),
                    TextButton(
                      onPressed: null,
                      child: Column(
                        children: [
                          ImageStack(
                              imageName: 'hunzavalley.jpg', numrate: '4.7'),
                          Row(
                            children: [
                              Text(
                                'Hunza Valley',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 20),
                              Icon(
                                Icons.more_vert,
                                size: 14,
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.bed_outlined,
                                size: 12,
                                color: Kactive,
                              ),
                              Text(
                                " Hotels",
                                textAlign: TextAlign.left,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(50, 10, 50, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Top Destinations',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(color: Colors.teal),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                child: Row(
                  children: [
                    Expanded(
                        child: Card(
                      child: ListTile(
                        leading: Image(
                          image: AssetImage('images/Bandung.jpg'),
                          height: 50,
                          width: 50,
                        ),
                        title: Text(
                          'Bandung',
                          style: TextStyle(fontSize: 15),
                        ),
                        subtitle: Text(
                          'West Java',
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    )),
                    Expanded(
                        child: Card(
                      child: ListTile(
                        leading: Image(
                          image: AssetImage('images/lombok.jpg'),
                          height: 50,
                          width: 50,
                        ),
                        title: Text(
                          'Lombok',
                          style: TextStyle(fontSize: 15),
                        ),
                        subtitle: Text(
                          'NTB',
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ))
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.teal),
                margin: EdgeInsets.fromLTRB(20, 5, 20, 0),
                child: Center(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                      Icon(
                        Icons.home_outlined,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.compass_calibration_rounded,
                        color: Colors.grey,
                      ),
                      Icon(
                        Icons.star_border_outlined,
                        color: Colors.grey,
                      ),
                      Icon(
                        Icons.person,
                        color: Colors.grey,
                      )
                    ])),
              )
            ],
          )),
    );
  }
}
