
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/index.dart';
import '../../../core/index.dart';
import '../../../l10n/index.dart';
import '../../index.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int _selectedIndex = 0;

  final _phoneFormKey = GlobalKey<FormState>();
  final _carPlateFormKey = GlobalKey<FormState>();

  final _phoneController = TextEditingController();
  final _carPlateController = TextEditingController();

  final List<TextEditingController> _otpControllers =
      List.generate(4, (_) => TextEditingController());

  final List<FocusNode> _otpFocusNodes =
      List.generate(4, (_) => FocusNode());

  @override
  void dispose() {
    _phoneController.dispose();
    _carPlateController.dispose();

    for (final controller in _otpControllers) {
      controller.dispose();
    }

    for (final node in _otpFocusNodes) {
      node.dispose();
    }

    super.dispose();
  }

  void _requestOtp(AppLocalizations  local) {
    if (!(_phoneFormKey.currentState?.validate() ?? false)) {
      return;
    }

    FocusScope.of(context).unfocus();

    // TODO: Call your authentication API to request an OTP.
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(local.onboardingConnectOTP),
      ),
    );
  }

  void _continueToCarLookup(AppLocalizations  local) {
    if (!(_phoneFormKey.currentState?.validate() ?? false)) {
      setState(() => _selectedIndex = 0);
      return;
    }

    final otp = _otpControllers.map((controller) => controller.text).join();

    if (otp.length != 4) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(local.onboardingEnterVerificationOTPCode),
        ),
      );
      return;
    }

    // TODO: Verify the OTP with your authentication API.
    // Only proceed after the API confirms that the OTP is valid.

    FocusScope.of(context).unfocus();

    setState(() {
      _selectedIndex = 1;
    });
  }

  void _findMyCar(AppLocalizations  local) {
    if (!(_carPlateFormKey.currentState?.validate() ?? false)) {
      return;
    }

    FocusScope.of(context).unfocus();

    final phoneNumber = '+60${_phoneController.text}';
    final carPlate = _carPlateController.text.trim().toUpperCase();

    // TODO: Call your vehicle lookup API.
    // Use phoneNumber and carPlate in your request.

    var showSnackBar = ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          '${local.onboardingConnectVehicleLookup} $carPlate.',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final local = AppLocalizations.of(context)!;

    return BlocBuilder<SwitchLanguageCubit, SwitchLanguageState>(
      builder: (context, switchLanguageState) {
        return Scaffold(
          appBar: AppBarWidget(
            hasLanguage: true,
            hasBackButton: false,
            leading: const SizedBox.shrink(),
            languageState: switchLanguageState,
          ),
          body: SafeArea(
            child: CustomScrollView(
              keyboardDismissBehavior:
                  ScrollViewKeyboardDismissBehavior.onDrag,
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.all(16),
                  sliver: SliverToBoxAdapter(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (_selectedIndex == 0) ...[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                local.onboardingQuickBooking,
                                style: theme.textTheme.headlineMedium,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                local.onboardingQuickBookingDesc,
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  color: theme.colorScheme.onSurfaceVariant,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 24),
                          CardWidget(
                            child: Form(
                              key: _phoneFormKey,
                              child: Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.phone_android_outlined,
                                        size: 25,
                                        color: theme.colorScheme.primary,
                                      ),
                                      const SizedBox(width: 8),
                                      Expanded(
                                        child: Text(
                                          local.onboardingMobileWsOTP,
                                          style: theme.textTheme.titleLarge,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 20),
                                  Text(
                                    local.onboardingPhoneNumber,
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                  const SizedBox(height: 8),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 76,
                                        child: InputDecorator(
                                          decoration: const InputDecoration(
                                            border: OutlineInputBorder(),
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                              horizontal: 12,
                                              vertical: 16,
                                            ),
                                          ),
                                          child: Text(
                                            '+60',
                                            style:
                                                theme.textTheme.bodyLarge,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Expanded(
                                        child: TextFormField(
                                          controller: _phoneController,
                                          keyboardType:
                                              TextInputType.phone,
                                          textInputAction:
                                              TextInputAction.done,
                                          inputFormatters: [
                                            FilteringTextInputFormatter
                                                .digitsOnly,
                                            LengthLimitingTextInputFormatter(
                                              10,
                                            ),
                                          ],
                                          validator: (value) {
                                            final phone =
                                                value?.trim() ?? '';
    
                                            if (phone.isEmpty) {
                                              return local.onboardingEnterPhoneNumber;
                                            }
    
                                            if (phone.length < 9 ||
                                                phone.length > 10) {
                                              return local.onboardingEnterValidNumber;
                                            }
    
                                            return null;
                                          },
                                          decoration: InputDecoration(
                                            hintText:
                                               local.onboardingEnterPhoneNumber,
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 16),
                                  FilledButtonWidget(
                                    onPressed: () => _requestOtp(local),
                                    text: Text(local.onboardingRequestOTP),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    local.onboardingOTPCodeSent,
                                    style: theme.textTheme.bodySmall
                                        ?.copyWith(
                                      color: theme
                                          .colorScheme.onSurfaceVariant,
                                    ),
                                  ),
                                  const SizedBox(height: 24),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          local.onboardingVerificationCode,
                                          style:
                                              theme.textTheme.bodyMedium,
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Icon(
                                        Icons.timer_outlined,
                                        size: 18,
                                        color: SuperBrothersColorsSchemeTheme
                                            .success(theme.brightness),
                                      ),
                                      const SizedBox(width: 4),
                                      Text(
                                        '00:59',
                                        style: theme.textTheme.bodySmall
                                            ?.copyWith(
                                          color:
                                              SuperBrothersColorsSchemeTheme
                                                  .success(theme.brightness),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 12),
                                  Row(
                                    children: List.generate(
                                      4,
                                      (index) => Expanded(
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                            right: index == 3 ? 0 : 8,
                                          ),
                                          child: TextFormField(
                                            controller:
                                                _otpControllers[index],
                                            focusNode:
                                                _otpFocusNodes[index],
                                            keyboardType:
                                                TextInputType.number,
                                            textAlign: TextAlign.center,
                                            autofillHints: const [
                                              AutofillHints.oneTimeCode,
                                            ],
                                            inputFormatters: [
                                              FilteringTextInputFormatter
                                                  .digitsOnly,
                                              LengthLimitingTextInputFormatter(
                                                1,
                                              ),
                                            ],
                                            onChanged: (value) {
                                              if (value.isNotEmpty &&
                                                  index < 3) {
                                                _otpFocusNodes[index + 1]
                                                    .requestFocus();
                                              } else if (value.isEmpty &&
                                                  index > 0) {
                                                _otpFocusNodes[index - 1]
                                                    .requestFocus();
                                              }
                                            },
                                            decoration: InputDecoration(
                                              hintText: '*',
                                              counterText: '',
                                              contentPadding:
                                                  const EdgeInsets
                                                      .symmetric(
                                                vertical: 16,
                                              ),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 24),
                                  FilledButtonWidget(
                                    onPressed: () => _continueToCarLookup(local),
                                    text: Text("${local.verify} ${local.continueButton}"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ] else ...[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                local.onboardingQuickBookingLookup,
                                style: theme.textTheme.headlineMedium,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                local.onboardingQuickBookingLookupDesc,
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  color: theme.colorScheme.onSurfaceVariant,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 24),
                          CardWidget(
                            child: Form(
                              key: _carPlateFormKey,
                              child: Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Icon(
                                      Icons.directions_car_outlined,
                                      size: 64,
                                      color: theme.colorScheme.primary,
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  Center(
                                    child: Text(
                                      local.onboardingCarOwner,
                                      textAlign: TextAlign.center,
                                      style: theme.textTheme.titleLarge,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    local.onboardingEnterVehicleNumber,
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                  const SizedBox(height: 24),
                                  TextFormField(
                                    controller: _carPlateController,
                                    textCapitalization:
                                        TextCapitalization.characters,
                                    textInputAction: TextInputAction.done,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.allow(
                                        RegExp(r'[a-zA-Z0-9 ]'),
                                      ),
                                      LengthLimitingTextInputFormatter(10),
                                    ],
                                    validator: (value) {
                                      final plate =
                                          value?.trim() ?? '';
    
                                      if (plate.isEmpty) {
                                        return local.onboardingEnterCarPlateNumber;
                                      }
    
                                      if (plate.length < 2) {
                                        return local.onboardingEnterValidCarPlate;
                                      }
    
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                      labelText: local.onboardingCarPlateNumber,
                                      hintText: local.onboardingEgCarPlate,
                                      prefixIcon: const Icon(
                                        Icons.directions_car_outlined,
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(8),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 24),
                                  FilledButtonWidget(
                                    onPressed: () => _findMyCar(local),
                                    text: Text(local.onboardingFindMyCar),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                        const SizedBox(height: 32),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            2,
                            (index) => AnimatedContainer(
                              duration:
                                  const Duration(milliseconds: 200),
                              width: _selectedIndex == index ? 24 : 8,
                              height: 8,
                              margin: const EdgeInsets.symmetric(
                                horizontal: 4,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: _selectedIndex == index
                                    ? theme.colorScheme.primary
                                    : theme.colorScheme.outlineVariant,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 24),
                        Row(
                          children: [
                            OutlineButtonWidget(
                              onPressed: () {
                                  if (_selectedIndex == 0) {
                                    _continueToCarLookup(local);
                                  } else {
                                    FocusScope.of(context).unfocus();
                                    setState(() {
                                      _selectedIndex = 0;
                                    });
                                  }
                                },
                                text: Text(
                                  _selectedIndex == 0 ? local.skip : local.back,
                                ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
