import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ms.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ms'),
  ];

  /// No description provided for @appTitle.
  ///
  /// In ms, this message translates to:
  /// **'Super Brothers Car Wash'**
  String get appTitle;

  /// No description provided for @skip.
  ///
  /// In ms, this message translates to:
  /// **'Langkau'**
  String get skip;

  /// No description provided for @back.
  ///
  /// In ms, this message translates to:
  /// **'Kembali'**
  String get back;

  /// No description provided for @verify.
  ///
  /// In ms, this message translates to:
  /// **'Sahkan'**
  String get verify;

  /// No description provided for @continueButton.
  ///
  /// In ms, this message translates to:
  /// **'Teruskan'**
  String get continueButton;

  /// No description provided for @onboardingQuickBooking.
  ///
  /// In ms, this message translates to:
  /// **'Tempahan Pantas'**
  String get onboardingQuickBooking;

  /// No description provided for @onboardingQuickBookingDesc.
  ///
  /// In ms, this message translates to:
  /// **'Perkhidmatan cucian kereta terus di lokasi anda, pada bila-bila masa dan di mana sahaja.'**
  String get onboardingQuickBookingDesc;

  /// No description provided for @onboardingMobileWsOTP.
  ///
  /// In ms, this message translates to:
  /// **'OTP Mudah Alih & WhatsApp'**
  String get onboardingMobileWsOTP;

  /// No description provided for @onboardingPhoneNumber.
  ///
  /// In ms, this message translates to:
  /// **'Nombor Telefon'**
  String get onboardingPhoneNumber;

  /// No description provided for @onboardingEnterPhoneNumber.
  ///
  /// In ms, this message translates to:
  /// **'Masukkan nombor telefon anda'**
  String get onboardingEnterPhoneNumber;

  /// No description provided for @onboardingEnterValidNumber.
  ///
  /// In ms, this message translates to:
  /// **'Masukkan nombor telefon yang sah'**
  String get onboardingEnterValidNumber;

  /// No description provided for @onboardingRequestOTP.
  ///
  /// In ms, this message translates to:
  /// **'Minta OTP'**
  String get onboardingRequestOTP;

  /// No description provided for @onboardingOTPCodeSent.
  ///
  /// In ms, this message translates to:
  /// **'Kod OTP telah dihantar melalui SMS atau WhatsApp'**
  String get onboardingOTPCodeSent;

  /// No description provided for @onboardingVerificationCode.
  ///
  /// In ms, this message translates to:
  /// **'Kod Pengesahan (4 digit)'**
  String get onboardingVerificationCode;

  /// No description provided for @onboardingConnectOTP.
  ///
  /// In ms, this message translates to:
  /// **'Sambungkan perkhidmatan OTP untuk meneruskan.'**
  String get onboardingConnectOTP;

  /// No description provided for @onboardingEnterVerificationOTPCode.
  ///
  /// In ms, this message translates to:
  /// **'Sila masukkan kod pengesahan 4 digit.'**
  String get onboardingEnterVerificationOTPCode;

  /// No description provided for @onboardingQuickBookingLookup.
  ///
  /// In ms, this message translates to:
  /// **'Carian Tempahan Pantas'**
  String get onboardingQuickBookingLookup;

  /// No description provided for @onboardingQuickBookingLookupDesc.
  ///
  /// In ms, this message translates to:
  /// **'Pautkan nombor pendaftaran kereta anda supaya petugas cucian kereta dapat mengenal pasti dan menyediakan kenderaan anda dengan segera.'**
  String get onboardingQuickBookingLookupDesc;

  /// No description provided for @onboardingCarOwner.
  ///
  /// In ms, this message translates to:
  /// **'Pemilik kereta'**
  String get onboardingCarOwner;

  /// No description provided for @onboardingEnterVehicleNumber.
  ///
  /// In ms, this message translates to:
  /// **'Masukkan nombor pendaftaran kenderaan anda untuk meneruskan.'**
  String get onboardingEnterVehicleNumber;

  /// No description provided for @onboardingEnterCarPlateNumber.
  ///
  /// In ms, this message translates to:
  /// **'Masukkan nombor pendaftaran kereta anda'**
  String get onboardingEnterCarPlateNumber;

  /// No description provided for @onboardingEnterValidCarPlate.
  ///
  /// In ms, this message translates to:
  /// **'Masukkan nombor pendaftaran kereta yang sah'**
  String get onboardingEnterValidCarPlate;

  /// No description provided for @onboardingCarPlateNumber.
  ///
  /// In ms, this message translates to:
  /// **'Nombor Pendaftaran Kereta'**
  String get onboardingCarPlateNumber;

  /// No description provided for @onboardingEgCarPlate.
  ///
  /// In ms, this message translates to:
  /// **'cth. ABC1234'**
  String get onboardingEgCarPlate;

  /// No description provided for @onboardingFindMyCar.
  ///
  /// In ms, this message translates to:
  /// **'Cari Kereta Saya'**
  String get onboardingFindMyCar;

  /// No description provided for @onboardingConnectVehicleLookup.
  ///
  /// In ms, this message translates to:
  /// **'Sambungkan perkhidmatan carian kenderaan untuk'**
  String get onboardingConnectVehicleLookup;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'ms'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'ms':
      return AppLocalizationsMs();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
