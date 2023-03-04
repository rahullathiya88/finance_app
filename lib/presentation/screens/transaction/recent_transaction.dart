import 'package:finance_app/presentation/screens/widget/custom_button.dart';
import 'package:finance_app/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class RecentTransaction extends StatefulWidget {
  const RecentTransaction({Key? key}) : super(key: key);

  @override
  State<RecentTransaction> createState() => _RecentTransactionState();
}

class _RecentTransactionState extends State<RecentTransaction> {
  RxInt screenPosition = 0.obs;
  List finalList = ['All', 'Income', 'Expense'];
  List tabScreens = [];
  RxList<bool> selectionItem = List.filled(3, false).obs;
  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade50,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.arrow_back_ios)),
                const Icon(Icons.search)
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recent Transaction',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                      color: Colors.indigo.shade400),
                ),
                const Text(
                  'See all',
                  style: TextStyle(fontSize: 14),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 1;
                    });
                  },
                  child: Container(
                    height: 25,
                    width: 55,
                    decoration: BoxDecoration(
                        color: selectedIndex == 1
                            ? Colors.indigo.shade400
                            : Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: Text(
                        'All',
                        style: TextStyle(
                            fontSize: 12,
                            color: selectedIndex == 1
                                ? Colors.white
                                : Colors.black),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 2;
                    });
                  },
                  child: Container(
                    height: 25,
                    width: 70,
                    decoration: BoxDecoration(
                        color: selectedIndex == 2
                            ? Colors.indigo.shade400
                            : Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: Text(
                        'Income',
                        style: TextStyle(
                            fontSize: 12,
                            color: selectedIndex == 2
                                ? Colors.white
                                : Colors.black),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 3;
                    });
                  },
                  child: Container(
                    height: 25,
                    width: 70,
                    decoration: BoxDecoration(
                        color: selectedIndex == 3
                            ? Colors.indigo.shade400
                            : Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: Text(
                        'Expense',
                        style: TextStyle(
                            fontSize: 12,
                            color: selectedIndex == 3
                                ? Colors.white
                                : Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            selectedIndex == 1
                ? Text(
                    'Today',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.indigo.shade400),
                  )
                : Container(),
            const SizedBox(
              height: 15,
            ),
            selectedIndex == 1
                ? Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.payment,
                            size: 40,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Payment',
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: const [
                                  Text(
                                    'Payment from Andrea',
                                    style: TextStyle(
                                        color: KColor.disableText,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Spacer(),
                          const Text('30.00')
                        ],
                      ),
                    ),
                  )
                : Container(),
            SizedBox(
              height: 20,
            ),
            selectedIndex == 1
                ? Center(
                    child: Lottie.asset(
                      'assets/lottie/payment.json',
                      width: 350,
                      height: 350,
                      fit: BoxFit.fill,
                    ),
                  )
                : SizedBox.shrink(),
            selectedIndex == 1 ? const Spacer() : const SizedBox.shrink(),
            selectedIndex == 1
                ? CustomButton(
                    onTap: () {},
                    title: 'See Details',
                  )
                : const SizedBox.shrink(),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      )),
    );
  }
}
