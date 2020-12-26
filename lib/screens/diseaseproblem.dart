import 'package:flutter/material.dart';

import '../theme.dart';

class Disease extends StatefulWidget {
  @override
  _DiseaseState createState() => _DiseaseState();
}

class _DiseaseState extends State<Disease> {
  var _selectMos = 'A+';
  var _mosList = ['A+','A-','B+','B-','O+','O-','AB+','AB-',];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: Text(
          'Bloodify',
          style: TextStyle(color: Colors.white),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RaisedButton(onPressed: (){

            },
              color: AppColors.primary,
              child: Text('Skip',style: TextStyle(color: Colors.white),),
            ),
            RaisedButton(onPressed: (){
            },
              color: AppColors.primary,
              child: Text('Next',style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 25,),

            Text("Your donation History",style: TextStyle(fontSize: 18),),
            SizedBox(height: 25,),

            Text("Blood Group",style: TextStyle(fontSize: 18),),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black45),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:12.0),
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
              ),
            ),
            Text("Last Injury Disease Date",style: TextStyle(fontSize: 18),),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black45),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:12.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Type here..."
                    ),
                  ),
                ),
              ),
            ),
            Text("Current Disease",style: TextStyle(fontSize: 18),),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black45),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:12.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Type here..."
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
