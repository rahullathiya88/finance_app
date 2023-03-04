import 'package:finance_app/presentation/screens/transaction/recent_transaction.dart';
import 'package:finance_app/utils/color.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const RecentTransaction(),
            ));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(26)),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.menu),
                  Icon(Icons.more_vert_rounded)
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 75,
                        width: 75,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.pink.shade50),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Text(
                        'Hira Riaz',
                        style: TextStyle(
                            color: Colors.indigo.shade400,
                            fontWeight: FontWeight.w600,
                            fontSize: 24),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'UX/UI Designer',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 12),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text(
                                  '8900',
                                  style: TextStyle(
                                      color: Colors.indigo.shade400,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Income',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            const VerticalDivider(
                              color: KColor.disableText,
                              width: 18,
                              thickness: 1,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Column(
                              children: [
                                Text(
                                  '5500',
                                  style: TextStyle(
                                      color: Colors.indigo.shade400,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Expenses',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            const VerticalDivider(
                              color: KColor.disableText,
                              width: 18,
                              thickness: 1,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Column(
                              children: [
                                Text(
                                  '890',
                                  style: TextStyle(
                                      color: Colors.indigo.shade400,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Loan',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
