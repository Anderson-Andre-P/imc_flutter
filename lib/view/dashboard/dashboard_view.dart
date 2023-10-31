import 'package:imc_flutter/data/repository/local_repository.dart';
import 'package:imc_flutter/extension/datetime_extension.dart';
import 'package:imc_flutter/utility/app_util.dart';
import 'package:imc_flutter/view/about/about.dart';
import 'package:imc_flutter/view/common/size_transition.dart';
import 'package:imc_flutter/view/dashboard/drawer_footer_view.dart';
import 'package:imc_flutter/view/dashboard/drawer_header_view.dart';
import 'package:imc_flutter/view/dashboard/theme_icon_button.dart';
import 'package:imc_flutter/view/drawer/drawer_scaffold.dart';
import 'package:imc_flutter/view/drawer/menu_screen.dart' as m;
import 'package:imc_flutter/view/home/home_view.dart';
import 'package:imc_flutter/view/setting/setting_view.dart';
import 'package:flutter/material.dart';
import 'package:launch_review/launch_review.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../common/common_alert_dialog.dart';
import '../common/rate_dialog.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      LocalRepository localRepository = context.read<LocalRepository>();

      await localRepository.increaseAppOpenCount();
      if (localRepository.getFirstTime()) {
        await localRepository.saveIsFirstTime();
        await localRepository.setFirstTimeDate();
      } else if (!localRepository.isRemindOrRated()) {
        DateTime dateTime = localRepository.getFirstTimeDate();
        if (DateTime.now()
                    .getDateOnly()
                    .difference(dateTime.getDateOnly())
                    .inDays >
                1 &&
            localRepository.getAppOpenCount() > 2) {
          await showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) => const CommonAlertDialog(child: RateDialog()),
          ).then((value) async {
            if (value != null) {
              if (value) {
                await localRepository.rated();
              } else {
                await localRepository.remindMeLater();
              }
            }
          });
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return DrawerScaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        primary: true,
        title: Text(
          'CALCULADORA DE IMC',
          textDirection: TextDirection.ltr,
        ),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 15.0, 0.0),
            height: MediaQuery.of(context).size.height,
            child: ThemeIconButton(),
          )
        ],
      ),
      drawers: [
        m.SideDrawer(
          percentage: 0.8,
          menu: m.Menu(
            items: [
              m.MenuItem(id: 'home', title: 'Início'),
              m.MenuItem(id: 'setting', title: 'Configurações'),
              m.MenuItem(id: 'aboutUs', title: 'Sobre o App'),
              m.MenuItem(id: 'share', title: 'Compartilhar App'),
              m.MenuItem(id: 'rateUs', title: 'Avaliar App'),
              m.MenuItem(id: 'feedback', title: 'Enviar Feedback')
            ],
          ),
          headerView: DrawerHeaderView(),
          footerView: DrawerFooterView(),
          animation: true,
          padding: EdgeInsets.fromLTRB(40.0, 16.0, 0.0, 10.0),
          color: Colors.black87,
          cornerRadius: 20,
          background: DecorationImage(
            image: AssetImage("assets/images/fitness.png"),
            colorFilter: ColorFilter.mode(Colors.white54, BlendMode.dstOut),
            fit: BoxFit.cover,
          ),
          selectorColor: Color.fromRGBO(206, 203, 51, 1),
          textStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17.0,
            color: Colors.white70,
          ),
          selectedItemId: "home",
          onMenuItemSelected: (itemId) async {
            switch (itemId) {
              case 'home':
                break;
              case 'setting':
                Navigator.push(context, SizeRoute(page: SettingView()));
                break;
              case 'aboutUs':
                Navigator.push(context, SizeRoute(page: AboutUsView()));
                break;
              case 'share':
                AppUtil.onShareTap();
                break;
              case 'rateUs':
                LaunchReview.launch(
                  androidAppId: "com.anderson.andre.imc_flutter",
                  iOSAppId: "id",
                );
                break;
              case 'feedback':
                final Uri email = Uri(
                    scheme: "mailto",
                    path: "eleu.ander@gmail.com",
                    query:
                        "${Uri.encodeComponent("subject")}=${Uri.encodeComponent("Feedback for BMI App")}");
                if (await canLaunchUrl(email)) {
                  await launchUrl(email);
                }
                break;
              default:
                break;
            }
          },
        ),
      ],
      builder: (context, id) => HomeView(),
    );
  }
}
