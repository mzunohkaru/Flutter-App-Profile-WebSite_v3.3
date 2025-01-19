import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../projects_flutter/desktop_flutter_projects_page.dart';
import '../../utils/app_url.dart';
import '../../widget/github_card_widget.dart';
import '../../widget/project_description_widget.dart';
import '../../widget/subtitle_widget.dart';

class DesktopBackendProjectsPage extends StatelessWidget {
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
                "assets/architecture/TypeDockerMysqlRestAPI.png",
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
                          description: "・TypeScript\n・JavaScript ・NodeJS"),
                      SizedBox(
                        height: 16,
                      ),
                      ProjectDescriptionWidget(
                          title: "リソース",
                          description: "・Docker\n・MySQL\n・RestAPI\n・Express"),
                      SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        height: 63,
                        width: 190,
                        child: GithubCardButtonWidget(
                          callback: Github_Docker_RestAPI_MySQL_TSURL,
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
          const ProjectDescriptionWidget(title: "技術面", description: '''
・言語は、TypeScriptをコンパイルしたNodeJSを使用。
・DockerComposeにNodeJSとPostgreSQLの構築を行う。
・JWTトークンによる認証機能を実装し、APIの安全性を高めた。
・パスワードをハッシュ化して扱うことで、セキュリティレベルを上げた。
・MySQLのデータベースには、UsersテーブルとPostsテーブルがある。これらは、user_idにより紐づいている。
'''),
          buildDivider(),


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
                          description: "・Docker\n・PostgreSQL\n・GraphQL\n・Express"),
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
          const ProjectDescriptionWidget(title: "技術面", description: '''
・DockerComposeにNodeJSとPostgreSQLの構築を行う。
・データベースへのCRUD操作をORMを採用し、可読性と保守性を高めた。
・JWTトークンによる認証機能を実装し、APIの安全性を高めた。
・パスワードをハッシュ化して扱うことで、セキュリティレベルを上げた。
・GraphQLにより、1つのエンドポイントでAPI操作が可能になる。
・PosgreSQLのデータベースには、UsersテーブルとPostsテーブルがある。これらは、user_idにより紐づいている。
'''),
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
                          description: "・Docker\n・MySQL\n・RestAPI\n・Express"),
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
          const ProjectDescriptionWidget(title: "技術面", description: '''
・DockerComposeにNodeJSとMySQLの構築を行う。
・データベースへのCRUD操作をORMを採用し、可読性と保守性を高めた。
・JWTトークンによる認証機能を実装し、APIの安全性を高めた。
・パスワードをハッシュ化して扱うことで、セキュリティレベルを上げた。
                  '''),
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
                          description: "・Docker\n・PostgreSQL\n・RestAPI\n・Express"),
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
          const ProjectDescriptionWidget(title: "技術面", description: '''
・DockerComposeにNodeJSとPostgreSQLの構築を行う。
・データベースへのCRUD操作をORMを採用し、可読性と保守性を高めた。
・JWTトークンによる認証機能を実装し、APIの安全性を高めた。
・パスワードをハッシュ化して扱うことで、セキュリティレベルを上げた。
                  '''),
          buildDivider(),
          Row(
            children: [
              Image.asset(
                "assets/architecture/PythonDockerMysqlRestAPI.png",
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
                          title: "プログラミング言語", description: "・Python ・FastAPI"),
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
                          callback: Github_Docker_RestAPI_MySQL_PythonURL,
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
          const ProjectDescriptionWidget(title: "技術面", description: '''
・DockerComposeにPythonとMySQLの構築を行う。
・データベースへのCRUD操作をORMを採用し、可読性と保守性を高めた。
・JWTトークンによる認証機能を実装し、APIの安全性を高めた。
・パスワードをハッシュ化して扱うことで、セキュリティレベルを上げた。
                  '''),
          buildDivider(),
          Row(
            children: [
              Image.asset(
                "assets/architecture/PythonDockerPostgresqlRestAPI.png",
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
                          title: "プログラミング言語", description: "・Python ・FastAPI"),
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
                          callback: Github_Docker_RestAPI_PostgreSQL_PythonURL,
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
          const ProjectDescriptionWidget(title: "技術面", description: '''
・DockerComposeにPythonとPostgreSQLの構築を行う。
・データベースへのCRUD操作をORMを採用し、可読性と保守性を高めた。
・JWTトークンによる認証機能を実装し、APIの安全性を高めた。
・パスワードをハッシュ化して扱うことで、セキュリティレベルを上げた。
                  '''),
          const SizedBox(
            height: 80,
          ),
        ],
      ),
    );
  }
}
