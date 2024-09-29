import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String username = "tandi";
  final String email = "tandi@gmail.com";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              CircleAvatar(
                radius: 50,
                // You can replace the backgroundImage with the user's profile picture
                backgroundImage: NetworkImage(
                    "https://images.nightcafe.studio/jobs/nmzReBPCzfdcFNocD1MY/nmzReBPCzfdcFNocD1MY--7--en6zc_15.625x.jpg?tr=w-1600,c-at_max"),
              ),
              SizedBox(height: 16),
              Text(
                '$username',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                '$email',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
              ),
              SizedBox(height: 16),
              Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white
                    ),
                    onPressed: () {},
                    child: ListTile(
                     
                      title: Text("Edit Profile"),
                      trailing: Icon(Icons.arrow_forward_sharp),
                    ),
                  ),
                  SizedBox(height: 5,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white
                    ),
                    onPressed: () {
                      
                    },
                    child: ListTile(
                     
                      title: Text("History"),
                      trailing: Icon(Icons.arrow_forward_sharp),
                    ),
                  ),
                  SizedBox(height: 5,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white
                    ),
                    onPressed: () {},
                    child: ListTile(
                     textColor: Colors.red,
                     iconColor: Colors.red,
                      title: Text("Log Out",),
                      trailing: Icon(Icons.arrow_forward_sharp),
                    ),
                  ),
                  SizedBox(height: 5,),


                
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
