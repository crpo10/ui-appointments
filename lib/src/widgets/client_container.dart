import 'package:appoimentapp/src/utils/colors.dart';
import 'package:flutter/material.dart';

class ClientContainer extends StatelessWidget {
  const ClientContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      width: double.infinity,
      height: height * 0.35,
      decoration: BoxDecoration(
        color: CustomColors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 20,
            offset: Offset(0.0, 8.8),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: height * 0.1,
            decoration: BoxDecoration(
              color: CustomColors.blue,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Appointment request',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: CustomColors.white.withOpacity(.5),
                          fontSize: height * 0.02,
                        ),
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_vert_outlined,
                        color: CustomColors.white,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(
                        Icons.watch_later_outlined,
                        color: CustomColors.white,
                      ),
                    ),
                    Text(
                      '12 Jan 2020, 8am - 10am',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: CustomColors.white,
                        fontSize: height * 0.02,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    width: width * 0.3,
                    image: AssetImage('assets/person1.jpeg'),
                  ),
                ),
              ),
              Container(
                width: width * 0.3,
                child: Text(
                  'Luois Patterson',
                  style: TextStyle(
                    fontSize: height * 0.025,
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(
                  Icons.info_outlined,
                  size: height * 0.04,
                  color: CustomColors.blue,
                ),
              )
            ],
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
          )
        ],
      ),
    );
  }
}
