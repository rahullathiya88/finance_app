import 'package:finance_app/presentation/screens/widget/card_widget.dart';
import 'package:finance_app/utils/color.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  List heading = ['Sent', 'Receive', 'Loan'];
  List subHeading = [
    'Sending Payment to client',
    'Receiving Salary from company',
    'Loan for the car'
  ];
  List amount = ['150', '250', '400'];
  List icons = [
    Icons.arrow_upward_outlined,
    Icons.arrow_downward_outlined,
    Icons.attach_money_outlined
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade50,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
          child: Column(
            children: [
              const CardWidget(),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Overview',
                    style: TextStyle(
                        color: Colors.indigo.shade400,
                        fontSize: 22,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  const Icon(
                    Icons.notifications_none_sharp,
                    color: Colors.grey,
                  ),
                  const Spacer(),
                  Text(
                    'Sep 13,2020',
                    style: TextStyle(
                        color: Colors.indigo.shade400,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: heading.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.indigo.shade100,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Icon(icons[index]),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(heading[index]),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        subHeading[index],
                                        style: const TextStyle(
                                            color: KColor.disableText,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Text(amount[index])
                            ],
                          ),
                        ),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
