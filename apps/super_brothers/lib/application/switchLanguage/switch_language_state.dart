part of 'switch_language_cubit.dart';

@freezed
abstract class SwitchLanguageState with _$SwitchLanguageState {
  const factory SwitchLanguageState({@LocaleConverter() required Locale locale}) = _SwitchLanguageState;

  factory SwitchLanguageState.initial() => SwitchLanguageState(locale: Locale('ms'));

}