import 'package:flutter/material.dart';
import 'package:remind_me/constants.dart';
import 'package:remind_me/widgets/add_reminder_tile.dart';
import 'package:remind_me/widgets/reminder_tile.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO Menu Screen
    return Scaffold(
      backgroundColor: kMainScreenBackgroundColor,
      body: CustomScrollView(
        slivers: [
           SliverAppBar(
            floating: true,
            pinned: true,
            expandedHeight: kSliverAppBarExpandedHeight,
            backgroundColor: kSliverAppBarBackgroundColor,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset('images/pedro.gif'),
            ),
            title: const Center(
              child: Text(':(',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: widget(),
          ),
        ],
      ),
    );

  }
}

Widget widget(){
  return SingleChildScrollView(
    physics: const ScrollPhysics(),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
       const AddReminderTile(),
        const Padding(
            padding: EdgeInsets.only(top: 25.0),
            child: Text('Set Reminders',
              style: TextStyle(color: Colors.white),
            ),
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
        itemCount: 10,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index){
          return ReminderTile(index: index);
        },
      ),
      ],
    ),
  );
}
