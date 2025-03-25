build_web:
	flutter build web

build_runner:
	flutter pub run build_runner build --delete-conflicting-outputs

deploy:
	firebase deploy --only hosting