import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReportCard extends StatelessWidget {
  const ReportCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Report Card",
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
        body: Container(
          // height: 200,
          // width: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/reportcard.png",
              ),
              fit: BoxFit.fill,
            ),
          ),
          //  Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          //   child: Center(
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       crossAxisAlignment: CrossAxisAlignment.center,
          //       children: [
          //         Image.asset(
          //           'assets/images/reportcard.jpg',
          //           width: 200,
          //           height: 200,
          //         )
          //         // Center(
          //         //   // Text(
          //         //   //         "85%",
          //         //   //         style: TextStyle(
          //         //   //             fontSize: 30,
          //         //   //             fontWeight: FontWeight.bold,
          //         //   //             height: 1),
          //         //   //         textAlign: TextAlign.center,
          //         //   //       ),
          //         //   //       Text(
          //         //   //         "GRADE A",
          //         //   //         style: TextStyle(
          //         //   //             fontSize: 15,
          //         //   //             fontWeight: FontWeight.bold,
          //         //   //             height: 1),
          //         //   //         textAlign: TextAlign.center,
          //         //   //       ),
          //         //   child: SizedBox(
          //         //     child:
          //         //     Column(
          //         //       children: [
          //         //         Container(
          //         //           height: 100,
          //         //           width: MediaQuery.of(context).size.width,
          //         //           decoration: BoxDecoration(
          //         //             border: Border.all(
          //         //               color: const Color.fromARGB(255, 232, 226, 226),
          //         //               // color: Colors.black,
          //         //               width: 1, //
          //         //             ),
          //         //             borderRadius: const BorderRadius.all(
          //         //               Radius.circular(15),
          //         //             ),
          //         //           ),
          //         //           child: Expanded(
          //         //             child: Row(
          //         //               children: [
          //         //                 Padding(
          //         //                   padding: const EdgeInsets.only(left: 10),
          //         //                   child: Column(
          //         //                     mainAxisAlignment: MainAxisAlignment.center,
          //         //                     children: [
          //         //                       Container(
          //         //                         child: CircleAvatar(
          //         //                           radius: 35, //radius is 35.
          //         //                           backgroundImage: AssetImage(
          //         //                               'assets/images/profile_image.png'), //AssetImage loads image URL.
          //         //                         ),
          //         //                       ),
          //         //                     ],
          //         //                   ),
          //         //                 ),
          //         //                 Spacer(),
          //         //                 Column(
          //         //                   mainAxisAlignment: MainAxisAlignment.center,
          //         //                   crossAxisAlignment: CrossAxisAlignment.start,
          //         //                   children: [
          //         //                     Row(
          //         //                       children: [
          //         //                         Text(
          //         //                           "Prasad Kharat",
          //         //                           style: TextStyle(
          //         //                             fontWeight: FontWeight.bold,
          //         //                             fontSize: 20,
          //         //                           ),
          //         //                         ),
          //         //                       ],
          //         //                     ),
          //         //                     Row(
          //         //                       children: [
          //         //                         Text(
          //         //                           "Class: V-B | Roll no: 03",
          //         //                           style: TextStyle(
          //         //                             fontSize: 15,
          //         //                             color: Color.fromARGB(
          //         //                                 225, 119, 119, 119),
          //         //                           ),
          //         //                         ),
          //         //                       ],
          //         //                     ),
          //         //                   ],
          //         //                 ),
          //         //                 Spacer(),
          //         //                 Container(
          //         //                   decoration: BoxDecoration(
          //         //                     gradient: LinearGradient(
          //         //                       begin: Alignment.centerLeft,
          //         //                       end: Alignment.centerRight,
          //         //                       colors: [
          //         //                         Color.fromARGB(255, 114, 207, 207),
          //         //                         Color.fromARGB(255, 40, 174, 174)
          //         //                       ],
          //         //                     ),
          //         //                     border: Border.all(
          //         //                       color: const Color.fromARGB(
          //         //                           255, 232, 226, 226),
          //         //                       // color: Colors.black,
          //         //                       width: 1, //
          //         //                     ),
          //         //                     borderRadius: const BorderRadius.all(
          //         //                       Radius.circular(15),
          //         //                     ),
          //         //                   ),
          //         //                   child: Padding(
          //         //                     padding: const EdgeInsets.symmetric(
          //         //                         horizontal: 10.0),
          //         //                     child: Column(
          //         //                       mainAxisAlignment:
          //         //                           MainAxisAlignment.center,
          //         //                       crossAxisAlignment:
          //         //                           CrossAxisAlignment.start,
          //         //                       children: [
          //         //                         Row(
          //         //                           children: [
          //         //                             Text(
          //         //                               "85%",
          //         //                               style: TextStyle(
          //         //                                 fontSize: 30,
          //         //                                 fontWeight: FontWeight.bold,
          //         //                                 height: 1,
          //         //                                 color: Colors.white,
          //         //                               ),
          //         //                               textAlign: TextAlign.center,
          //         //                             ),
          //         //                           ],
          //         //                         ),
          //         //                         Row(
          //         //                           children: [
          //         //                             Text(
          //         //                               "GRADE A",
          //         //                               style: TextStyle(
          //         //                                 fontSize: 15,
          //         //                                 fontWeight: FontWeight.bold,
          //         //                                 height: 1,
          //         //                                 color: Colors.white,
          //         //                               ),
          //         //                               textAlign: TextAlign.center,
          //         //                             ),
          //         //                           ],
          //         //                         ),
          //         //                       ],
          //         //                     ),
          //         //                   ),
          //         //                 ),
          //         //               ],
          //         //             ),
          //         //           ),
          //         //         ),
          //         //         SizedBox(
          //         //           height: 15,
          //         //         ),
          //         //         Text(
          //         //           "You are execellent",
          //         //           style: TextStyle(
          //         //             fontSize: 14,
          //         //             height: 1,
          //         //           ),
          //         //           textAlign: TextAlign.center,
          //         //         ),
          //         //       ],
          //         //     ),
          //         //   ),
          //         // ),
          //         // SizedBox(
          //         //   height: 15,
          //         // ),
          //         // SizedBox(
          //         //   child: Table(
          //         //     border: TableBorder.all(
          //         //       color: Colors.black26,
          //         //     ),
          //         //     columnWidths: {
          //         //       0: FractionColumnWidth(0.4),
          //         //       1: FractionColumnWidth(0.2),
          //         //       2: FractionColumnWidth(0.2),
          //         //       3: FractionColumnWidth(0.2),
          //         //     },
          //         //     children: [
          //         //       buildRow(
          //         //         [
          //         //           'Subjects',
          //         //           'Total',
          //         //           'Marks',
          //         //           'Grade',
          //         //         ],
          //         //         isHeader: true,
          //         //       ),
          //         //       buildRow(
          //         //         [
          //         //           'English',
          //         //           '100',
          //         //           '74',
          //         //           'B',
          //         //         ],
          //         //       ),
          //         //       buildRow(
          //         //         [
          //         //           'Hindi',
          //         //           '100',
          //         //           '87',
          //         //           'B',
          //         //         ],
          //         //       ),
          //         //       buildRow(
          //         //         [
          //         //           'Science',
          //         //           '100',
          //         //           '74',
          //         //           'B',
          //         //         ],
          //         //       ),
          //         //       buildRow(
          //         //         [
          //         //           'Maths',
          //         //           '100',
          //         //           '87',
          //         //           'B',
          //         //         ],
          //         //       ),
          //         //       buildRow(
          //         //         [
          //         //           'Social Science',
          //         //           '100',
          //         //           '74',
          //         //           'B',
          //         //         ],
          //         //       ),
          //         //       buildRow(
          //         //         [
          //         //           'Drawing',
          //         //           '100',
          //         //           '87',
          //         //           'B',
          //         //         ],
          //         //       ),
          //         //       buildRow(
          //         //         [
          //         //           'Computer',
          //         //           '100',
          //         //           '96',
          //         //           'A',
          //         //         ],
          //         //       ),
          //         //       buildRow(
          //         //         [
          //         //           'Total',
          //         //           '700',
          //         //           '579',
          //         //           'A',
          //         //         ],
          //         //         isHeader: true,
          //         //       ),
          //         //     ],
          //         //   ),
          //         // ),
          //         // SizedBox(
          //         //   height: 15,
          //         // ),
          //         // InkWell(
          //         //   onTap: () {},
          //         //   child: Container(
          //         //     width: double.infinity,
          //         //     height: 50.0,
          //         //     decoration: BoxDecoration(
          //         //       // gradient: LinearGradient(
          //         //       //   begin: Alignment.centerLeft,
          //         //       //   end: Alignment.centerRight,
          //         //       //   colors: [
          //         //       //     Color.fromARGB(255, 211, 128, 128),
          //         //       //     Color.fromARGB(255, 255, 0, 0)
          //         //       //   ],
          //         //       //   tileMode: TileMode.clamp,
          //         //       // ),
          //         //       color: Colors.red,
          //         //       borderRadius: BorderRadius.circular(20),
          //         //     ),
          //         //     child: Row(
          //         //       mainAxisAlignment: MainAxisAlignment.center,
          //         //       children: [
          //         //         Text(
          //         //           'Download PDF',
          //         //           style:
          //         //               Theme.of(context).textTheme.subtitle2!.copyWith(
          //         //                     fontWeight: FontWeight.bold,
          //         //                     fontSize: 16.0,
          //         //                     color: Colors.white,
          //         //                   ),
          //         //         ),
          //         //         SizedBox(
          //         //           width: 10,
          //         //         ),
          //         //         Icon(
          //         //           Icons.picture_as_pdf_outlined,
          //         //           // CupertinoIcons.pdf
          //         //           color: Colors.white,
          //         //         ),
          //         //       ],
          //         //     ),
          //         //   ),
          //         // ),
          //       ],
          //     ),
          //   ),
          // ),
        ));
  }

  // TableRow buildRow(List<String> cells, {bool isHeader = false}) => TableRow(
  //       children: cells.map((cell) {
  //         final style = TextStyle(
  //             fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
  //             fontSize: 15);
  //         return Padding(
  //           padding: const EdgeInsets.all(12.0),
  //           child: Center(
  //             child: Text(
  //               cell,
  //               style: style,
  //             ),
  //           ),
  //         );
  //       }).toList(),
  //     );
}
