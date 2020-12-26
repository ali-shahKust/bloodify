import 'package:flutter/material.dart';

import '../theme.dart';

class Edit_Profile extends StatefulWidget {
  @override
  _Edit_ProfileState createState() => _Edit_ProfileState();
}

class _Edit_ProfileState extends State<Edit_Profile> {
  var _selectMos = 'Blood Group';
  var _mosList = ['Blood Group','A+','A-','B+','B-','O+','O-','AB+','AB-',];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RaisedButton(onPressed: (){

            },
              color: AppColors.primary,
              child: Text('Back',style: TextStyle(color: Colors.white),),
            ),
            RaisedButton(onPressed: (){

            },
              color: AppColors.primary,
              child: Text('Save',style: TextStyle(color: Colors.white),),
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
                "Edit Profile",
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
                          borderRadius: BorderRadius.circular(14),
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
                          width: 120,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black45)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  width: 100,
                                  child: TextField(
                                    enabled: true,
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                  ))
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
                            children: [
                              Text('Name: '),
                              Container(
                                  width: 100,
                                  child: TextField(
                                    enabled: true,

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
                            children: [
                              Text('Email: '),
                              Container(
                                  width: 100,
                                  child: TextField(                                    enabled: true,

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
                            children: [
                              Text('Contact: '),
                              Container(
                                  width: 100,
                                  child: TextField(                                    enabled: true,

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
                            children: [
                              Text('DOB: '),
                              Container(
                                  width: 100,
                                  child: TextField(                                    enabled: true,

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
                                  child: TextField(                                    enabled: true,

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
