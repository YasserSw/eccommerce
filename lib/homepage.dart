import 'package:flutter/material.dart';
import 'package:flutter_application_2/customcontianer.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int Selectedindex = 0;

  Key? key;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.pinkAccent,
            selectedItemColor: Colors.orange,
            onTap: (val) {
              setState(() {
                Selectedindex = val;
                print(val);
              });
            },
            currentIndex: Selectedindex,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                ),
                label: "homepage",
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.workspaces_filled), label: "products"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_2), label: "Myaccount"),
            ]),
        body: Container(
          padding: EdgeInsets.all(20),
          child: ListView(
            physics: ScrollPhysics(),
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        hintText: "Search",
                        hintStyle:
                            TextStyle(fontSize: 17, color: Colors.black38),
                        filled: true,
                        fillColor: Colors.grey[400],
                        prefixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.menu_rounded))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Text(
                  "categories",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.75,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Customcolumn(key, "men", Icon(Icons.man_2_sharp)),
                    SizedBox(
                      width: 40,
                    ),
                    Customcolumn(key, "women", Icon(Icons.woman_2)),
                    SizedBox(
                      width: 40,
                    ),
                    Column(
                      children: [
                        Container(
                          child: CircleAvatar(
                            child: Icon(
                              Icons.laptop_chromebook,
                              size: 24,
                            ),
                          ),
                        ),
                        Text("elctronic")
                      ],
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Column(
                      children: [
                        Container(
                          child: CircleAvatar(
                            child: Icon(
                              Icons.local_grocery_store,
                              size: 24,
                            ),
                          ),
                        ),
                        Text("grecory")
                      ],
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Column(
                      children: [
                        Container(
                          child: CircleAvatar(
                            child: Icon(
                              Icons.car_rental,
                              size: 30,
                            ),
                          ),
                        ),
                        Text("car")
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 13.6,
              ),
              Container(
                child: Text(
                  "Best Sales",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.75),
                ),
              ),
              GridView(
                physics: BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 3,
                    crossAxisSpacing: 3,
                    mainAxisExtent: 300,
                    childAspectRatio: 2.1 / 3),
                shrinkWrap: true,
                children: [
                  Builder(builder: (context) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed("Details");
                      },
                      child: Container(
                        margin: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Image.asset(
                              "images/psportal.jpg",
                              fit: BoxFit.contain,
                            ),
                            ListTile(
                              title: Text(
                                "PlayStation portal",
                                overflow: TextOverflow.ellipsis,
                              ),
                              subtitle: Text(
                                "500\$",
                                style: TextStyle(color: Colors.orange),
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: Icon(Icons.star_border_rounded)),
                                Expanded(
                                    child: Icon(Icons.star_border_rounded)),
                                Expanded(
                                    child: Icon(Icons.star_border_rounded)),
                                Expanded(
                                    child: Icon(Icons.star_border_rounded)),
                                Expanded(child: Icon(Icons.star_border_rounded))
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Image.asset(
                          "images/ps5.png",
                          fit: BoxFit.contain,
                        ),
                        ListTile(
                          title: Text("PlayStation 5"),
                          subtitle: Text(
                            "700\$",
                            style: TextStyle(color: Colors.deepOrange),
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(child: Icon(Icons.star_border_rounded)),
                            Expanded(child: Icon(Icons.star_border_rounded)),
                            Expanded(child: Icon(Icons.star_border_rounded)),
                            Expanded(child: Icon(Icons.star_border_rounded)),
                            Expanded(child: Icon(Icons.star_border_rounded))
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Image.asset(
                          "images/tcl.jpg",
                          fit: BoxFit.contain,
                        ),
                        ListTile(
                          title: Text("TCL tv"),
                          subtitle: Text("1200\$"),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Image.asset(
                          "images/smartwatch.jpeg",
                          fit: BoxFit.contain,
                        ),
                        Text("Smart Watch")
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Image.asset(
                          "images/grcory1.jpg",
                          fit: BoxFit.contain,
                        ),
                        Text("Surf")
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Image.asset(
                          "images/nike.jpeg",
                          fit: BoxFit.contain,
                        ),
                        Text("Nike")
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Image.asset(
                          "images/women1.jpg",
                          fit: BoxFit.contain,
                        ),
                        Text("Hair beuaty")
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Image.asset(
                          "images/women2.jpg",
                          fit: BoxFit.contain,
                        ),
                        Text("Hiar beuaty")
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Image.asset(
                          "images/men-skin-care.jpg",
                          fit: BoxFit.contain,
                        ),
                        Text("Miuros")
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Image.asset(
                          "images/10w-viskositaet.png",
                          fit: BoxFit.contain,
                        ),
                        Text("ProfiCar 10w40")
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Image.asset(
                          "images/ravenol.jpg",
                          fit: BoxFit.fitHeight,
                        ),
                        Text("RavenolAllProducts")
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
