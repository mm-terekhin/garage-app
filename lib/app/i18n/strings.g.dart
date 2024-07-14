/// Generated file. Do not edit.
///
/// Original: assets/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 112 (56 per locale)
///
/// Built on 2024-07-14 at 11:44 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.ru;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.ru) // set locale
/// - Locale locale = AppLocale.ru.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.ru) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
	ru(languageCode: 'ru', build: Translations.build),
	en(languageCode: 'en', build: _StringsEn.build);

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
/// Translation happens during initialization of the widget (call of i18n).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = i18n.someKey.anotherKey;
/// String b = i18n['someKey.anotherKey']; // Only for edge cases!
Translations get i18n => LocaleSettings.instance.currentTranslations;

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
/// final i18n = Translations.of(context); // Get i18n variable.
/// String a = i18n.someKey.anotherKey; // Use i18n variable.
/// String b = i18n['someKey.anotherKey']; // Only for edge cases!
class TranslationProvider extends BaseTranslationProvider<AppLocale, Translations> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, Translations> of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.i18n.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	Translations get i18n => TranslationProvider.of(this).translations;
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
	/// final i18n = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
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
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	String get appMainTitle => 'Гараж';
	String get gLogo => 'G';
	String get otherLogo => 'arage';
	String get homeNavBarLabel => 'Главная';
	String get garageNavBarLabel => 'Гараж';
	String get chatsNavBarLabel => 'Чаты';
	String get profileNavBarLabel => 'Профиль';
	String get cancelLabelButton => 'Отмена';
	String get dateFieldLabel => 'Дата';
	String get mileageFieldLabel => 'Пробег';
	String get descriptionFieldLabel => 'Комментарий';
	late final _StringsErrorsRu errors = _StringsErrorsRu._(_root);
	late final _StringsAuthRu auth = _StringsAuthRu._(_root);
	late final _StringsProfileRu profile = _StringsProfileRu._(_root);
	late final _StringsMyGarageRu myGarage = _StringsMyGarageRu._(_root);
}

// Path: errors
class _StringsErrorsRu {
	_StringsErrorsRu._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get errorTextForEmpty => 'Пожалуйста заполните поле';
	String get errorTextForIncorrectRePassword => 'Пароли не совпадают';
	String get errorTextForIncorrectPassword => 'Пароль слишком легкий';
	String get errorTextIncorrectForEmail => 'Введите корректный e-mail';
}

// Path: auth
class _StringsAuthRu {
	_StringsAuthRu._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get loginLabel => 'Логин';
	String get passwordLabel => 'Пароль';
	String get logInButtonLabel => 'Войти';
	String get registrationTitle => 'Регистрация';
	String get mailLabel => 'E-mail';
	String get usernameLabel => 'Имя пользователя';
	String get confirmationPassword => 'Подтверждение пароля';
	String get registrationButtonLabel => 'Зарегестрироваться';
	String get haveAccountTitle => 'Уже есть аккаунт?';
	String get forgotPasswordLabel => 'Забыли пароль?';
	String get logInWithPhoneNumberLabel => 'Войти с помощью телефона';
	String get title => 'Сброс пароля';
	String get newPasswordLabel => 'Новый пароль';
	String get confirmNewPasswordLabel => 'Подтвердите новый пароль';
	String get resetPasswordButtonLabel => 'Сбросить пароль';
	String get sendEmailButtonLabel => 'Отправить письмо';
	String get sendConfirmMailButton => 'Отправить повторно';
	String get checkMailHeader => 'Проверьте почту';
	String descriptionForConfirmMail({required Object mail}) => 'На ${mail} была отправлена ссылка для подтверждения. Перейдите по ней и подтвердите ваш аккаунт';
	String descriptionForResetPassword({required Object mail}) => 'На ${mail} была отправлена ссылка для  восстановления. Перейдите по ней и придумайте новый пароль';
	String get passwordResetSuccessful => 'Пароль успешно сброшен';
	String get passwordResetDescription => 'Используйте новый пароль при последующих авторизациях в приложении';
	String get goLoginScreenButtonLabel => 'Вернуться на страницу входа';
	String sendConfirmMailButtonSeconds({required Object seconds}) => 'Отправить повторно через ${seconds} сек.';
}

// Path: profile
class _StringsProfileRu {
	_StringsProfileRu._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get notificationsButtonLabel => 'Уведомления';
	String get personalSettingsButtonLabel => 'Персональные настройки';
	String get languageButtonLabel => 'Язык';
	String get exitButtonLabel => 'Выйти';
	String get deleteAccountButtonLabel => 'Удалить';
	String get deleteAccountTitle => 'Удалить аккаунт';
	String get deleteAccountDescriptionDialog => 'Вы уверены, что хотите удалить ваш аккаунт? Восстановить его будет невозможно';
	String get logOutTitleDialog => 'Выйти из аккаунта';
	String get logOutDescriptionDialog => 'Вы уверены, что хотите выйти из аккаунта?';
}

// Path: myGarage
class _StringsMyGarageRu {
	_StringsMyGarageRu._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get engineOilLabel => 'Моторное масло';
	String get transmissionOilFirstLabel => 'Масло коробки передач';
	String get transmissionOilSecondLabel => 'Трансмиссионное масло';
	String get brakeFluidLabel => 'Тормозная жидкость';
	String get powerSteeringFluidLabel => 'Рабочая жидкость гидроусилителя руля';
	String get antifreezeLabel => 'Антифриз';
	String get refrigerantAirConditionerLabel => 'Хладагент кондиционера';
}

// Path: <root>
class _StringsEn implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsEn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
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
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _StringsEn _root = this; // ignore: unused_field

	// Translations
	@override String get appMainTitle => 'Garage';
	@override String get gLogo => 'G';
	@override String get otherLogo => 'arage';
	@override String get homeNavBarLabel => 'Home';
	@override String get garageNavBarLabel => 'Garage';
	@override String get chatsNavBarLabel => 'Chats';
	@override String get profileNavBarLabel => 'Profile';
	@override String get cancelLabelButton => 'Cancel';
	@override String get dateFieldLabel => 'Date';
	@override String get mileageFieldLabel => 'Mileage';
	@override String get descriptionFieldLabel => 'Description';
	@override late final _StringsErrorsEn errors = _StringsErrorsEn._(_root);
	@override late final _StringsAuthEn auth = _StringsAuthEn._(_root);
	@override late final _StringsProfileEn profile = _StringsProfileEn._(_root);
	@override late final _StringsMyGarageEn myGarage = _StringsMyGarageEn._(_root);
}

// Path: errors
class _StringsErrorsEn implements _StringsErrorsRu {
	_StringsErrorsEn._(this._root);

	@override final _StringsEn _root; // ignore: unused_field

	// Translations
	@override String get errorTextForEmpty => 'Please fill in the field';
	@override String get errorTextForIncorrectRePassword => 'Passwords don\'t match';
	@override String get errorTextForIncorrectPassword => 'The password is too light';
	@override String get errorTextIncorrectForEmail => 'Enter a valid e-mail';
}

// Path: auth
class _StringsAuthEn implements _StringsAuthRu {
	_StringsAuthEn._(this._root);

	@override final _StringsEn _root; // ignore: unused_field

	// Translations
	@override String get loginLabel => 'Login';
	@override String get passwordLabel => 'Password';
	@override String get logInButtonLabel => 'Log In';
	@override String get registrationTitle => 'Registration';
	@override String get mailLabel => 'E-mail';
	@override String get usernameLabel => 'Username';
	@override String get confirmationPassword => 'Password confirmation';
	@override String get registrationButtonLabel => 'Register';
	@override String get haveAccountTitle => 'Already have an account?';
	@override String get forgotPasswordLabel => 'Forgot your password?';
	@override String get logInWithPhoneNumberLabel => 'Log in using your phone';
	@override String get title => 'Reset password';
	@override String get newPasswordLabel => 'New password';
	@override String get confirmNewPasswordLabel => 'Confirm new password';
	@override String get resetPasswordButtonLabel => 'Reset password';
	@override String get sendEmailButtonLabel => 'Send an email';
	@override String get sendConfirmMailButton => 'Resend';
	@override String get checkMailHeader => 'Check the mail';
	@override String descriptionForConfirmMail({required Object mail}) => 'A confirmation link has been sent to the ${mail}. Click on it and confirm your account';
	@override String descriptionForResetPassword({required Object mail}) => 'A recovery link has been sent to your ${mail}. Click on it and come up with a new password';
	@override String get passwordResetSuccessful => 'The password has been successfully reset';
	@override String get passwordResetDescription => 'Use the new password for subsequent authorizations in the application';
	@override String get goLoginScreenButtonLabel => 'Go back to the login page';
	@override String sendConfirmMailButtonSeconds({required Object seconds}) => 'Send again in ${seconds} sec.';
}

// Path: profile
class _StringsProfileEn implements _StringsProfileRu {
	_StringsProfileEn._(this._root);

	@override final _StringsEn _root; // ignore: unused_field

	// Translations
	@override String get notificationsButtonLabel => 'Notifications';
	@override String get personalSettingsButtonLabel => 'Personal settings';
	@override String get languageButtonLabel => 'Language';
	@override String get exitButtonLabel => 'Log out';
	@override String get deleteAccountButtonLabel => 'Delete';
	@override String get deleteAccountTitle => 'Delete account';
	@override String get deleteAccountDescriptionDialog => 'Are you sure you want to delete your account? It will be impossible to restore it.';
	@override String get logOutTitleDialog => 'Log out of your account';
	@override String get logOutDescriptionDialog => 'Are you sure you want to log out of your account? ';
}

// Path: myGarage
class _StringsMyGarageEn implements _StringsMyGarageRu {
	_StringsMyGarageEn._(this._root);

	@override final _StringsEn _root; // ignore: unused_field

	// Translations
	@override String get engineOilLabel => 'Engine oil';
	@override String get transmissionOilFirstLabel => 'Transmission oil first part';
	@override String get transmissionOilFirstDescription => '...';
	@override String get transmissionOilSecondLabel => 'Transmission oil second part';
	@override String get transmissionOilSecondDescription => '...';
	@override String get brakeFluidLabel => 'Brake fluid';
	@override String get powerSteeringFluidLabel => 'Power steering fluid';
	@override String get antifreezeLabel => 'Antifreeze';
	@override String get refrigerantAirConditionerLabel => 'Air conditioner refrigerant';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'appMainTitle': return 'Гараж';
			case 'gLogo': return 'G';
			case 'otherLogo': return 'arage';
			case 'homeNavBarLabel': return 'Главная';
			case 'garageNavBarLabel': return 'Гараж';
			case 'chatsNavBarLabel': return 'Чаты';
			case 'profileNavBarLabel': return 'Профиль';
			case 'cancelLabelButton': return 'Отмена';
			case 'dateFieldLabel': return 'Дата';
			case 'mileageFieldLabel': return 'Пробег';
			case 'descriptionFieldLabel': return 'Комментарий';
			case 'errors.errorTextForEmpty': return 'Пожалуйста заполните поле';
			case 'errors.errorTextForIncorrectRePassword': return 'Пароли не совпадают';
			case 'errors.errorTextForIncorrectPassword': return 'Пароль слишком легкий';
			case 'errors.errorTextIncorrectForEmail': return 'Введите корректный e-mail';
			case 'auth.loginLabel': return 'Логин';
			case 'auth.passwordLabel': return 'Пароль';
			case 'auth.logInButtonLabel': return 'Войти';
			case 'auth.registrationTitle': return 'Регистрация';
			case 'auth.mailLabel': return 'E-mail';
			case 'auth.usernameLabel': return 'Имя пользователя';
			case 'auth.confirmationPassword': return 'Подтверждение пароля';
			case 'auth.registrationButtonLabel': return 'Зарегестрироваться';
			case 'auth.haveAccountTitle': return 'Уже есть аккаунт?';
			case 'auth.forgotPasswordLabel': return 'Забыли пароль?';
			case 'auth.logInWithPhoneNumberLabel': return 'Войти с помощью телефона';
			case 'auth.title': return 'Сброс пароля';
			case 'auth.newPasswordLabel': return 'Новый пароль';
			case 'auth.confirmNewPasswordLabel': return 'Подтвердите новый пароль';
			case 'auth.resetPasswordButtonLabel': return 'Сбросить пароль';
			case 'auth.sendEmailButtonLabel': return 'Отправить письмо';
			case 'auth.sendConfirmMailButton': return 'Отправить повторно';
			case 'auth.checkMailHeader': return 'Проверьте почту';
			case 'auth.descriptionForConfirmMail': return ({required Object mail}) => 'На ${mail} была отправлена ссылка для подтверждения. Перейдите по ней и подтвердите ваш аккаунт';
			case 'auth.descriptionForResetPassword': return ({required Object mail}) => 'На ${mail} была отправлена ссылка для  восстановления. Перейдите по ней и придумайте новый пароль';
			case 'auth.passwordResetSuccessful': return 'Пароль успешно сброшен';
			case 'auth.passwordResetDescription': return 'Используйте новый пароль при последующих авторизациях в приложении';
			case 'auth.goLoginScreenButtonLabel': return 'Вернуться на страницу входа';
			case 'auth.sendConfirmMailButtonSeconds': return ({required Object seconds}) => 'Отправить повторно через ${seconds} сек.';
			case 'profile.notificationsButtonLabel': return 'Уведомления';
			case 'profile.personalSettingsButtonLabel': return 'Персональные настройки';
			case 'profile.languageButtonLabel': return 'Язык';
			case 'profile.exitButtonLabel': return 'Выйти';
			case 'profile.deleteAccountButtonLabel': return 'Удалить';
			case 'profile.deleteAccountTitle': return 'Удалить аккаунт';
			case 'profile.deleteAccountDescriptionDialog': return 'Вы уверены, что хотите удалить ваш аккаунт? Восстановить его будет невозможно';
			case 'profile.logOutTitleDialog': return 'Выйти из аккаунта';
			case 'profile.logOutDescriptionDialog': return 'Вы уверены, что хотите выйти из аккаунта?';
			case 'myGarage.engineOilLabel': return 'Моторное масло';
			case 'myGarage.transmissionOilFirstLabel': return 'Масло коробки передач';
			case 'myGarage.transmissionOilSecondLabel': return 'Трансмиссионное масло';
			case 'myGarage.brakeFluidLabel': return 'Тормозная жидкость';
			case 'myGarage.powerSteeringFluidLabel': return 'Рабочая жидкость гидроусилителя руля';
			case 'myGarage.antifreezeLabel': return 'Антифриз';
			case 'myGarage.refrigerantAirConditionerLabel': return 'Хладагент кондиционера';
			default: return null;
		}
	}
}

extension on _StringsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'appMainTitle': return 'Garage';
			case 'gLogo': return 'G';
			case 'otherLogo': return 'arage';
			case 'homeNavBarLabel': return 'Home';
			case 'garageNavBarLabel': return 'Garage';
			case 'chatsNavBarLabel': return 'Chats';
			case 'profileNavBarLabel': return 'Profile';
			case 'cancelLabelButton': return 'Cancel';
			case 'dateFieldLabel': return 'Date';
			case 'mileageFieldLabel': return 'Mileage';
			case 'descriptionFieldLabel': return 'Description';
			case 'errors.errorTextForEmpty': return 'Please fill in the field';
			case 'errors.errorTextForIncorrectRePassword': return 'Passwords don\'t match';
			case 'errors.errorTextForIncorrectPassword': return 'The password is too light';
			case 'errors.errorTextIncorrectForEmail': return 'Enter a valid e-mail';
			case 'auth.loginLabel': return 'Login';
			case 'auth.passwordLabel': return 'Password';
			case 'auth.logInButtonLabel': return 'Log In';
			case 'auth.registrationTitle': return 'Registration';
			case 'auth.mailLabel': return 'E-mail';
			case 'auth.usernameLabel': return 'Username';
			case 'auth.confirmationPassword': return 'Password confirmation';
			case 'auth.registrationButtonLabel': return 'Register';
			case 'auth.haveAccountTitle': return 'Already have an account?';
			case 'auth.forgotPasswordLabel': return 'Forgot your password?';
			case 'auth.logInWithPhoneNumberLabel': return 'Log in using your phone';
			case 'auth.title': return 'Reset password';
			case 'auth.newPasswordLabel': return 'New password';
			case 'auth.confirmNewPasswordLabel': return 'Confirm new password';
			case 'auth.resetPasswordButtonLabel': return 'Reset password';
			case 'auth.sendEmailButtonLabel': return 'Send an email';
			case 'auth.sendConfirmMailButton': return 'Resend';
			case 'auth.checkMailHeader': return 'Check the mail';
			case 'auth.descriptionForConfirmMail': return ({required Object mail}) => 'A confirmation link has been sent to the ${mail}. Click on it and confirm your account';
			case 'auth.descriptionForResetPassword': return ({required Object mail}) => 'A recovery link has been sent to your ${mail}. Click on it and come up with a new password';
			case 'auth.passwordResetSuccessful': return 'The password has been successfully reset';
			case 'auth.passwordResetDescription': return 'Use the new password for subsequent authorizations in the application';
			case 'auth.goLoginScreenButtonLabel': return 'Go back to the login page';
			case 'auth.sendConfirmMailButtonSeconds': return ({required Object seconds}) => 'Send again in ${seconds} sec.';
			case 'profile.notificationsButtonLabel': return 'Notifications';
			case 'profile.personalSettingsButtonLabel': return 'Personal settings';
			case 'profile.languageButtonLabel': return 'Language';
			case 'profile.exitButtonLabel': return 'Log out';
			case 'profile.deleteAccountButtonLabel': return 'Delete';
			case 'profile.deleteAccountTitle': return 'Delete account';
			case 'profile.deleteAccountDescriptionDialog': return 'Are you sure you want to delete your account? It will be impossible to restore it.';
			case 'profile.logOutTitleDialog': return 'Log out of your account';
			case 'profile.logOutDescriptionDialog': return 'Are you sure you want to log out of your account? ';
			case 'myGarage.engineOilLabel': return 'Engine oil';
			case 'myGarage.transmissionOilFirstLabel': return 'Transmission oil first part';
			case 'myGarage.transmissionOilFirstDescription': return '...';
			case 'myGarage.transmissionOilSecondLabel': return 'Transmission oil second part';
			case 'myGarage.transmissionOilSecondDescription': return '...';
			case 'myGarage.brakeFluidLabel': return 'Brake fluid';
			case 'myGarage.powerSteeringFluidLabel': return 'Power steering fluid';
			case 'myGarage.antifreezeLabel': return 'Antifreeze';
			case 'myGarage.refrigerantAirConditionerLabel': return 'Air conditioner refrigerant';
			default: return null;
		}
	}
}
