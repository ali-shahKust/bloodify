import 'package:flutter/material.dart';
import 'package:fyp_aneeq/screens/edit_profile.dart';
import 'package:fyp_aneeq/theme.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var _selectMos = 'Blood Group';
  var _mosList = ['Blood Group','A+','A-','B+','B-','O+','O-','AB+','AB-',];
  var _selectdes = 'Cancer';
  var _DiseaseList = ['Cancer','Sugar','Malaria',];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RaisedButton(onPressed: (){Navigator.pop(context);
            },
              color: AppColors.primary,
              child: Text('Back',style: TextStyle(color: Colors.white),),
            ),
            RaisedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Edit_Profile()));
            },
              color: AppColors.primary,
              child: Text('Edit',style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: Text(
          'Bloodify',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                "Profile",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqJ5Ysh_J7_lcGztBLeGTenezYaWt39DsrEg&usqp=CAU",
                            width: 100,
                            height: 100,
                          )),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            width: 100,
                            height: 100,
                            child: Text('Blood Injury Disease',textAlign: TextAlign.center,style: TextStyle(
                              fontSize: 28
                            ),)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 130,
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black45)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 40,
                                width: 120,
                                child: DropdownButton<String>(
                                  underline: SizedBox(),
                                  isExpanded: true,
                                  value: _selectdes,
                                  onChanged: (String newValue) {
                                    setState(() {
                                      this._selectdes = newValue;
                                    });
                                  },
                                  items: _DiseaseList.map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Center(child: Text(value)),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),


                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 170,
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black45)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Name: '),
                              Container(
                                  width: 100,
                                  child: TextField(                                    enabled: false,

                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 170,
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black45)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Email: '),
                              Container(
                                  width: 100,
                                  child: TextField(                                    enabled: false,

                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 170,
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black45)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Contact: '),
                              Container(
                                  width: 100,
                                  child: TextField(                                    enabled: false,

                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 170,
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black45)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('DOB: '),
                              Container(
                                  width: 100,
                                  child: TextField(                                    enabled: false,

                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 170,
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black45)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Gender: '),
                              Container(
                                  width: 100,
                                  child: TextField(                                    enabled: false,

                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 170,
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black45)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 40,
                                width: 150,
                                child: DropdownButton<String>(
                                  underline: SizedBox(),
                                  isExpanded: true,
                                  value: _selectMos,
                                  onChanged: (String newValue) {
                                    setState(() {
                                      this._selectMos = newValue;
                                    });
                                  },
                                  items: _mosList.map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Center(child: Text(value)),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
