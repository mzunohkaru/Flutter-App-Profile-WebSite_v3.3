import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:url_launcher/url_launcher.dart';

part 'url_launch.g.dart';

@Riverpod(keepAlive: true)
UrlLaunchClient urlLaunchClient(
  Ref ref,
) {
  return UrlLaunchClient();
}

class UrlLaunchClient {
  factory UrlLaunchClient() => _instance;

  UrlLaunchClient._internal();
  static final UrlLaunchClient _instance = UrlLaunchClient._internal();

  Future<void> accessUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }
}
