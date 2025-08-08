init:
	flutter create .

dev-web:
	/dev-web.sh

dev:
	flutter pub get
	flutter run

list-devices:
	adb devices

run-pixel9:
	flutter run -d 4A140DLAQ004VJ
