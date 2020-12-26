import 'package:flutter/material.dart';

import '../res.dart';
import '../theme.dart';

class DonationHistory extends StatefulWidget {
  @override
  _DonationHistoryState createState() => _DonationHistoryState();
}

class _DonationHistoryState extends State<DonationHistory> {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 25,),
            Text("Your donation History",style: TextStyle(fontSize: 18),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 120,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white
                ),
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                      Row(
                        children: [
                          ClipRRect(child: Image.asset(Res.blood,width: 40,height: 40,),),
                          SizedBox(width: 25,),
                          Column(
                            children: [
                              Text('2 Donations (Year to date)',style: TextStyle(fontSize: 16),),
                              Text('blood',style: TextStyle(fontSize: 12,color: Colors.grey),),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 25,),
                      Row(

                        children: [
                          ClipRRect(child: Image.asset(Res.yellow,width: 40,height: 40,),),
                          SizedBox(width: 25,),
                          Column(
                            children: [
                              Text('2 Donations (Year to date)',style: TextStyle(fontSize: 16),),
                              Text('blood',style: TextStyle(fontSize: 12,color: Colors.grey),),
                            ],
                          ),
                        ],
                      ),
                    ],)
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height-280,
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
        height: 160,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Text('Name: John doe',style: TextStyle(fontSize: 16),),
                Text('Address: Lorem ipsum',style: TextStyle(fontSize: 16),),
                Text('Date: 12/12/12',style: TextStyle(fontSize: 16),),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                Text("Bloodtype: A+",style: TextStyle(fontSize: 32),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
