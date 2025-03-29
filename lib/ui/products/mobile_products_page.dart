import 'package:flutter/material.dart';
import 'package:flutter_profile_web_33/ui/projects_flutter/desktop_flutter_projects_page.dart';
import 'package:flutter_profile_web_33/utils/app_url.dart';
import 'package:flutter_profile_web_33/utils/constants.dart';
import 'package:flutter_profile_web_33/widget/subtitle_widget.dart';

class MobileProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SubtitleText(subtitle: "Unity"),
              const SizedBox(
                height: 30,
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SizedBox(
                    width: deviceWidth / 1.2,
                    child: Image.asset(
                      "assets/app/ui5.png",
                    ),
                  ),
                  Positioned(
                    bottom: 60,
                    child: Card(
                      color: Colors.white54.withOpacity(0.3),
                      elevation: 36,
                      child: Container(
                        width: deviceWidth / 1.6,
                        height: 140,
                        margin: const EdgeInsets.all(10.0),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "脱出ゲーム 寺うさ",
                              style: kMobileTitleTextStyle,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "風情のある、古風な日本の寺院からさまざまな謎や仕掛けを解いて2023年の初詣に行こう！",
                              style: kMobileSubTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              _StoreButton(
                  image: "assets/utils/apple_store.png",
                  onPressed: () => Apple_Terausa_EscURL()),
              _StoreButton(
                  image: "assets/utils/play_store.png",
                  onPressed: () => Android_Terausa_EscURL()),
              buildDivider(),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SizedBox(
                    width: deviceWidth / 1.2,
                    child: Image.asset(
                      "assets/app/ui6.png",
                    ),
                  ),
                  Positioned(
                    bottom: 60,
                    child: Card(
                      color: Colors.white54.withOpacity(0.3),
                      elevation: 36,
                      child: Container(
                        width: deviceWidth / 1.6,
                        height: 140,
                        margin: const EdgeInsets.all(10.0),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "脱出ゲーム あぶら屋",
                              style: kMobileTitleTextStyle,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "ようこそ「旅館あぶら屋」へ" +
                                  "\n空の移ろいと共に浮かび上がる" +
                                  "\n草花が揺れる客室 木々の香る露天風呂",
                              style: kMobileSubTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              _StoreButton(
                  image: "assets/utils/apple_store.png",
                  onPressed: () => Apple_Aburaya_EscURL()),
              buildDivider(),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SizedBox(
                    width: deviceWidth / 1.2,
                    child: Image.asset(
                      "assets/app/ui7.png",
                    ),
                  ),
                  Positioned(
                    bottom: 60,
                    child: Card(
                      color: Colors.white54.withOpacity(0.3),
                      elevation: 36,
                      child: Container(
                        width: deviceWidth / 1.6,
                        height: 170,
                        margin: const EdgeInsets.all(10.0),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "脱出ゲーム 旅立ち",
                              style: kMobileTitleTextStyle,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "個性的な生徒達を卒業させるべく奮闘！？" +
                                  "\n教師になって初めて受け持つことになったクラスには、自由奔放な生徒達が集まった。大きく羽ばたいて欲しいが。",
                              style: kMobileSubTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              _StoreButton(
                  image: "assets/utils/apple_store.png",
                  onPressed: () => Apple_Tabidachi_EscURL()),
              _StoreButton(
                  image: "assets/utils/play_store.png",
                  onPressed: () => Android_Tabidachi_EscURL()),
              buildDivider(),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SizedBox(
                    width: deviceWidth / 1.2,
                    child: Image.asset(
                      "assets/app/ui8.png",
                    ),
                  ),
                  Positioned(
                    bottom: 60,
                    child: Card(
                      color: Colors.white54.withOpacity(0.3),
                      elevation: 36,
                      child: Container(
                        width: deviceWidth / 1.6,
                        height: 200,
                        margin: const EdgeInsets.all(10.0),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "脱出ゲーム 異世界召喚",
                              style: kMobileTitleTextStyle,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "妖精の女王を名乗る”レーシィ ”に 異世界 に召喚されることに。" +
                                  "\n行方不明の父を探している”レーシィ ”と呪いの遺跡に行くのだがーー" +
                                  "\nきみは知ることになるだろう。呪いの正体　妖精の結末　父の行方　を。",
                              style: kMobileSubTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              _StoreButton(
                  image: "assets/utils/apple_store.png",
                  onPressed: () => Apple_Fairy_EscURL()),
              buildDivider(),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SizedBox(
                    width: deviceWidth / 1.2,
                    child: Image.asset(
                      "assets/app/ui9.png",
                    ),
                  ),
                  Positioned(
                    bottom: 5,
                    child: Card(
                      color: Colors.white54.withOpacity(0.3),
                      elevation: 36,
                      child: Container(
                        width: deviceWidth / 1.6,
                        height: 140,
                        margin: const EdgeInsets.all(10.0),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "脱出ゲーム 七夕の昔話",
                              style: kMobileTitleTextStyle,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "神に引き離された彦星と織姫" + "\n果たして 彦星は織姫に会うことができるのか！？",
                              style: kMobileSubTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              _StoreButton(
                  image: "assets/utils/apple_store.png",
                  onPressed: () => Apple_Tanabata_EscURL()),
              _StoreButton(
                  image: "assets/utils/play_store.png",
                  onPressed: () => Android_Tanabata_EscURL()),
              const SizedBox(
                height: 80,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _StoreButton extends StatelessWidget {
  const _StoreButton({required this.image, required this.onPressed});

  final String image;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Container(
        width: deviceWidth / 2.7,
        margin: const EdgeInsets.all(10.0),
        child: Center(
          child: Image.asset(
            image,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
