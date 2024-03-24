import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_profile_web_33/pages/projects_flutter/desktop_flutter_projects_page.dart';
import 'package:flutter_profile_web_33/utils/app_url.dart';
import 'package:flutter_profile_web_33/widget/github_card_widget.dart';
import 'package:flutter_profile_web_33/widget/project_description_widget.dart';
import 'package:flutter_profile_web_33/widget/subtitle_widget.dart';

class DesktopBackendProjectsPage extends HookWidget {
  final double deviceWidth;

  const DesktopBackendProjectsPage({super.key, required this.deviceWidth});

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
          Row(
            children: [
              Image.asset(
                "assets/architecture/NodeDockerPostgresqlGraphql.png",
                filterQuality: FilterQuality.medium,
                fit: BoxFit.fitWidth,
                width: deviceWidth / 1.8,
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
                          description: "・Docker\n・PostgreSQL\n・GraphQL"),
                      SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        height: 63,
                        width: 190,
                        child: GithubCardButtonWidget(
                          callback: Github_Docker_GraphQLPostgreSQLURL,
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
          const ProjectDescriptionWidget(
              title: "技術面",
              description:
                  "・DockerComposeにNodeJSとPostgreSQLの構築を行う。\n・データベースへのCRUD操作をORMを採用し、可読性と保守性を高めた。\n・JWTトークンによる認証機能を実装し、APIの安全性を高めた。\n・GraphQLにより、1つのエンドポイントでAPI操作が可能になる。\n・PosgreSQLのデータベースには、UsersテーブルとPostsテーブルがある。これらは、user_idにより紐づいている。"),
          buildDivider(),
          Row(
            children: [
              Image.asset(
                "assets/architecture/NodeDockerMysqlRestAPI.png",
                filterQuality: FilterQuality.medium,
                fit: BoxFit.fitWidth,
                width: deviceWidth / 1.8,
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
                          description: "・Docker\n・MySQL\n・RestAPI"),
                      SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        height: 63,
                        width: 190,
                        child: GithubCardButtonWidget(
                          callback: Github_Docker_RestAPIMySQLURL,
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
          const ProjectDescriptionWidget(
              title: "技術面",
              description:
                  "・DockerComposeにNodeJSとMySQLの構築を行う。\n・データベースへのCRUD操作をORMを採用し、可読性と保守性を高めた。\n・JWTトークンによる認証機能を実装し、APIの安全性を高めた。"),
          buildDivider(),
          Row(
            children: [
              Image.asset(
                "assets/architecture/NodeDockerPostgresqlRestAPI.png",
                filterQuality: FilterQuality.medium,
                fit: BoxFit.fitWidth,
                width: deviceWidth / 1.8,
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
                          description: "・Docker\n・PostgreSQL\n・RestAPI"),
                      SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        height: 63,
                        width: 190,
                        child: GithubCardButtonWidget(
                          callback: Github_Docker_RestAPIPostgreSQLURL,
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
