import 'package:chat_dev_stack/Model/ChatModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({
    super.key,
    required this.contact,
  });
  final ChatModel contact;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blueGrey[200],
          radius: 23,
          child: SvgPicture.asset(
            'assets/person.svg',
            color: Colors.white,
            height: 30,
            width: 30,
          ),
        ),
        title: Text(
          contact.name,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          contact.about,
          style: const TextStyle(fontSize: 13),
        ),
      ),
    );
  }
}
