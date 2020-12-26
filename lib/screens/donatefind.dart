import 'package:flutter/material.dart';
import 'package:fyp_aneeq/res.dart';
import 'package:fyp_aneeq/screens/donationhistory.dart';

import '../theme.dart';

class DonationFinder extends StatefulWidget {
  @override
  _DonationFinderState createState() => _DonationFinderState();
}

class _DonationFinderState extends State<DonationFinder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: Text(
          'Bloodify',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(icon: Icon(Icons.history), onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>DonationHistory()));

          })
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Text("Donation Request",
                style: TextStyle(
                  fontSize: 22,
                )),

            Container(
              height: MediaQuery.of(context).size.height-150,
              child: ListView.builder(itemCount: 8,itemBuilder: (BuildContext context, int index) {
                return buildList(context, index);
              }),
            )
          ],
        ),
      ),
    );
  }

  Widget buildList(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black45),
          borderRadius: BorderRadius.circular(12)
        ),
        height: 200,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqJ5Ysh_J7_lcGztBLeGTenezYaWt39DsrEg&usqp=CAU",
                          width: 70,
                          height: 70,
                        )),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Text('Name',style: TextStyle(fontSize: 16),),
                    Text('Contact',style: TextStyle(fontSize: 16),),
                    Text('Blood type',style: TextStyle(fontSize: 16),),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    RaisedButton(
                      color: AppColors.primary,
                      onPressed: (){

                    },child: Text('Accept'),),
                    RaisedButton(
                      color: AppColors.primary,

                      onPressed: (){

                    },child: Text('Decline'),)
                  ],
                )
              ],
            ),
            SizedBox(height: 15,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.location_on),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Lorem ipsum dummy address',style: TextStyle(fontSize: 16),),
              ),

            ],)
          ],
        ),
      ),
    );
  }
}
