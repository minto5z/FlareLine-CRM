
import 'package:flareline_crm/core/theme/global_theme.dart';
import 'package:flareline_crm/routes.dart';
import 'package:flareline_uikit/service/localization_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          //theme
          ChangeNotifierProvider(create: (_) => LocalizationProvider(_)),
        ],
        child: MaterialApp(
          title: 'Flutter CRM',
          // theme: ThemeData(
          //   colorScheme: ColorScheme.fromSeed(seedColor: CrmColors.primary),
          //   useMaterial3: true,
          // ),
          theme: GlobalTheme.lightThemeData,
          initialRoute: '/',
          onGenerateRoute: (settings) =>
              RouteConfiguration.onGenerateRoute(settings),
          builder: (context, widget) {
            return MediaQuery(
              data: MediaQuery.of(context)
                  .copyWith(textScaler: TextScaler.noScaling),
              child: widget!,
            );
          },
        ));
  }
}
