import 'package:chat_dev_stack/CustomUI/ButtonCard.dart';
import 'package:chat_dev_stack/CustomUI/ContactCard.dart';
import 'package:chat_dev_stack/Model/ChatModel.dart';
import 'package:flutter/material.dart';

class CreateGroup extends StatefulWidget {
  const CreateGroup({super.key});

  @override
  State<CreateGroup> createState() => _CreateGroupState();
}

class _CreateGroupState extends State<CreateGroup> {
  List<ChatModel> contacts = [
    ChatModel(name: 'Anjula', about: 'Pissottek'),
    ChatModel(name: 'Perera', about: 'Gammac'),
    ChatModel(name: 'Junuju', about: 'elama ela'),
  ];

  List<ChatModel> groups = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'New Group',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Add Participants',
              style: TextStyle(
                fontSize: 13,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 26,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              if (contacts[index].select == false) {
                setState(() {
                  contacts[index].select = true;
                  groups.add(contacts[index]);
                });
              } else {
                setState(() {
                  contacts[index].select = false;
                  groups.remove(contacts[index]);
                });
              }
            },
            child: ContactCard(contact: contacts[index]),
          );
        },
      ),
    );
  }
}
