import 'package:flutter/material.dart';
import '../Widgets/ProfilePictureWidget.dart';

class NavAccount extends StatelessWidget {
  const NavAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        const SizedBox(height: 10,),
        const Center(
            child: Text(
              'Profile',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            )
        ),
        const SizedBox(height: 10,),
        const Center(
          child: ProfilePicture(), //CircleAvatar
        ),
        const SizedBox(height: 5,),
        Row(
          children: [
            const Expanded(child: SizedBox(width: 5,)),
            Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide( //                   <--- left side
                    color: Colors.black,
                    width: 3.0,
                  ),
                )
              ),
              child: const Text(
                'Dre Hellsworth',
                style: TextStyle(
                  fontSize: 26
                ),
              ),
            ),
            const Expanded(child: SizedBox(width: 5,)),
          ],
        ),
        const SizedBox(height: 20,),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
          ),
          child: ListTile(
            leading: Icon(
                Icons.person,
              color: Colors.blue.shade400,
            ),
            title: const Text(
                'Edit Profile',
              style: TextStyle(
                  fontSize: 20
              ),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.blueGrey,
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 1),
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: const ListTile(
            leading: Icon(
              Icons.location_on,
              color: Colors.red,
            ),
            title: Text(
              'Shopping Address',
              style: TextStyle(
                  fontSize: 20
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.blueGrey,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: const ListTile(
            leading: Icon(
              Icons.history_toggle_off_rounded,
              color: Colors.orange,
            ),
            title: Text(
              'Order History',
              style: TextStyle(
                  fontSize: 20
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.blueGrey,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 1),
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: const ListTile(
            leading: Icon(
              Icons.notifications,
              color: Colors.yellow,
            ),
            title: Text(
              'Notifications',
              style: TextStyle(
                  fontSize: 20
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.blueGrey,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
          ),
          child: const ListTile(
            leading: Icon(
              Icons.credit_card_rounded,
              color: Colors.green,
            ),
            title: Text(
              'Cards',
              style: TextStyle(
                  fontSize: 20
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.blueGrey,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20,),
      ],
    );
  }
}
