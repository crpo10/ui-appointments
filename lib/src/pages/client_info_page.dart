import 'package:appoimentapp/src/utils/colors.dart';
import 'package:appoimentapp/src/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClientsInfoPage extends StatelessWidget {
  const ClientsInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(
          elevation: 0,
          backgroundColor: CustomColors.blue,
        ),
      ),
      body: Stack(
        children: [
          _backgroundContainer(height),
          Column(
            children: [
              CustomAppBar(
                condition: true,
                leadingFunction: () => Get.back(),
                leadingIcon: Icon(
                  Icons.arrow_back,
                  color: CustomColors.white,
                ),
                text: 'Appointment request',
                trailingIcon: Icon(
                  Icons.more_vert_outlined,
                  color: CustomColors.white,
                ),
                trailingFunction: () {},
              ),
              SizedBox(
                height: height * 0.1,
              ),
              Container(
                width: width * 0.7,
                child: Text(
                  '12 Jan 2020, 8am - 10am',
                  textAlign: TextAlign.center,
                  // overflow: TextOverflow.clip,
                  style: TextStyle(
                    color: CustomColors.white,
                    fontSize: height * 0.04,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 50,
                  bottom: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(500),
                        border: Border.all(color: CustomColors.white, width: 5),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(500),
                        child: Image.asset(
                          'assets/person1.jpeg',
                          width: width * 0.4,
                        ),
                      ),
                    ),
                    Container(
                      width: width * 0.18,
                      height: height * 0.08,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(400),
                        border: Border.all(
                          color: CustomColors.white,
                          width: 5,
                        ),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.phone,
                          color: CustomColors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: width * 0.6,
                child: Text(
                  'Louis patterson',
                  style: TextStyle(
                    fontSize: height * 0.05,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 230, bottom: 10),
                child: Text(
                  'Comment:',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              Container(
                width: width * 0.8,
                child: Text(
                  'Hello Dr. Peterson,\nI going to bring my complete blood\ncount analysis with me.',
                  style: TextStyle(
                    fontSize: height * 0.02,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  width: width * 0.85,
                  height: width * 0.2,
                  decoration: BoxDecoration(
                    color: Colors.teal.withOpacity(.3),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 30,
                          left: 20,
                        ),
                        child: Icon(
                          Icons.attach_file_rounded,
                          color: Colors.teal,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 20, bottom: 5),
                            child: Text(
                              'Complete blood count',
                              style: TextStyle(
                                color: CustomColors.blue,
                                fontSize: height * 0.02,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              '05 Mar 2020',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: height * 0.015,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: CustomColors.blue,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        width: width * 0.5,
                        child: MaterialButton(
                          onPressed: () {},
                          child: Text(
                            'ACCEPT',
                            style: TextStyle(
                              color: CustomColors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: width * 0.35,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Text('DECLINE'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _backgroundContainer(double height) {
    return Container(
      width: double.infinity,
      height: height * 0.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(150)),
        color: CustomColors.blue,
      ),
    );
  }
}
