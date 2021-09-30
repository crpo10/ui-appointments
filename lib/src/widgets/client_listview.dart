import 'package:appoimentapp/src/utils/clients_data.dart';
import 'package:flutter/material.dart';

class ClientsListView extends StatelessWidget {
  const ClientsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return ListView.builder(
      // padding: EdgeInsets.zero,
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: clients.length,
      itemBuilder: (_, i) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
          child: Container(
            width: double.infinity,
            height: height * 0.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 20,
                  offset: Offset(0.0, 15),
                ),
              ],
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          clients[i].image!,
                          width: width * 0.2,
                          height: height * 0.05,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.green,
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '${clients[i].name} ${clients[i].lastName}',
                        style: TextStyle(fontSize: height * 0.02),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        '${clients[i].date}',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: IconButton(
                    icon: Icon(
                      Icons.more_vert,
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
