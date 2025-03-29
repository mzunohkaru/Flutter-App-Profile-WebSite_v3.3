import 'package:flutter/material.dart';
import 'package:flutter_profile_web_33/gen/assets.gen.dart';
import '../../utils/app_url.dart';
import '../../utils/constants.dart';
import '../../widget/subtitle_widget.dart';

class DesktopProductPage extends StatelessWidget {
  const DesktopProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
        children: [
          const SubtitleText(subtitle: "Unity"),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SizedBox(
                    height: deviceHeight / 1.2,
                    child: Image.asset(Assets.app.ui5.path),
                  ),
                ],
              ),
              Expanded(
                child: SizedBox(
                  width: deviceWidth / 2.5,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        const Text("脱出ゲーム 寺うさ", style: kDesktopTitleTextStyle),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          "風情のある、古風な日本の寺院からさまざまな謎や仕掛けを解いて2023年の初詣に行こう！",
                          style: kDesktopSubTitleTextStyle,
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        _StoreButton(
                            image: "assets/utils/apple_store.png",
                            onPressed: () => Apple_Terausa_EscURL),
                        const SizedBox(
                          height: 12,
                        ),
                        _StoreButton(
                            image: "assets/utils/play_store.png",
                            onPressed: () => Android_Terausa_EscURL),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: SizedBox(
                    width: deviceWidth / 2.5,
                    child: Column(
                      children: [
                        const Text("脱出ゲーム あぶら屋", style: kDesktopTitleTextStyle),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          "ようこそ「旅館あぶら屋」へ\n空の移ろいと共に浮かび上がる\n草花が揺れる客室 木々の香る露天風呂",
                          style: kDesktopSubTitleTextStyle,
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        _StoreButton(
                            image: "assets/utils/apple_store.png",
                            onPressed: () => Apple_Aburaya_EscURL),
                      ],
                    ),
                  ),
                ),
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SizedBox(
                    height: deviceHeight / 1.2,
                    child: Image.asset(
                      "assets/app/ui6.png",
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SizedBox(
                    height: deviceHeight / 1.2,
                    child: Image.asset(
                      "assets/app/ui7.png",
                    ),
                  ),
                ],
              ),
              Expanded(
                child: SizedBox(
                  width: deviceWidth / 2.5,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        const Text("脱出ゲーム 旅立ち", style: kDesktopTitleTextStyle),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          "個性的な生徒達を卒業させるべく奮闘！？\n教師になって初めて受け持つことになったクラスには、自由奔放な生徒達が集まった。大きく羽ばたいて欲しいが...",
                          style: kDesktopSubTitleTextStyle,
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        _StoreButton(
                            image: "assets/utils/apple_store.png",
                            onPressed: () => Apple_Tabidachi_EscURL),
                        const SizedBox(
                          height: 12,
                        ),
                        _StoreButton(
                            image: "assets/utils/play_store.png",
                            onPressed: () => Android_Tabidachi_EscURL),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: SizedBox(
                    width: deviceWidth / 2.5,
                    child: Column(
                      children: [
                        const Text("脱出ゲーム 異世界召喚",
                            style: kDesktopTitleTextStyle),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          "妖精の女王を名乗る”レーシィ ”に 異世界 に召喚されることに。\n行方不明の父を探している”レーシィ ”と呪いの遺跡に行くのだがーー\nきみは知ることになるだろう。呪いの正体　妖精の結末　父の行方　を。",
                          style: kDesktopSubTitleTextStyle,
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        _StoreButton(
                            image: "assets/utils/apple_store.png",
                            onPressed: () => Apple_Fairy_EscURL),
                      ],
                    ),
                  ),
                ),
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SizedBox(
                    height: deviceHeight / 1.2,
                    child: Image.asset(
                      "assets/app/ui8.png",
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SizedBox(
                    height: deviceHeight / 1.2,
                    child: Image.asset(
                      "assets/app/ui9.png",
                    ),
                  ),
                ],
              ),
              Expanded(
                child: SizedBox(
                  width: deviceWidth / 2.5,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        const Text("脱出ゲーム 七夕の昔話",
                            style: kDesktopTitleTextStyle),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          "神に引き離された彦星と織姫\n年に一度の七夕の日に大雨で天の川を渡れなくなる...\n果たして 彦星は織姫に会うことができるのか！？",
                          style: kDesktopSubTitleTextStyle,
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        _StoreButton(
                            image: "assets/utils/apple_store.png",
                            onPressed: () => Apple_Tanabata_EscURL),
                        const SizedBox(
                          height: 12,
                        ),
                        _StoreButton(
                            image: "assets/utils/play_store.png",
                            onPressed: () => Android_Tanabata_EscURL),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 80,
          )
        ],
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
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Container(
        width: 220,
        margin: const EdgeInsets.all(10.0),
        child: Center(
          child: Image.asset(
            image,
          ),
        ),
      ),
    );
  }
}
