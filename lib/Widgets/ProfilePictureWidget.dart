import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.red[100],
      radius: 105,
      child: CircleAvatar(
        backgroundColor: Colors.red[100],
        radius: 98,
        child: CircleAvatar(
          backgroundColor: Colors.grey[200],
          radius: 94,
          child: CircleAvatar(
            backgroundColor: Colors.blueGrey,
            radius: 85,
            child: CircleAvatar(
              backgroundColor: Colors.grey[200],
              radius: 84,
              child: const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://image.scoopwhoop.com/w620/s3.scoopwhoop.com/ada/assorted/pe/4.jpg.webp"), //NetworkImage
                radius: 80,
              ),
            ),
          ), //CircleAvatar
        ),
      ),
    );
  }
}