import 'package:flutter/material.dart';
import '../../utils/app_url.dart';
import '../../widget/github_card_widget.dart';
import '../../widget/project_description_widget.dart';
import '../../widget/subtitle_widget.dart';

class DesktopFlutterProjectsPage extends StatelessWidget {
  final double deviceWidth;
  final double deviceHeight;

  const DesktopFlutterProjectsPage(
      {super.key, required this.deviceWidth, required this.deviceHeight});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SubtitleText(subtitle: "Flutter"),
          const SizedBox(
            height: 30,
          ),
          GithubCardWidget(
              deviceHeight: deviceHeight,
              image: "assets/projects/flutter_instagram.png",
              githubCallback: Github_Flutter_InstagramURL,
              youtube: true,
              youtubeCallback: Youtube_Flutter_InstagramURL),
          const ProjectDescriptionWidget(
              title: "アーキテクチャ", description: "・MVVM + Repository + Usecase"),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: ProjectDescriptionWidget(
                title: "使用したパッケージ",
                description:
                    "・Riverpod, Hooks, Freezed など\n＊詳しくはGitHubをご覧ください。"),
          ),
          const ProjectDescriptionWidget(
              title: "バックエンド機能一覧",
              description:
                  "・ユーザー認証\n・プロフィール（名前、プロフィール画像など）の編集\n・投稿（画像、テキスト）\n・投稿へのいいね、コメント\n・フォロー\n・ユーザー検索\n＊詳しくはYoutubeやGitHubをご覧ください。"),
          const SizedBox(
            height: 16,
          ),
          const ProjectDescriptionWidget(
              title: "技術面",
              description:
                  "・Firebaseに保存した投稿データ (画像) をRiverpodで取得、監視する。\n・取得したデータをアプリ側の配列に格納し操作することで、Firebaseの呼び出し回数を減らし、コストを節約する。\n・重複せず最適化されたデータベース構成を実現。(ER図は、Github Readmeをご覧ください。)\n・キャッシュを使用することでサーバーの負担を軽減、レイテンシーの低下を実装。"),
          buildDivider(),
          GithubCardWidget(
              deviceHeight: deviceHeight,
              image: "assets/projects/flutter_tiktok.png",
              githubCallback: Github_Flutter_TiktokURL,
              youtube: true,
              youtubeCallback: Youtube_Flutter_TiktokURL),
          const ProjectDescriptionWidget(
              title: "アーキテクチャ", description: "・MVVM + Repository + Usecase"),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: ProjectDescriptionWidget(
                title: "使用したパッケージ",
                description:
                    "・Riverpod, Hooks, Freezed, cached_network_image など\n＊詳しくはGitHubをご覧ください。"),
          ),
          const ProjectDescriptionWidget(
              title: "バックエンド機能一覧",
              description:
                  "・ユーザー認証\n・プロフィール（名前、プロフィール画像など）の編集\n・投稿（動画、テキスト）\n・投稿へのいいね、コメント\n・フォロー\n・通知\n・ユーザー検索\n＊詳しくはYoutubeやGitHubをご覧ください。"),
          const SizedBox(
            height: 16,
          ),
          const ProjectDescriptionWidget(
              title: "技術面",
              description:
                  "・Firebaseに保存した投稿データ (動画) をRiverpodで取得、監視する。\n・取得したデータをアプリ側の配列に格納し操作することで、Firebaseの呼び出し回数を減らし、コストを節約する。\n・重複せず最適化されたデータベース構成を実現。(ER図は、Github Readmeをご覧ください。)\n・キャッシュを使用することでサーバーの負担を軽減、レイテンシーの低下を実装。"),
          buildDivider(),
          GithubCardWidget(
              deviceHeight: deviceHeight,
              image: "assets/projects/flutter_translate.png",
              githubCallback: Github_Flutter_TranslationURL,
              youtube: false,
              youtubeCallback: null),
          const SizedBox(
            height: 80,
          ),
        ],
      ),
    );
  }
}

Widget buildDivider() {
  return const Column(
    children: [
      SizedBox(
        height: 30,
      ),
      Divider(),
      SizedBox(
        height: 30,
      ),
    ],
  );
}
