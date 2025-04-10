import 'package:easy_localization/easy_localization.dart';
import 'package:interview_assignment_app/di/startup/initial_dependencies.dart';

class Localization implements LaunchObjects {
  const Localization();

  @override
  Future<void> initialize() async {
    await EasyLocalization.ensureInitialized();
    EasyLocalization.logger.enableBuildModes = [];
  }

  @override
  Future<void> dispose() async {}
}
