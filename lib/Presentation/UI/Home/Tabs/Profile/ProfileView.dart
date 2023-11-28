import 'package:flutter/material.dart';
import 'package:heimdall/Core/Base/BaseState.dart';
import 'package:heimdall/Presentation/UI/Home/Tabs/Profile/ProfileNavigator.dart';
import 'package:heimdall/Presentation/UI/Home/Tabs/Profile/ProfileViewModel.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends BaseState<ProfileView , ProfileViewModel> implements ProfileNavigator {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      color: Colors.cyan,
    );
  }

  @override
  ProfileViewModel? initViewModel() {
    return ProfileViewModel();
  }
}
