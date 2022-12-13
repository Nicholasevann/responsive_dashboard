import 'package:dashboardweb/component/appbar-action-item.dart';
import 'package:dashboardweb/component/bar-chart.dart';
import 'package:dashboardweb/component/card-payment.dart';
import 'package:dashboardweb/component/header.dart';
import 'package:dashboardweb/component/history-table.dart';
import 'package:dashboardweb/component/payment-card.dart';
import 'package:dashboardweb/component/side-menu.dart';
import 'package:dashboardweb/config/responsive.dart';
import 'package:dashboardweb/config/size_config.dart';
import 'package:dashboardweb/style/colors.dart';
import 'package:dashboardweb/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
    SizeConfig().init(context);
    final _scrollController = ScrollController();
    final _scrollController2 = ScrollController();
    return Scaffold(
      key: _drawerKey,
      drawer: SizedBox(
        width: 100,
        child: SideMenu(),
      ),
      appBar: !Responsive.isDesktop(context)
          ? AppBar(
              elevation: 0,
              backgroundColor: AppColors.white,
              leading: IconButton(
                onPressed: () {
                  _drawerKey.currentState?.openDrawer();
                },
                icon: Icon(
                  Icons.menu,
                  color: AppColors.black,
                ),
              ),
              actions: [AppBarActionItem()],
            )
          : PreferredSize(child: SizedBox(), preferredSize: Size.zero),
      body: SafeArea(
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          if (Responsive.isDesktop(context))
            Expanded(flex: 1, child: SideMenu()),
          Expanded(
              flex: 10,
              child: Container(
                width: double.infinity,
                height: SizeConfig.screenHeight,
                child: Scrollbar(
                  controller: _scrollController2,
                  child: SingleChildScrollView(
                    controller: _scrollController2,
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Header(),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical! * 4,
                        ),
                        SizedBox(
                          width: SizeConfig.screenWidth,
                          child: Wrap(
                            runSpacing: 20,
                            spacing: 20,
                            alignment: WrapAlignment.spaceBetween,
                            children: [
                              CardPaymentList(
                                icon: 'assets/credit-card.svg',
                                title: 'Transfer via \n Card number',
                                price: '\$150',
                              ),
                              CardPaymentList(
                                icon: 'assets/transfer.svg',
                                title: 'Transfer via \n Online banks',
                                price: '\$1250',
                              ),
                              CardPaymentList(
                                icon: 'assets/bank.svg',
                                title: 'Transfer via \n Same bank',
                                price: '\$2150',
                              ),
                              CardPaymentList(
                                icon: 'assets/invoice.svg',
                                title: 'Transfer via \n Other bank',
                                price: '\$10',
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical! * 4,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                PrimaryText(
                                    text: 'Balance',
                                    color: AppColors.secondary,
                                    fontWeight: FontWeight.w800,
                                    height: 0,
                                    size: 30),
                                PrimaryText(
                                    text: '\$1500',
                                    color: AppColors.black,
                                    fontWeight: FontWeight.w800,
                                    height: 0,
                                    size: 16),
                              ],
                            ),
                            PrimaryText(
                                text: 'Past 30 DAYS',
                                color: AppColors.secondary,
                                fontWeight: FontWeight.w800,
                                height: 0,
                                size: 16),
                          ],
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical! * 4,
                        ),
                        Container(
                          height: 180,
                          child: BarChartComponent(),
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical! * 4,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            PrimaryText(
                                text: 'History',
                                color: AppColors.black,
                                fontWeight: FontWeight.w800,
                                height: 0,
                                size: 30),
                            PrimaryText(
                                text: 'Transaction of last 6 months',
                                color: AppColors.secondary,
                                fontWeight: FontWeight.w800,
                                height: 0,
                                size: 16),
                          ],
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical! * 4,
                        ),
                        HistoryTable(),
                        if (!Responsive.isDesktop(context)) PaymentCardDetail()
                      ],
                    ),
                  ),
                ),
              )),
          if (Responsive.isDesktop(context))
            Expanded(
                flex: 4,
                child: Container(
                  width: double.infinity,
                  height: SizeConfig.screenHeight,
                  color: AppColors.secondaryBg,
                  child: Scrollbar(
                    controller: _scrollController,
                    child: SingleChildScrollView(
                        controller: _scrollController,
                        padding:
                            EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                        child: Column(children: [
                          AppBarActionItem(),
                          PaymentCardDetail()
                        ])),
                  ),
                )),
        ]),
      ),
    );
  }
}
