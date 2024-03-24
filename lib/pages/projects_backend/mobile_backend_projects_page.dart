import 'package:flutter/material.dart';
import 'package:flutter_profile_web_33/pages/projects_flutter/desktop_flutter_projects_page.dart';
import 'package:flutter_profile_web_33/utils/app_url.dart';
import 'package:flutter_profile_web_33/widget/project_description_widget.dart';
import 'package:flutter_profile_web_33/widget/subtitle_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MobileBackendProjectsPage extends StatelessWidget {
  const MobileBackendProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SubtitleText(subtitle: "Docker"),
          const SizedBox(
            height: 30,
          ),
          Image.asset(
            "assets/architecture/NodeDockerPostgresqlGraphql.png",
            fit: BoxFit.cover,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: Github_Docker_GraphQLPostgreSQLURL,
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
              title: "リソース", description: "・Docker\n・PostgreSQL\n・GraphQL"),
          const SizedBox(
            height: 12,
          ),
          const ProjectDescriptionWidget(
              title: "技術面",
              description:
                  "・LambdaとDynamoDBを用いて、サーバーレスなバックエンドを構築しました。\n・API Gatewayを用いて、RestAPIを開発しました。\n・トークンによる認証機能を実装しました。\n・APIメソッドには、GET、POST、PUT、DELETEの基本的なものを用意し、データベースへのCRUD操作を実現しました。"),
          buildDivider(),
          Image.asset(
            "assets/architecture/NodeDockerMysqlRestAPI.png",
            fit: BoxFit.cover,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: Github_Docker_RestAPIMySQLURL,
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
              title: "リソース", description: "・Docker\n・MySQL\n・RestAPI"),
          const SizedBox(
            height: 12,
          ),
          const ProjectDescriptionWidget(
              title: "技術面",
              description:
                  "・DockerComposeにNodeJSとMySQLの構築を行う。\n・データベースへのCRUD操作をORMを採用し、可読性と保守性を高めた。\n・JWTトークンによる認証機能を実装し、APIの安全性を高めた。"),
          buildDivider(),
          Image.asset(
            "assets/architecture/NodeDockerPostgresqlRestAPI.png",
            fit: BoxFit.cover,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: Github_Docker_RestAPIPostgreSQLURL,
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
              title: "リソース", description: "・Docker\n・PostgreSQL\n・RestAPI"),
          const SizedBox(
            height: 12,
          ),
          const ProjectDescriptionWidget(
              title: "技術面",
              description:
                  "・DockerComposeにNodeJSとPostgreSQLの構築を行う。\n・データベースへのCRUD操作をORMを採用し、可読性と保守性を高めた。\n・JWTトークンによる認証機能を実装し、APIの安全性を高めた。"),
          const SizedBox(
            height: 80,
          ),
        ],
      ),
    );
  }
}
