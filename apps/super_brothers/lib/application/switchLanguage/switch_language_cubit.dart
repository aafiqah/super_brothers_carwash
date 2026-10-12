import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/index.dart';

part 'switch_language_cubit.freezed.dart';
part 'switch_language_state.dart';

class SwitchLanguageCubit extends Cubit<SwitchLanguageState> {
  SwitchLanguageCubit() : super(SwitchLanguageState.initial());

  void switchLanguage(Locale locale) {
    emit(state.copyWith(locale: locale));
  }
}
