import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class AboutSchool extends StatefulWidget {
  const AboutSchool({Key? key}) : super(key: key);

  @override
  State<AboutSchool> createState() => _AboutSchoolState();
}

class _AboutSchoolState extends State<AboutSchool> {
  bool isReadMore = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "About School",
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
      body: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(0), // here the desired height
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.height,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ),
                  child: ListView(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Text(
                              "MOBISOFTSEO INTERNATIONAL SCHOOL",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "The Uttari Bharat Sabha, which is a driving force behind the institution was established in 1949 by a band of selfless patriots who felt the need for an institution which could cater to the educational needs of children in and around Bhandup.\n",
                            textAlign: TextAlign.justify,
                          ),
                          Text(
                            "The Sabha started a primary school on 8th january 1950. It began its Herculean task having on its roll only Twenty Students in humble hut and within two years of inception the 5th class was added thereto. It was in the year 1961 that the school became a full fledged secondary school. As a result of sincere efforts and wholehearted support of well wishers, Uttari Bharat Sabha today runs, Hindi medium and English medium Pre-Primary School, Hindi medium Primary and High School, English medium Primary and High School, I.D.U.B.S. junior College of Science and Commerce\n",
                            textAlign: TextAlign.justify,
                          ),
                          Text(
                            "The I.D.U.B.S. junior College was started in 1975. It can be proudly as certained that ourswas the First Institution to manage Higher Secondary School in Bhandup. The college is attached to the Hindi medium School and recognized and aided by the Government of Maharas\n",
                            textAlign: TextAlign.justify,
                          ),
                          Text(
                            "The College owes its glory to the vision of our founders, the committed leadership of the management, the sincere dedication of the staff, both teaching & non teaching . The college strives for academic excellence & tries to create an environment which generates love for learning.\n",
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
