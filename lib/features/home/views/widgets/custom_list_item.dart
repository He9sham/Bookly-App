import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomListItem extends StatelessWidget {
  const CustomListItem({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        ListTile(
          contentPadding: const EdgeInsets.only(right: 120),
          title: const Icon(Icons.person_outline),
          trailing: TextButton(
            child: const Text(
              'Edit profile',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            onPressed: () {},
          ),
        ),
        ListTile(
          contentPadding: const EdgeInsets.only(right: 140),
          title: const Icon(FontAwesomeIcons.heart),
          trailing: TextButton(
            child: const Text(
              'Favorite',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            onPressed: () {},
          ),
        ),
        ListTile(
          contentPadding: const EdgeInsets.only(right: 105),
          title: const Icon(FontAwesomeIcons.bell),
          trailing: TextButton(
            child: const Text(
              'Notifications',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            onPressed: () {},
          ),
        ),
        ListTile(
          contentPadding: const EdgeInsets.only(right: 140),
          title: const Icon(FontAwesomeIcons.arrowRightFromBracket),
          trailing: TextButton(
            child: const Text(
              'Log out',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
