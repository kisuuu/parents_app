import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';

class TimeTable extends StatefulWidget {
  const TimeTable({Key? key}) : super(key: key);

  @override
  State<TimeTable> createState() => _TimeTableState();
}

class _TimeTableState extends State<TimeTable> {
  final List<Item> items = [
    Item(
      header: 'Monday',
    ),
    Item(
      header: 'Tuesday',
    ),
    Item(
      header: 'Wednesday',
    ),
    Item(
      header: 'Thursday',
    ),
    Item(
      header: 'Friday',
    ),
    Item(
      header: 'Saturday',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Time Table",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromARGB(255, 114, 146, 207),
                Color.fromARGB(255, 40, 85, 174)
              ],
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            size: 20,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        // controller: controller,
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ExpansionPanelList.radio(
                children: items
                    .map((item) => ExpansionPanelRadio(
                        canTapOnHeader: true,
                        value: item.header,
                        headerBuilder: (context, isExpanded) => ListTile(
                              title: Text(
                                item.header,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                        body: Center(
                          child: Image.asset('assets/images/Capture.PNG'),
                        )))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Item {
  final String header;
  Item({
    required this.header,
  });
}
