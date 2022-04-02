import 'package:flutter/material.dart';

class CustomColors {
  static const Color greenAccent = Color(0xFF2ee3b3);
  static const Color blueAccent = Color(0xFF275bf7);
  static const Color darkBlue = Color(0xFF212f40);
  static const Color lightGrey = Color(0xFFf2f2f2);
  static const Color pink = Color(0xFFff2258);
  static const Color yellow = Color(0xFFfbc928);
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[200],
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 6,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.network(
                              'https://thispersondoesnotexist.com/image',
                              height: 50,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Gregory Smith',
                                style: TextStyle(
                                  color: CustomColors.darkBlue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: CustomColors.yellow,
                                  ),
                                  Text(
                                    '4.9',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[400],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: CustomColors.blueAccent,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const Icon(
                              Icons.chat_rounded,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: CustomColors.greenAccent,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const Icon(
                              Icons.phone,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                        child: Column(
                          children: [
                            Row(
                              children: const [
                                Icon(
                                  Icons.gps_fixed,
                                  color: CustomColors.greenAccent,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  '7958 Swift Village',
                                  style: TextStyle(
                                    color: CustomColors.darkBlue,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                const Icon(
                                  Icons.location_on,
                                  color: CustomColors.pink,
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.only(top: 8),
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        top: BorderSide(
                                          color: CustomColors.lightGrey,
                                        ),
                                      ),
                                    ),
                                    child: const Text(
                                      '105 William St, Chicago, US',
                                      style: TextStyle(
                                        color: CustomColors.darkBlue,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          top: BorderSide(
                            color: CustomColors.lightGrey,
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              Icons.car_repair,
                              size: 50,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'DISTANCE',
                                  style: TextStyle(
                                    color: Colors.grey[400],
                                  ),
                                ),
                                const Text(
                                  '0.2km',
                                  style: TextStyle(
                                    color: CustomColors.darkBlue,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'TIME',
                                  style: TextStyle(
                                    color: Colors.grey[400],
                                  ),
                                ),
                                const Text(
                                  '2 min',
                                  style: TextStyle(
                                    color: CustomColors.darkBlue,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'PRICE',
                                  style: TextStyle(
                                    color: Colors.grey[400],
                                  ),
                                ),
                                const Text(
                                  '\$ 25.00',
                                  style: TextStyle(
                                    color: CustomColors.darkBlue,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(20),
                        ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextButton(
                              onPressed: () {},
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('Cancel Request',
                                    style: TextStyle(color: Colors.white)),
                              ),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  CustomColors.darkBlue,
                                ),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
