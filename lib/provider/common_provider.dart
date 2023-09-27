import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final modeprovider =
    StateNotifierProvider.autoDispose<ModeProvider, AutovalidateMode>(
        (ref) => ModeProvider(AutovalidateMode.disabled));
final loginprovider = StateProvider<bool>((ref) => true);
final passwordHide = StateProvider.autoDispose<bool>((ref) => true);

class ModeProvider extends StateNotifier<AutovalidateMode> {
  ModeProvider(super.state);
  void change() {
    state = AutovalidateMode.onUserInteraction;
  }
}
