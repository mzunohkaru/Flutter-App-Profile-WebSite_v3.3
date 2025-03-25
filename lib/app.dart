import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sidebarx/sidebarx.dart';

import 'ui/layout/responsive_widget.dart';
import 'utils/app_url.dart';
import 'utils/constants.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final _controller = SidebarXController(selectedIndex: 0, extended: true);
    final _key = GlobalKey<ScaffoldState>();

    return Builder(
      builder: (context) {
        final isSmallScreen = MediaQuery.of(context).size.width < 800;
        return Scaffold(
          key: _key,
          appBar: isSmallScreen
              ? AppBar(
                  elevation: 0,
                  backgroundColor: canvasColor,
                  leading: IconButton(
                    onPressed: () {
                      // if (!Platform.isAndroid && !Platform.isIOS) {
                      //   _controller.setExtended(true);
                      // }
                      _key.currentState?.openDrawer();
                    },
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                  actions: [
                    const InkWell(
                      onTap: Youtube_URL,
                      child: FaIcon(
                        FontAwesomeIcons.youtube,
                        size: 36,
                        color: Colors.redAccent,
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const InkWell(
                      onTap: Github_URL,
                      child: FaIcon(
                        FontAwesomeIcons.github,
                        size: 36,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    InkWell(
                      onTap: Apple_Store_URL,
                      child: SizedBox(
                        height: 42,
                        width: 42,
                        child: Image.asset("assets/utils/apple_store_icon.png"),
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    InkWell(
                      onTap: Android_Store_URL,
                      child: SizedBox(
                        height: 42,
                        width: 42,
                        child: Image.asset("assets/utils/play_storeicon.png"),
                      ),
                    ),
                  ],
                )
              : null,
          drawer: SideMenuWidget(controller: _controller),
          body: Row(
            children: [
              if (!isSmallScreen) SideMenuWidget(controller: _controller),
              Expanded(
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: SideMenuBodyWidget(
                      controller: _controller,
                      mobile: isSmallScreen,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
