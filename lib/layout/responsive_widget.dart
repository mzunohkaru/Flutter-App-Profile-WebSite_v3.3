import 'package:flutter/material.dart';

import '../pages/contacts/desktop_contact_page.dart';
import '../pages/contacts/mobile_contact_page.dart';
import '../pages/policys/desktop_policy_page.dart';
import '../pages/policys/mobile_policy_page.dart';
import '../pages/products/desktop_products_page.dart';
import '../pages/products/mobile_products_page.dart';
import '../pages/projects_aws/desktop_aws_projects_page.dart';
import '../pages/projects_aws/mobile_aws_projects_page.dart';
import '../pages/projects_backend/desktop_backend_projects_page.dart';
import '../pages/projects_backend/mobile_backend_projects_page.dart';
import '../pages/projects_flutter/desktop_flutter_projects_page.dart';
import '../pages/projects_flutter/mobile_flutter_projects_page.dart';
import '../pages/projects_swift/desktop_swift_projects_page.dart';
import '../pages/projects_swift/mobile_swift_projects_page.dart';
import '../utils/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sidebarx/sidebarx.dart';

class SideMenuWidget extends StatelessWidget {
  const SideMenuWidget({
    Key? key,
    required SidebarXController controller,
  })  : _controller = controller,
        super(key: key);

  final SidebarXController _controller;

  @override
  Widget build(BuildContext context) {
    return SidebarX(
      controller: _controller,
      theme: SidebarXTheme(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: canvasColor,
          borderRadius: BorderRadius.circular(20),
        ),
        hoverColor: Colors.white,
        textStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
        selectedTextStyle: const TextStyle(color: Colors.white),
        itemTextPadding: const EdgeInsets.only(left: 30),
        selectedItemTextPadding: const EdgeInsets.only(left: 30),
        itemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: canvasColor),
        ),
        selectedItemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: actionColor.withOpacity(0.37),
          ),
          gradient: const LinearGradient(
            colors: [accentCanvasColor, canvasColor],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.28),
              blurRadius: 30,
            )
          ],
        ),
        iconTheme: IconThemeData(
          color: Colors.white.withOpacity(0.7),
          size: 20,
        ),
        selectedIconTheme: const IconThemeData(
          color: Colors.white,
          size: 20,
        ),
      ),
      extendedTheme: const SidebarXTheme(
        width: 200,
        decoration: BoxDecoration(
          color: canvasColor,
        ),
      ),
      footerDivider: divider,
      headerBuilder: (context, extended) {
        return const SizedBox(
          height: 100,
        );
      },
      items: const [
        SidebarXItem(
          iconWidget: FaIcon(
            FontAwesomeIcons.unity,
            color: Colors.grey,
          ),
          label: 'Unity',
        ),
        SidebarXItem(
          iconWidget: FaIcon(
            FontAwesomeIcons.swift,
            color: Colors.blue,
          ),
          label: 'Swift UI',
        ),
        SidebarXItem(
          iconWidget: FlutterLogo(),
          label: 'Flutter',
        ),
        SidebarXItem(
          iconWidget: FaIcon(
            FontAwesomeIcons.aws,
            color: Colors.orange,
          ),
          label: 'AWS',
        ),
        SidebarXItem(
          iconWidget: FaIcon(
            FontAwesomeIcons.docker,
            color: Colors.blue,
          ),
          label: 'Docker',
        ),
        SidebarXItem(
          iconWidget: Icon(
            Icons.shield,
            color: Colors.grey,
          ),
          label: 'Policy',
        ),
        SidebarXItem(
          iconWidget: Icon(
            Icons.mail,
            color: Colors.grey,
          ),
          label: 'Contact',
        )
      ],
    );
  }
}

class SideMenuBodyWidget extends StatefulWidget {
  const SideMenuBodyWidget({
    Key? key,
    required this.controller,
    required this.mobile,
  }) : super(key: key);

  final SidebarXController controller;
  final bool mobile;

  @override
  State<SideMenuBodyWidget> createState() => _SideMenuBodyWidgetState();
}

class _SideMenuBodyWidgetState extends State<SideMenuBodyWidget> {
  late double deviceWidth, deviceHeight;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: widget.controller,
      builder: (context, child) {
        switch (widget.controller.selectedIndex) {
          case 0:
            return widget.mobile
                ? MobileProductPage(
                    deviceWidth: deviceWidth,
                    deviceHeight: deviceHeight,
                  )
                : DesktopProductPage(
                    deviceWidth: deviceWidth, deviceHeight: deviceHeight);
          case 1:
            return widget.mobile
                ? const MobileSwiftProjectsPage()
                : DesktopSwiftProjectsPage(deviceHeight: deviceHeight);
          case 2:
            return widget.mobile
                ? const MobileFlutterProjectsPage()
                : DesktopFlutterProjectsPage(
                    deviceWidth: deviceWidth, deviceHeight: deviceHeight);
          case 3:
            return widget.mobile
                ? const MobileAwsProjectsPage()
                : DesktopAwsProjectsPage(deviceHeight: deviceHeight);
          case 4:
            return widget.mobile
                ? const MobileBackendProjectsPage()
                : DesktopBackendProjectsPage(deviceWidth: deviceWidth);
          case 5:
            return widget.mobile
                ? MobilePolicyPage(
                    isJP: true,
                    deviceWidth: deviceWidth,
                    deviceHeight: deviceHeight)
                : const DesktopPolicyPage();
          case 6:
            return widget.mobile
                ? const MobileContactPage()
                : DesktopContactPage(deviceWidth: deviceWidth);
          default:
            return const SizedBox();
        }
      },
    );
  }
}
