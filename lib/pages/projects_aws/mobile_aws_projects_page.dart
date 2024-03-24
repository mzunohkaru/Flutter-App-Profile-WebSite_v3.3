import 'package:flutter/material.dart';
import 'package:flutter_profile_web_33/pages/projects_flutter/desktop_flutter_projects_page.dart';
import 'package:flutter_profile_web_33/utils/app_url.dart';
import 'package:flutter_profile_web_33/widget/project_description_widget.dart';
import 'package:flutter_profile_web_33/widget/subtitle_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MobileAwsProjectsPage extends StatelessWidget {
  const MobileAwsProjectsPage({super.key});

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
          Image.asset(
            "assets/architecture/architecture_node.png",
            fit: BoxFit.cover,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: Github_AWS_NodeJSURL,
                  icon: FaIcon(
                    FontAwesomeIcons.github,
                    size: 40,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          const ProjectDescriptionWidget(
              title: "プログラミング言語", description: "・JavaScript ・NodeJS"),
          const SizedBox(
            height: 12,
          ),
          const ProjectDescriptionWidget(
              title: "リソース",
              description: "・API Gateway\n・Lambda\n・DynamoDB\n・Cloud Watch"),
          const SizedBox(
            height: 12,
          ),
          const ProjectDescriptionWidget(
              title: "フロー",
              description:
                  "① POST・GET・PUT・DELETEメソッドでAPIを叩く\n② Auth トークンを検証し、ユーザー認証を行う \n③ DynamoDBへパスパラメータから受け取ったデータを保存する\n④ GET Lambda関数を実行\n⑤ パスパラメータにidがある場合は、idと一致するデータを返す。パスパラメータにidがない場合は、すべてのデータを返す。\n⑥,⑦ DynamoDBから取得したデータをJSON形式で返す\n⑧ PUT Lambda関数を実行\n⑨ パスパラメータから受け取ったidと一致するDynamoDBのデータを更新する\n10 DELETE Lambda関数を実行\n11 パスパラメータから受け取ったidと一致するDynamoDBのデータを削除する"),
          const SizedBox(
            height: 12,
          ),
          const ProjectDescriptionWidget(
              title: "技術面",
              description:
                  "・LambdaとDynamoDBを用いて、サーバーレスなバックエンドを構築しました。\n・API Gatewayを用いて、RestAPIを開発しました。\n・トークンによる認証機能を実装しました。\n・APIメソッドには、GET、POST、PUT、DELETEの基本的なものを用意し、データベースへのCRUD操作を実現しました。"),
          buildDivider(),
          Image.asset(
            "assets/architecture/architecture_9.png",
            fit: BoxFit.cover,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: Github_AWS_DynamoDBURL,
                  icon: FaIcon(
                    FontAwesomeIcons.github,
                    size: 40,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          const ProjectDescriptionWidget(
              title: "プログラミング言語", description: "・Python"),
          const SizedBox(
            height: 12,
          ),
          const ProjectDescriptionWidget(
              title: "リソース",
              description: "・API Gateway\n・Lambda\n・DynamoDB\n・Cloud Watch"),
          const SizedBox(
            height: 12,
          ),
          const ProjectDescriptionWidget(
              title: "フロー",
              description:
                  "① POST・GET・PUT・DELETEメソッドでAPIを叩く\n② POST Lambda関数を実行 \n③ DynamoDBへパスパラメータから受け取ったデータを保存する\n④ GET Lambda関数を実行\n⑤ パスパラメータにidがある場合は、idと一致するデータを返す。パスパラメータにidがない場合は、すべてのデータを返す。\n⑥,⑦ DynamoDBから取得したデータをJSON形式で返す\n⑧ PUT Lambda関数を実行\n⑨ パスパラメータから受け取ったidと一致するDynamoDBのデータを更新する\n10 DELETE Lambda関数を実行\n11 パスパラメータから受け取ったidと一致するDynamoDBのデータを削除する"),
          const SizedBox(
            height: 12,
          ),
          const ProjectDescriptionWidget(
              title: "技術面",
              description:
                  "・Python\n・LambdaとDynamoDBを用いて、サーバーレスなバックエンドを構築しました。\n・API Gatewayを用いて、RestAPIを開発しました。\n・APIメソッドには、GET、POST、PUT、DELETEの基本的なものを用意し、データベースへのCRUD操作を実現しました。"),
          buildDivider(),
          Image.asset(
            "assets/architecture/architecture_3.png",
            fit: BoxFit.cover,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: Github_AWS_RDSURL,
                  icon: FaIcon(
                    FontAwesomeIcons.github,
                    size: 40,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          const ProjectDescriptionWidget(
              title: "プログラミング言語", description: "・Python"),
          const SizedBox(
            height: 12,
          ),
          const ProjectDescriptionWidget(
              title: "リソース",
              description:
                  "・API Gateway\n・Lambda\n・RDS for MySQL\n・Cloud Watch\n・Systems Manager(SMS)\n・EC2"),
          const SizedBox(
            height: 12,
          ),
          const ProjectDescriptionWidget(
              title: "フロー",
              description:
                  "① GETメソッドでAPIを叩く。パスパラメータにidを持たせる\n② Lambda関数を実行 \n③ RDBのデータへパスパラメータから受け取ったidのデータを検索し、返すように要求\n④ RDBから検索結果のデータを返す\n⑤,⑥ RDBから取得したデータをJSON形式で返す\n⑦ EC2へアクセス\n⑧ コンソールでデータの操作を行う"),
          const SizedBox(
            height: 12,
          ),
          const ProjectDescriptionWidget(
              title: "技術面",
              description:
                  "・プライベートサブネットに配置したRDSにより、堅牢なデータベースを実現しました。\n・API Gatewayを用いて、RestAPIを開発しました。\n・API GatewayとLambdaにより、RDS（データベース）へのCRUD操作を実現しました。\n・SystemsManagerを使用し、安全に快適なデータベース操作を可能にしました。"),
          buildDivider(),
          Image.asset(
            "assets/architecture/architecture_unity.png",
            fit: BoxFit.cover,
          ),
          const ProjectDescriptionWidget(
              title: "リソース", description: "・Cloud Front\n・S3"),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: ProjectDescriptionWidget(
                title: "フロー",
                description:
                    "① CloudFrontへアクセス\n② S3のオブジェクトをロード\n③,④ ロードしたオブジェクトを返す"),
          ),
          const ProjectDescriptionWidget(
              title: "技術面",
              description:
                  "・S3にUnityのオブジェクトを保存しました。\n・保存したオブジェクトをCloudFront経由でロードします。"),
          buildDivider(),
          Image.asset(
            "assets/architecture/architecture_1.png",
            fit: BoxFit.cover,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: Github_AWS_RDSURL,
                  icon: FaIcon(
                    FontAwesomeIcons.github,
                    size: 40,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          const ProjectDescriptionWidget(
              title: "プログラミング言語", description: "・Python"),
          const SizedBox(
            height: 12,
          ),
          const ProjectDescriptionWidget(
              title: "リソース",
              description:
                  "・API Gateway\n・Lambda\n・Translate\n・DynamoDB\n・Cloud Watch"),
          const SizedBox(
            height: 12,
          ),
          const ProjectDescriptionWidget(
              title: "フロー",
              description:
                  "① GETメソッドでAPIを叩く。パスパラメータにテキストを持たせる\n② Lambda関数を実行\n③ パスパラメータから受け取ったテキストを翻訳サービスに送る\n④ 翻訳サービスで翻訳したテキストを返す\n⑤ パスパラメータのテキスト、翻訳したテキスト、時間をDynamoDBに保存する\n⑥ DynamoDBから取得したデータを返す\n⑦ 加工したデータをJSON形式で返す"),
          const SizedBox(
            height: 12,
          ),
          const ProjectDescriptionWidget(
              title: "技術面", description: "・パスパラメータで受け取ったデータを加工して、返すAPIを構築した。"),
          const SizedBox(
            height: 80,
          ),
        ],
      ),
    );
  }
}
