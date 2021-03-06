import 'package:flutter/material.dart';
import 'package:fyp_aneeq/res.dart';

import '../theme.dart';

class Request extends StatefulWidget {
  @override
  _RequestState createState() => _RequestState();
}

class _RequestState extends State<Request> {
  bool isCrit = false ;
  var _selectMos = 'Blood Group';
  var _mosList = ['Blood Group','A+','A-','B+','B-','O+','O-','AB+','AB-',];
  var _unit = '1';
  var _unitList = ['1','2','3','4'];
  int _groupValue = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            RaisedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Request()));},
              color: AppColors.primary,
              child: Text('Send',style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),

      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: Text(
          'Blood Request',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
        children: [
          SizedBox(height: 15,),
          Align(
              alignment: Alignment.topLeft,
              child: Text("Blood type: ",style: TextStyle(fontSize: 22),)),
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
          Align(
              alignment: Alignment.topLeft,
              child: Text("Blood Unit: ",style: TextStyle(fontSize: 22),)),
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
                child:DropdownButton<String>(
                  underline: SizedBox(),
                  isExpanded: true,
                  value: _unit,
                  onChanged: (String newValue) {
                    setState(() {
                      this._unit = newValue;
                    });
                  },
                  items: _unitList.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Center(child: Text(value)),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Text("Required: ",style: TextStyle(fontSize: 22),)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: [
                Row(
                  children: [

                    Container(
                      width: 150,
                      height: 50,
                      child: _myRadioButton(
                        title: "Blood",
                        value: 0,
                        onChanged: (newValue) => setState(() => _groupValue = newValue),
                      ),
                    ),

      ],
                ),
                Row(
                  children: [
                    Container(
                      width: 160,
                      height: 50,
                      child: _myRadioButton(
                        title: "Palestate",
                        value: 1,
                        onChanged: (newValue) => setState(() => _groupValue = newValue),
                      ),
                    ),

      ],
                ),
              ],
            ),
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Text("Location: ",style: TextStyle(fontSize: 22),)),
          ClipRRect(
            child: Image.asset(Res.Maps,width: 220,height: 200,),
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Text("Your Condition: ",style: TextStyle(fontSize: 22),)),
          Row(
            children: [
                Checkbox(value: isCrit, onChanged: (bool value) {
                  isCrit = value ;
                  setState(() {

                  });
                },),
              Text('Is your condition critical ?')
            ],
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Text("Message for donor: ",style: TextStyle(fontSize: 22),)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black45),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left:12.0),
                child: TextField(
                  maxLines: 3,
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
  Widget _myRadioButton({String title, int value, Function onChanged}) {
    return RadioListTile(
      value: value,
      groupValue: _groupValue,
      onChanged: onChanged,
      title: Text(title),
    );
  }
}
