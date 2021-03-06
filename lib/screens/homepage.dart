import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:fyp_aneeq/screens/diseaseproblem.dart';
import 'package:fyp_aneeq/screens/donatefind.dart';
import 'package:fyp_aneeq/screens/profile.dart';
import 'package:fyp_aneeq/screens/requestpage.dart';
import 'package:fyp_aneeq/sidenavigations.dart';

import '../theme.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}
final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key:  _scaffoldKey,
      drawer: SideNavigation(),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 150,
              height: 50,
              child: RaisedButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

                onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>DonationFinder()));

              },
                color: AppColors.primary,
                child: Text('Donate',style: TextStyle(color: Colors.white),),
              ),
            ),
            Container(  width: 150,
              height: 50,
              child: RaisedButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Request()));
                },
                color: AppColors.primary,
                child: Text('Request',style: TextStyle(color: Colors.white),),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              _scaffoldKey.currentState.openDrawer();
            },
            child: Icon(
              Icons.list,
              color: Colors.white,
            )),

        actions: [
        
          IconButton(icon: Icon(Icons.description,color: Colors.white,), onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Disease()));

          }),

        ],
        backgroundColor: AppColors.primary,
        title: Text(
          'Bloodify',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                height: 250,
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return buildList(context, index);
                  },
                  autoplay: true,
                  itemCount: 3,
                  pagination: new SwiperPagination(),
                ),
              ),
            ),

            SizedBox(height: 80,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 170,
                  width: 140,
                  decoration: BoxDecoration(border: Border.all(color: Colors.black45)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Your Blood Group',textAlign: TextAlign.center,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                      SizedBox(height: 10,),
                      Text('A+',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
                Container(
                  height: 170,
                  width: 140,
                  decoration: BoxDecoration(border: Border.all(color: Colors.black45)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Address Location',textAlign: TextAlign.center,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                      SizedBox(height: 10,),
                      Text('My home address',textAlign: TextAlign.center,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
  Widget buildList(BuildContext context, int index) {
    return   Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(19.0),
      ),
      child: CachedNetworkImage(
        height: 300,
        fit: BoxFit.cover,
        imageUrl: "https://media.istockphoto.com/photos/medical-technology-concept-picture-id1127069581?k=6&m=1127069581&s=612x612&w=0&h=W5MI9ahBeA43UOsiD9TAUHnnbqKmheHyKynGroWnxRY=",
        progressIndicatorBuilder: (context, url, downloadProgress) =>
            CircularProgressIndicator(
                value: downloadProgress.progress),
        errorWidget: (context, url, error) => Icon(Icons.error),
      ),
    );
  }
}
