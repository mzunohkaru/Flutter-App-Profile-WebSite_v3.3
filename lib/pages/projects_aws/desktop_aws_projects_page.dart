import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_profile_web_33/pages/projects_flutter/desktop_flutter_projects_page.dart';
import 'package:flutter_profile_web_33/utils/app_url.dart';
import 'package:flutter_profile_web_33/widget/github_card_widget.dart';
import 'package:flutter_profile_web_33/widget/project_description_widget.dart';
import 'package:flutter_profile_web_33/widget/subtitle_widget.dart';

class DesktopAwsProjectsPage extends HookWidget {
  final double deviceHeight;

  const DesktopAwsProjectsPage({super.key, required this.deviceHeight});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SubtitleText(subtitle: "AWS"),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Image.asset(
                "assets/architecture/architecture_node.png",
                filterQuality: FilterQuality.medium,
                fit: BoxFit.fitWidth,
                height: deviceHeight / 1.7,
              ),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProjectDescriptionWidget(
                          title: "プログラミング言語",
                          description: "・JavaScript ・NodeJS"),
                      SizedBox(
                        height: 16,
                      ),
                      ProjectDescriptionWidget(
                          title: "リソース",
                          description:
                              "・API Gateway\n・Lambda\n・DynamoDB\n・Cloud Watch"),
                      SizedBox(
                        height: 16,
                      ),
                      ProjectDescriptionWidget(
                          title: "技術面",
                          description:
                              "・LambdaとDynamoDBを用いて、サーバーレスなバックエンドを構築しました。\n・API Gatewayを用いて、RestAPIを開発しました。\n・トークンによる認証機能を実装しました。\n・APIメソッドには、GET、POST、PUT、DELETEの基本的なものを用意し、データベースへのCRUD操作を実現しました。"),
                      SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        height: 63,
                        width: 190,
                        child: GithubCardButtonWidget(
                          callback: Github_AWS_NodeJSURL,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          const ProjectDescriptionWidget(title: "フロー", description: '''
① POST・GET・PUT・DELETEメソッドでAPIを叩く
② Auth トークンを検証し、ユーザー認証を行う
CREATE DynamoDBにデータを挿入
READ DynamoDBからデータ (全データ＆パスパラメータのIDと一致するデータ) を取得
PUT  DynamoDBのデータを更新
DELETE DynamoDBのデータを削除
'''),
          buildDivider(),
          Row(
            children: [
              Image.asset(
                "assets/architecture/architecture_9.png",
                filterQuality: FilterQuality.medium,
                fit: BoxFit.fitWidth,
                height: deviceHeight / 1.7,
              ),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProjectDescriptionWidget(
                          title: "プログラミング言語", description: "・Python"),
                      SizedBox(
                        height: 16,
                      ),
                      ProjectDescriptionWidget(
                          title: "リソース",
                          description:
                              "・API Gateway\n・Lambda\n・DynamoDB\n・Cloud Watch"),
                      SizedBox(
                        height: 16,
                      ),
                      ProjectDescriptionWidget(
                          title: "技術面",
                          description:
                              "・LambdaとDynamoDBを用いて、サーバーレスなバックエンドを構築しました。\n・API Gatewayを用いて、RestAPIを開発しました。\n・APIメソッドには、GET、POST、PUT、DELETEの基本的なものを用意し、データベースへのCRUD操作を実現しました。"),
                      SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        height: 63,
                        width: 190,
                        child: GithubCardButtonWidget(
                          callback: Github_AWS_DynamoDBURL,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          const ProjectDescriptionWidget(title: "フロー", description: '''
① POST・GET・PUT・DELETEメソッドでAPIを叩く
②-CREATE DynamoDBにデータを挿入
②-READ DynamoDBからデータ (全データ＆パスパラメータのIDと一致するデータ) を取得
②-PUT  DynamoDBのデータを更新
②-DELETE DynamoDBのデータを削除
'''),
          buildDivider(),
          Row(
            children: [
              Image.asset(
                "assets/architecture/architecture_3.png",
                filterQuality: FilterQuality.medium,
                fit: BoxFit.fitWidth,
                height: deviceHeight / 1.7,
              ),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProjectDescriptionWidget(
                          title: "プログラミング言語", description: "・Python"),
                      SizedBox(
                        height: 16,
                      ),
                      ProjectDescriptionWidget(
                          title: "リソース",
                          description:
                              "・API Gateway\n・Lambda\n・RDS for MySQL\n・Cloud Watch\n・Systems Manager(SMS)\n・EC2"),
                      SizedBox(
                        height: 16,
                      ),
                      ProjectDescriptionWidget(
                          title: "技術面",
                          description:
                              "・プライベートサブネットに配置したRDSにより、堅牢なデータベースを実現しました。\n・API Gatewayを用いて、RestAPIを開発しました。\n・API GatewayとLambdaにより、RDS（データベース）へのCRUD操作を実現しました。\n・SystemsManagerを使用し、安全に快適なデータベース操作を可能にしました。"),
                      SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        height: 63,
                        width: 190,
                        child: GithubCardButtonWidget(
                          callback: Github_AWS_RDSURL,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: ProjectDescriptionWidget(
                title: "フロー",
                description:
                    "① GETメソッドでAPIを叩く。パスパラメータにidを持たせる\n② Lambda関数を実行 \n③ RDBのデータへパスパラメータから受け取ったidのデータを検索し、返すように要求\n④ RDBから検索結果のデータを返す\n⑤,⑥ RDBから取得したデータをJSON形式で返す\n⑦ EC2へアクセス\n⑧ コンソールでデータの操作を行う"),
          ),
          buildDivider(),
          Row(
            children: [
              Image.asset(
                "assets/architecture/architecture_unity.png",
                filterQuality: FilterQuality.medium,
                fit: BoxFit.fitWidth,
                height: deviceHeight / 1.7,
              ),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProjectDescriptionWidget(
                          title: "リソース", description: "・Cloud Front\n・S3"),
                      SizedBox(
                        height: 16,
                      ),
                      ProjectDescriptionWidget(
                          title: "技術面",
                          description:
                              "・S3にUnityのオブジェクトを保存しました。\n・保存したオブジェクトをCloudFront経由でロードします。"),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: ProjectDescriptionWidget(
                title: "フロー",
                description:
                    "① CloudFrontへアクセス\n② S3のオブジェクトをロード\n③,④ ロードしたオブジェクトを返す"),
          ),
          buildDivider(),
          Row(
            children: [
              Image.asset(
                "assets/architecture/architecture_1.png",
                filterQuality: FilterQuality.medium,
                fit: BoxFit.fitWidth,
                height: deviceHeight / 1.7,
              ),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProjectDescriptionWidget(
                          title: "プログラミング言語", description: "・Python"),
                      SizedBox(
                        height: 16,
                      ),
                      ProjectDescriptionWidget(
                          title: "リソース",
                          description:
                              "・API Gateway\n・Lambda\n・Translate\n・DynamoDB\n・Cloud Watch"),
                      SizedBox(
                        height: 16,
                      ),
                      ProjectDescriptionWidget(
                          title: "技術面",
                          description: "・パスパラメータで受け取ったデータを加工して、返すAPIを構築した。"),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: ProjectDescriptionWidget(
                title: "フロー",
                description:
                    "① GETメソッドでAPIを叩く。パスパラメータにテキストを持たせる\n② Lambda関数を実行\n③ パスパラメータから受け取ったテキストを翻訳サービスに送る\n④ 翻訳サービスで翻訳したテキストを返す\n⑤ パスパラメータのテキスト、翻訳したテキスト、時間をDynamoDBに保存する\n⑥ DynamoDBから取得したデータを返す\n⑦ 加工したデータをJSON形式で返す"),
          ),
          const SizedBox(
            height: 80,
          ),
        ],
      ),
    );
  }
}
