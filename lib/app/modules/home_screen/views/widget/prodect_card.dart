import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProdectCard extends StatelessWidget {
  const ProdectCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          child: Card(
            elevation: 10,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 150,
                      height: 140,
                      child: Image.asset(
                        "assetes/image/WhatsApp Image 2022-09-06 at 09.23.31.jpg",
                        fit: BoxFit.cover,
                        width: 150,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "shipment ID: # 123456",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                overflow: TextOverflow.ellipsis),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Pickup location \n 678 muscat steet",
                            maxLines: 3,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                overflow: TextOverflow.ellipsis),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 80),
                            child: TextButton(
                                onPressed: () {},
                                child: Text("view in deatils")),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
