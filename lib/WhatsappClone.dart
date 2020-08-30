import 'package:flutter/material.dart';

class WhatsappClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(primaryColor: Colors.green),
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsappClone"),
        ),
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, i) {
              return new ListTile(
                title: Text(
                  "Sunny",
                  style: Theme.of(context).textTheme.headline6,
                ),
                subtitle: Text(
                  "This is a test message",
                  style: Theme.of(context).textTheme.bodyText2,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://avatars3.githubusercontent.com/u/11705392?s=460&v=4"),
                ),
                trailing: Text("Yesterday"),
              );
            }),
      ),
    );
  }
}
