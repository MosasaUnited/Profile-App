import 'package:flutter/material.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
              'https://media.licdn.com/dms/image/D4D03AQFiTCp3Y73s5g/profile-displayphoto-shrink_400_400/0/1699323451283?e=1713398400&v=beta&t=QU_LwYeaahmAI-gH2JsPlRrNRdy3tM9-n5bDnyptzfQ'),
          radius: 100,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          'Mostafa Mahmoud Saad',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w900, fontSize: 20),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Flutter Developer',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
              fontSize: 15),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Description',
          style: TextStyle(
            color: Colors.white,
            fontSize: 10,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Divider(
          color: Colors.white,
        ),
      ],
    );
  }
}
