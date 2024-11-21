import 'package:flutter/material.dart';
import 'ShowActivity/JounraList.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Map<String, String>> list = [
    {"Name": "History", "ImageLink": "images/history.png"},
    {"Name": "Virtuous", "ImageLink": "images/old_man.png"},
    {"Name": "Journalist", "ImageLink": "images/journalist.png"},
    {"Name": "Govt-Officer", "ImageLink": "images/journalist.png"},
    {"Name": "Teacher", "ImageLink": "images/teacher.png"},
    {"Name": "Police-Station", "ImageLink": "images/police.png"},
    {"Name": "Reil-Station", "ImageLink": "images/train_station.png"},
    {"Name": "Doctor", "ImageLink": "images/doctor.png"},
    {"Name": "Hospital", "ImageLink": "images/hospital.png"},
    {"Name": "School", "ImageLink": "images/school.png"},
    {"Name": "Madrasa", "ImageLink": "images/mosque.png"},
    {"Name": "Fire-Service", "ImageLink": "images/firetruck.png"},
    {"Name": "Electricity", "ImageLink": "images/eco_house.png"},
    {"Name": "Truck-Service", "ImageLink": "images/truck_service.png"},
    {"Name": "Micro-Bus", "ImageLink": "images/microbes.png"},
    {"Name": "Ambulance", "ImageLink": "images/ambulance.png"},
    {"Name": "Wifi-Service", "ImageLink": "images/wifi_service.png"},
    {"Name": "News-Paper", "ImageLink": "images/media.png"},
    {"Name": "Lawyer", "ImageLink": "images/lawyer.png"},
    {"Name": "Job", "ImageLink": "images/job.png"},
    {"Name": "Tourist-Area", "ImageLink": "images/travelling.png"},
    {"Name": "Gallery", "ImageLink": "images/gallery.png"},
    {"Name": "Electrification", "ImageLink": "images/electrification.png"},
    {"Name": "Transport", "ImageLink": "images/vehicles.png"},
    {"Name": "Land-Office", "ImageLink": "images/land_office.png"},
    {"Name": "Bank-Insurance", "ImageLink": "images/insurance_company.png"},
    {"Name": "Blood-Donation", "ImageLink": "images/donor.png"},
  ];

  MySnackBar(context, msg) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      appBar: AppBar(
        //backgroundColor: const Color.fromRGBO(40, 108, 180, 1),
        title: const Text(
          'District online service',
          style: TextStyle(
           // color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (BuildContext context) {
                  return FractionallySizedBox(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(0),
                          topLeft: Radius.circular(0),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 80,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Sign Up',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 0, horizontal: 20),
                            child: TextField(
                              maxLength: 1,
                              controller: TextEditingController(),
                              decoration: InputDecoration(
                                labelText: 'Enter your name',
                                labelStyle:
                                    const TextStyle(color: Colors.black),
                                filled: true,
                                suffixIcon: const Icon(Icons.man_2_rounded),
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Color.fromRGBO(40, 108, 180, 1),
                                    width: 1.0,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Color.fromRGBO(40, 108, 180, 1),
                                    width: 1.0,
                                  ),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                    width: 2.0,
                                  ),
                                ),
                              ),
                              keyboardType: TextInputType.text,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(

                            padding: const EdgeInsets.symmetric(
                                vertical: 0, horizontal: 20),
                            child: TextField(
                              maxLength: 2,
                              controller: TextEditingController(),
                              decoration: InputDecoration(
                                  labelText: 'Enter your gmail',
                                  labelStyle:
                                      const TextStyle(color: Colors.black),
                                  suffixIcon: Icon(Icons.man),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color:Color.fromRGBO(40, 108, 180, 1), width: 1),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color.fromRGBO(40, 108, 180, 1),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                              keyboardType: TextInputType.emailAddress,
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 0, horizontal: 20),
                          child:  TextField(
                            maxLength: 1,
                            controller: TextEditingController(),
                            decoration: InputDecoration(
                              labelText: 'Create password',
                              labelStyle: const TextStyle(
                                color: Colors.black,
                              ),
                              suffixIcon: const Icon(Icons.password),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Color.fromRGBO(40, 108, 180, 1),
                                  width: 1
                                )
                              ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color: Color.fromRGBO(40, 108, 180, 1),
                                        width: 1
                                    )
                                )
                              ),
                            keyboardType: TextInputType.visiblePassword,

                            ),

                          ),
                          const SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                  onPressed: () {} ,
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color.fromRGBO(40, 108, 180, 1),
                                    elevation: 1,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    padding: const EdgeInsets.only(left: 10,right: 10,bottom: 0,top: 0)
                                  ),
                                  child: Padding(
                                    padding:  EdgeInsets.all(10),
                                    child: Container(
                                      width: 220,
                                      child:  const Center(
                                        child: Text('Sign Up',style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                        ),),
                                      )
                                    ),
                                  
                                  )
                              )
                            ],
                          ),
                          const SizedBox(height: 10,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'By Signing UP,YOur agree to our ',
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                'Terms & Privacy Policy  '
                              ,
                                style: TextStyle(
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'OR ',
                                style: TextStyle(
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Card(
                                color: Colors.grey,
                                elevation: 80,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(90)
                                ),
                                child:  SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Image.asset('images/google.png',height: 30,width: 30,),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10,),
                              Card(
                                color: Colors.grey,
                                elevation: 80,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(90)
                                ),
                                child:  SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Image.asset('images/facebook.png',height: 30,width: 30,),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10,),
                              Card(
                                color: Colors.grey,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(90)
                                ),
                                child:  SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Image.asset('images/twitter.png',height: 30,width: 30,),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10,),
                            ],
                          ),

                          const SizedBox(height: 70,),
                          
                           const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Already have an account ?'),
                                SizedBox(width:5,),
                                Text(
                                    'Login',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            icon: const Icon(
              Icons.add,
             // color: Colors.black,
            ),
            padding: const EdgeInsets.only(right: 10),
          ),
        ],
        // leading: const Icon(Icons.menu),
      ),
      body: Scrollbar(
        thumbVisibility: true,
        trackVisibility: true,
        thickness: 5,
        radius: const Radius.circular(10),
        interactive: true,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
          ),
          itemCount: list.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                switch (index) {
                  case 0:
                    MySnackBar(context, list[index]['Name']);


                    break;
                  case 1:
                    MySnackBar(context, list[index]['Name']);
                    break;
                  case 2:
                    MySnackBar(context, list[index]['Name']);
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => JournaList())
                    );
                    break;
                  case 3:
                    MySnackBar(context, list[index]['Name']);
                    break;
                  case 4:
                    MySnackBar(context, list[index]['Name']);
                    break;
                  case 5:
                    MySnackBar(context, list[index]['Name']);
                    break;
                  case 6:
                    MySnackBar(context, list[index]['Name']);
                    break;
                  case 7:
                    MySnackBar(context, list[index]['Name']);
                    break;
                  case 8:
                    MySnackBar(context, list[index]['Name']);
                    break;
                  case 9:
                    MySnackBar(context, list[index]['Name']);
                    break;
                  case 10:
                    MySnackBar(context, list[index]['Name']);
                    break;
                  case 11:
                    MySnackBar(context, list[index]['Name']);
                    break;
                  case 12:
                    MySnackBar(context, list[index]['Name']);
                    break;
                  case 13:
                    MySnackBar(context, list[index]['Name']);
                    break;
                  case 14:
                    MySnackBar(context, list[index]['Name']);
                    break;
                  case 15:
                    MySnackBar(context, list[index]['Name']);
                    break;
                  case 16:
                    MySnackBar(context, list[index]['Name']);
                    break;
                  case 17:
                    MySnackBar(context, list[index]['Name']);
                    break;
                  case 18:
                    MySnackBar(context, list[index]['Name']);
                    break;
                  case 19:
                    MySnackBar(context, list[index]['Name']);
                    break;
                  case 20:
                    MySnackBar(context, list[index]['Name']);
                    break;
                  case 21:
                    MySnackBar(context, list[index]['Name']);
                    break;
                  case 22:
                    MySnackBar(context, list[index]['Name']);
                    break;
                  case 23:
                    MySnackBar(context, list[index]['Name']);
                    break;
                  case 24:
                    MySnackBar(context, list[index]['Name']);
                    break;
                  case 25:
                    MySnackBar(context, list[index]['Name']);
                    break;
                }
              },
              child: Card(
                margin: const EdgeInsets.only(
                    left: 25, right: 25, top: 10, bottom: 10),
               // color: const Color.fromRGBO(242, 244, 244, 1),
               // color: Colors.white,
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: const BorderSide(color: Colors.grey, width: 1),
                ),
                child: SizedBox(
                  height: 200,
                  width: 120,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            border: Border.all(color: Colors.grey, width: 0.5),
                            gradient: const LinearGradient(
                              colors: [Colors.grey, Colors.grey],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: Image.asset(
                            list[index]['ImageLink']!,
                            height: 20,
                            width: 20,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          list[index]['Name']!, 
                          style: const TextStyle(
                           // color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
      //backgroundColor: Colors.white,
        currentIndex: 0,
        selectedItemColor: const Color.fromRGBO(40, 108, 180, 1),
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),
        onTap: (int index) {},
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 25,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle), label: 'Profile'),
        ],
      ),
      drawer: Drawer(
       // backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              //padding: EdgeInsets.only(bottom: 0,left: 10),
              decoration: BoxDecoration(
                color: Color.fromRGBO(40, 108, 180, 1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.blue,
                    child: Text(
                      'M',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Md Sakibul hasan santo',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'mdsakibulhasansanto@gmail.com',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.home,
                  color: Color.fromRGBO(40, 108, 180, 1),
                ),
              ),
              title: const Text(
                'Home',
                style: TextStyle(
                    //color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.settings,
                  color: Color.fromRGBO(40, 108, 180, 1),
                ),
              ),
              title: const Text(
                'Settings',
                style: TextStyle(
                  //  color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.call,
                  color: Color.fromRGBO(40, 108, 180, 1),
                ),
              ),
              title: const Text(
                'Developer contact Us',
                style: TextStyle(
                   // color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
