import 'package:flutter/material.dart';
import 'package:flutter_master_temp/src/screens/home_screen.dart';
import 'package:flutter_master_temp/src/utils/app_theme.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

Future<void> mainDelegate() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SentryFlutter.init(
    (options) {
      options.dsn =
          'https://e5863b6159554a039c6560f7633eb0cd@o1156831.ingest.sentry.io/6238526';
      // Set tracesSampleRate to 1.0 to capture 100% of transactions for performance monitoring.
      // We recommend adjusting this value in production.
      options.tracesSampleRate = 1.0;
    },
  );
  const String env = String.fromEnvironment('ENV');
  print(env);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightThemeData(context),
      darkTheme: AppTheme.darkThemeData(context),
      themeMode: ThemeMode.system,
      builder: (context, child) {
        child = ResponsiveWrapper.builder(
          child,
          maxWidth: 1200,
          minWidth: 480,
          defaultScale: true,
          breakpoints: [
            ResponsiveBreakpoint.resize(480, name: MOBILE),
            ResponsiveBreakpoint.autoScale(800, name: TABLET),
            ResponsiveBreakpoint.resize(1000, name: DESKTOP),
          ],
        );
        child = BotToastInit()(context, child);
        return child;
      },
      home: HomeScreen(),
    );
  }
}
