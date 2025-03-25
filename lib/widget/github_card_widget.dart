import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GithubCardWidget extends StatelessWidget {
  final String image;
  final VoidCallback githubCallback;
  final bool youtube;
  final VoidCallback? youtubeCallback;
  final String date;

  const GithubCardWidget({
    super.key,
    required this.image,
    required this.githubCallback,
    required this.youtube,
    required this.youtubeCallback,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 24,
      children: [
        Image.asset(
          image,
          filterQuality: FilterQuality.medium,
          fit: BoxFit.fitWidth,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("開発日時: $date",style: TextStyle(fontSize: 14,color: Colors.grey),),
            youtube
                ? _YoutubeAndGithubButton(
                    youtubeCallback: youtubeCallback,
                    githubCallback: githubCallback)
                : Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      height: 63,
                      width: 190,
                      child: GithubCardButtonWidget(
                        callback: githubCallback,
                      ),
                    ),
                  ),
          ],
        ),
      ],
    );
  }
}

class _YoutubeAndGithubButton extends StatelessWidget {
  const _YoutubeAndGithubButton({
    required this.youtubeCallback,
    required this.githubCallback,
  });

  final VoidCallback? youtubeCallback;
  final VoidCallback githubCallback;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          height: 63,
          width: 190,
          child: _YoutubeCardButtonWidget(
            callback: youtubeCallback!,
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        SizedBox(
          height: 63,
          width: 190,
          child: GithubCardButtonWidget(
            callback: githubCallback,
          ),
        ),
      ],
    );
  }
}

class GithubCardButtonWidget extends StatelessWidget {
  final VoidCallback callback;

  const GithubCardButtonWidget({
    super.key,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: callback,
      icon: const FaIcon(
        FontAwesomeIcons.github,
        color: Colors.black,
      ),
      label: const Text(
        'github repo  ->',
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}

class _YoutubeCardButtonWidget extends StatelessWidget {
  final VoidCallback callback;

  const _YoutubeCardButtonWidget({
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: callback,
      icon: const FaIcon(
        FontAwesomeIcons.youtube,
        color: Colors.redAccent,
      ),
      label: const Text(
        'youtube  ->',
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}
