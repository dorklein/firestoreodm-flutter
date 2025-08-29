cd packages/cloud_firestore_odm_generator/cloud_firestore_odm_generator_integration_test
dart run build_runner build -d
flutter test
cd ..
dart test
cd ../cloud_firestore_odm
flutter test
cd example
dart run build_runner build -d
firebase emulators:start --only firestore &
FIREBASE_EMULATOR_PID=$!

chromedriver --port=4444 &
CHROMEDRIVER_PID=$!

flutter drive   --driver=test_driver/integration_test.dart --target=integration_test/cloud_firestore_odm_e2e_test.dart  -d chrome
kill $CHROMEDRIVER_PID
kill $FIREBASE_EMULATOR_PID




