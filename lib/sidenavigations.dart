import 'package:flutter/material.dart';
import 'package:fyp_aneeq/res.dart';
import 'package:fyp_aneeq/screens/donationhistory.dart';
import 'package:fyp_aneeq/screens/profile.dart';
import 'package:fyp_aneeq/theme.dart';

class SideNavigation extends StatefulWidget {
  @override
  _SideNavigationState createState() => _SideNavigationState();
}

class _SideNavigationState extends State<SideNavigation> {
  @override
  Widget build(BuildContext context) {
    return Theme(

      data: ThemeData(canvasColor: Colors.white.withOpacity(0.75)),
      child: Drawer(
        child: ListView(children: <Widget>[
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    child:  Image.asset(Res.blood,fit: BoxFit.fill,width: 100,height: 100,),
                  ),
                  SizedBox(height: 30.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DonationHistory()));
                    },
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                        child: _buildRow(Icons.history, "Donation History")),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Profile()));
                    },
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                        child: _buildRow(Icons.person, "Profile")),
                  ),

                ],
              ),
            ),
          )
        ]),
      ),
    );
  }


  Widget _buildRow(IconData icon, String title) {
    final TextStyle tStyle = TextStyle(color: Colors.black54, fontSize: 16.0);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(children: [
        Icon(
          icon,
          color: AppColors.primary,
          size: 18,
        ),
        SizedBox(width: 10.0),
        Text(
          title,
          style: tStyle,
        ),
        Spacer(),
      ]),
    );
  }

}