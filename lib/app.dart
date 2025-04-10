import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:interview_assignment_app/core/utils/constants.dart';
import 'package:interview_assignment_app/di/startup/initial_dependencies.dart';
import 'package:interview_assignment_app/domain/models/language_model/app_language.dart';
import 'package:path_provider/path_provider.dart';

import 'core/app_config/cubit/app_config_cubit.dart';
import 'core/routes/router.dart';
import 'core/services/local_storage_service/local_storage_service.dart';
import 'theme/theme.dart';

class AppRunner {
  static Future<void> run() async {
    WidgetsFlutterBinding.ensureInitialized();
    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: HydratedStorageDirectory(
        (await getApplicationDocumentsDirectory()).path,
      ),
    );

    await LocalStorageService.init('expense_app');

    // dispose old dependencies
    await StartupDependencies.dispose();

    // initialize new dependencies
    await StartupDependencies.init();

    runApp(
      EasyLocalization(
        supportedLocales: AppLanguage.allLocales,
        path: FilePath.translations,
        fallbackLocale: AppLanguage.defaultLocale,
        child: MyApp(rootRouter: AppRouter()),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key, required this.rootRouter});

  final AppRouter rootRouter;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppConfigCubit>(
          create: (_) => AppConfigCubit()
            ..setLanguage(
              context: context,
              locale: AppLanguage.defaultLocale,
            ),
        ),
      ],
      child: BlocBuilder<AppConfigCubit, AppConfigState>(
        buildWhen: (previous, current) {
          return previous != current;
        },
        builder: (context, state) {
          final locale = AppLanguage.fromCodeLocale(state.languageCode);

          return MaterialApp.router(
            routerConfig: widget.rootRouter.config(),
            title: Constants.appName,
            debugShowCheckedModeBanner: false,
            theme: AppTheme.getLightTheme(context),
            darkTheme: AppTheme.getDarkTheme(context),
            themeMode: state.isDarkTheme //
                ? ThemeMode.dark
                : ThemeMode.light,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: locale,
          );
        },
      ),
    );
  }
}
