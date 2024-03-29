import 'package:flutter/material.dart';
import 'package:heimdall/Core/Base/BaseState.dart';
import 'package:heimdall/Presentation/UI/Home/Tabs/Keys/KeysNavigator.dart';
import 'package:heimdall/Presentation/UI/Home/Tabs/Keys/KeysViewModel.dart';
import 'package:heimdall/Presentation/UI/Widgets/LanguageSwitch.dart';
import 'package:heimdall/Presentation/UI/Widgets/ThemeSlider.dart';

class KeysView extends StatefulWidget {
  const KeysView({super.key});

  @override
  State<KeysView> createState() => _KeysViewState();
}

class _KeysViewState extends BaseState<KeysView , KeysViewModel> implements KeysNavigator {

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Center(
      child: ThemeSwitch(),
    );
  }

  @override
  KeysViewModel initViewModel() {
    return KeysViewModel();
  }
}
