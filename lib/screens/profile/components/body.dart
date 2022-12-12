import 'package:flutter/material.dart';
import 'package:snapchat_app_redesigned/screens/profile/components/activities_detaills.dart';
import 'package:snapchat_app_redesigned/screens/profile/components/profle_header.dart';

import 'edit_profile.dart';
import 'profile_details.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 35),
              ProfileHeader(),
              SizedBox(height: 20),
              ProfileDetails(),
              SizedBox(height: 25),
              ActivitiesDetails(),
              SizedBox(height: 25),
              EditProfile(),
              SizedBox(height: 35),
              Row(
                children: [
                  SizedBox(
                    width: 150,
                    child: Column(
                      children: [
                        Container(
                          height: 220,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset("assets/posts/mypost1.png"),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  SizedBox(
                    width: 150,
                    child: Column(
                      children: [
                        Container(
                          height: 109,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset("assets/posts/mypost2.png"),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          height: 95,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset("assets/posts/mypost3.png"),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
