/// Generated file. Do not edit.
///
/// Original: assets/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 40 (20 per locale)
///
/// Built on 2024-05-16 at 21:10 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
	en(languageCode: 'en', build: Translations.build),
	ru(languageCode: 'ru', build: _StringsRu.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, Translations> build;

	/// Gets current instance managed by [LocaleSettings].
	Translations get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
Translations get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class TranslationProvider extends BaseTranslationProvider<AppLocale, Translations> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, Translations> of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	Translations get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, Translations> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	String get appMainTitle => 'Garage';
	String get gLogo => 'G';
	String get otherLogo => 'arage';
	late final _StringsErrorsEn errors = _StringsErrorsEn._(_root);
	late final _StringsLogInScreenEn log_in_screen = _StringsLogInScreenEn._(_root);
	late final _StringsResetPasswordScreenEn reset_password_screen = _StringsResetPasswordScreenEn._(_root);
}

// Path: errors
class _StringsErrorsEn {
	_StringsErrorsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get errorTextForEmpty => 'Please fill in the field';
	String get errorTextForIncorrectRePassword => 'Passwords don\'t match';
	String get errorTextForIncorrectPassword => 'The password is too light';
}

// Path: log_in_screen
class _StringsLogInScreenEn {
	_StringsLogInScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get loginLabel => 'Login';
	String get passwordLabel => 'Password';
	String get logInButtonLabel => 'Log In';
	String get registrationTitle => 'Registration';
	String get mailLabel => 'E-mail';
	String get usernameLabel => 'Username';
	String get confirmationPassword => 'Password confirmation';
	String get registrationButtonLabel => 'Register';
	String get haveAccountTitle => 'Already have an account?';
	String get forgotPasswordLabel => 'Forgot your password?';
	String get logInWithPhoneNumberLabel => 'Log in using your phone';
}

// Path: reset_password_screen
class _StringsResetPasswordScreenEn {
	_StringsResetPasswordScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get newPasswordLabel => 'New password';
	String get confirmNewPasswordLabel => 'Confirm new password';
	String get resetPasswordButtonLabel => 'Reset password';
}

// Path: <root>
class _StringsRu implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsRu.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ru,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ru>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _StringsRu _root = this; // ignore: unused_field

	// Translations
	@override String get appMainTitle => 'Гараж';
	@override String get gLogo => 'G';
	@override String get otherLogo => 'arage';
	@override late final _StringsErrorsRu errors = _StringsErrorsRu._(_root);
	@override late final _StringsLogInScreenRu log_in_screen = _StringsLogInScreenRu._(_root);
	@override late final _StringsResetPasswordScreenRu reset_password_screen = _StringsResetPasswordScreenRu._(_root);
}

// Path: errors
class _StringsErrorsRu implements _StringsErrorsEn {
	_StringsErrorsRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get errorTextForEmpty => 'Пожалуйста заполните поле';
	@override String get errorTextForIncorrectRePassword => 'Пароли не совпадают';
	@override String get errorTextForIncorrectPassword => 'Пароль слишком легкий';
}

// Path: log_in_screen
class _StringsLogInScreenRu implements _StringsLogInScreenEn {
	_StringsLogInScreenRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get loginLabel => 'Логин';
	@override String get passwordLabel => 'Пароль';
	@override String get logInButtonLabel => 'Войти';
	@override String get registrationTitle => 'Регистрация';
	@override String get mailLabel => 'E-mail';
	@override String get usernameLabel => 'Имя пользователя';
	@override String get confirmationPassword => 'Подтверждение пароля';
	@override String get registrationButtonLabel => 'Зарегестрироваться';
	@override String get haveAccountTitle => 'Уже есть аккаунт?';
	@override String get forgotPasswordLabel => 'Забыли пароль?';
	@override String get logInWithPhoneNumberLabel => 'Войти с помощью телефона';
}

// Path: reset_password_screen
class _StringsResetPasswordScreenRu implements _StringsResetPasswordScreenEn {
	_StringsResetPasswordScreenRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get newPasswordLabel => 'Новый пароль';
	@override String get confirmNewPasswordLabel => 'Подтвердите новый пароль';
	@override String get resetPasswordButtonLabel => 'Сбросить пароль';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'appMainTitle': return 'Garage';
			case 'gLogo': return 'G';
			case 'otherLogo': return 'arage';
			case 'errors.errorTextForEmpty': return 'Please fill in the field';
			case 'errors.errorTextForIncorrectRePassword': return 'Passwords don\'t match';
			case 'errors.errorTextForIncorrectPassword': return 'The password is too light';
			case 'log_in_screen.loginLabel': return 'Login';
			case 'log_in_screen.passwordLabel': return 'Password';
			case 'log_in_screen.logInButtonLabel': return 'Log In';
			case 'log_in_screen.registrationTitle': return 'Registration';
			case 'log_in_screen.mailLabel': return 'E-mail';
			case 'log_in_screen.usernameLabel': return 'Username';
			case 'log_in_screen.confirmationPassword': return 'Password confirmation';
			case 'log_in_screen.registrationButtonLabel': return 'Register';
			case 'log_in_screen.haveAccountTitle': return 'Already have an account?';
			case 'log_in_screen.forgotPasswordLabel': return 'Forgot your password?';
			case 'log_in_screen.logInWithPhoneNumberLabel': return 'Log in using your phone';
			case 'reset_password_screen.newPasswordLabel': return 'New password';
			case 'reset_password_screen.confirmNewPasswordLabel': return 'Confirm new password';
			case 'reset_password_screen.resetPasswordButtonLabel': return 'Reset password';
			default: return null;
		}
	}
}

extension on _StringsRu {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'appMainTitle': return 'Гараж';
			case 'gLogo': return 'G';
			case 'otherLogo': return 'arage';
			case 'errors.errorTextForEmpty': return 'Пожалуйста заполните поле';
			case 'errors.errorTextForIncorrectRePassword': return 'Пароли не совпадают';
			case 'errors.errorTextForIncorrectPassword': return 'Пароль слишком легкий';
			case 'log_in_screen.loginLabel': return 'Логин';
			case 'log_in_screen.passwordLabel': return 'Пароль';
			case 'log_in_screen.logInButtonLabel': return 'Войти';
			case 'log_in_screen.registrationTitle': return 'Регистрация';
			case 'log_in_screen.mailLabel': return 'E-mail';
			case 'log_in_screen.usernameLabel': return 'Имя пользователя';
			case 'log_in_screen.confirmationPassword': return 'Подтверждение пароля';
			case 'log_in_screen.registrationButtonLabel': return 'Зарегестрироваться';
			case 'log_in_screen.haveAccountTitle': return 'Уже есть аккаунт?';
			case 'log_in_screen.forgotPasswordLabel': return 'Забыли пароль?';
			case 'log_in_screen.logInWithPhoneNumberLabel': return 'Войти с помощью телефона';
			case 'reset_password_screen.newPasswordLabel': return 'Новый пароль';
			case 'reset_password_screen.confirmNewPasswordLabel': return 'Подтвердите новый пароль';
			case 'reset_password_screen.resetPasswordButtonLabel': return 'Сбросить пароль';
			default: return null;
		}
	}
}