import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension AppStrings on BuildContext {
  static AppLocalizations of(BuildContext context) => AppLocalizations.of(context)!;
}
