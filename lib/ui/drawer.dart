import 'package:flutter/material.dart';
import 'package:sjce_myclassroom/pages/admin.dart';
import 'package:sjce_myclassroom/pages/latestupdates.dart';
import 'package:sjce_myclassroom/utils/pdfview.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: UserAccountsDrawerHeader(
              accountName: Text("CSE - 1st Year",style: TextStyle(color: Colors.deepOrange,fontSize: 25.0),),
              decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(image: ExactAssetImage('assets/images/jssstu.jpg'),
                      fit: BoxFit.contain)
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.timer,size: 30.0,),
            title: Text('Time Table',style: TextStyle(fontSize: 15.0)),
            subtitle: Text('Latest'),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> pdfview("https://firebasestorage.googleapis.com/v0/b/myclassroom-926c0.appspot.com/o/onlinepdf%2Ftime_table.pdf?alt=media&token=5b29d1d3-e0aa-47ac-8bb9-20f67098e617", "Time Table")));
            },
          ),
          ListTile(
            leading: Icon(Icons.calendar_today_rounded,size: 30.0,),
            title: Text('Calender of Events',style: TextStyle(fontSize: 15.0)),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> pdfview("https://firebasestorage.googleapis.com/v0/b/myclassroom-926c0.appspot.com/o/onlinepdf%2Fcalender_of_events.pdf?alt=media&token=554a8046-52f8-48fa-a198-1dda4a7f8211", "Calender of Events")));
            },
          ),
          ListTile(
            leading: Icon(Icons.new_releases_sharp,size: 30.0,),
            title: Text('Latest Updates',style: TextStyle(fontSize: 15.0)),
            subtitle: Text('Internet Connection Required'),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> LatestUpdates()));
            },
          ),
          ListTile(
            leading: Icon(Icons.contacts_rounded,size: 30.0,),
            title: Text('Contact Teachers',style: TextStyle(fontSize: 15.0)),
            //subtitle: Text('Teachers contacts' ),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.arrow_circle_down,size: 30.0,),
            title: Text('Update App',style: TextStyle(fontSize: 15.0)),
            subtitle: Text('Your App is Updated'),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.admin_panel_settings,size: 30.0,),
            title: Text('Admin Panel',style: TextStyle(fontSize: 15.0)),
            subtitle: Text('Restricted to users'),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> Admin()));
            },
          ),
        ],
      ),


    );
  }
}
