import 'package:e_shop/core/common/constants/app_colors.dart';
import 'package:e_shop/core/common/constants/app_error_text.dart';
import 'package:e_shop/core/common/constants/app_text_input_decoration.dart';
import 'package:e_shop/core/common/constants/app_texts.dart';
import 'package:e_shop/core/common/utils/snack_bar_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ModalBottomSheet extends StatefulWidget {
  const ModalBottomSheet({
    super.key,
    required this.total,
    required this.onEvent,
    required this.initialValue,
  });

  final int total;
  final int initialValue;
  final void Function(int) onEvent;

  @override
  State<ModalBottomSheet> createState() => _ModalBottomSheetState();
}

class _ModalBottomSheetState extends State<ModalBottomSheet> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _quantityController;

  int _parseController() {
    return int.parse(_quantityController.text);
  }

  void _increment() {
    _quantityController.text = (_parseController() + 1).toString();
  }

  void _decrement() {
    _quantityController.text = (_parseController() - 1).toString();
  }

  @override
  void initState() {
    super.initState();
    _quantityController = TextEditingController(
      text: widget.initialValue.toString(),
    );
  }

  @override
  void dispose() {
    _quantityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('${AppTexts.total}: ${widget.total.toString()}'),
          SizedBox(height: 20.h),
          SizedBox(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Form(
                    key: _formKey,
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      decoration:
                          AppTextInputDecoration.mainInputDecoration.copyWith(
                        prefixIcon: IconButton(
                          onPressed: () => _decrement(),
                          icon: const Icon(Icons.remove),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () => _increment(),
                          icon: const Icon(Icons.add),
                        ),
                        fillColor: Colors.white38,
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        errorMaxLines: 3,
                      ),
                      controller: _quantityController,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      validator: (value) {
                        if ((int.parse(value!)) > widget.total) {
                          return AppErrorText.valueMoreThanTotal;
                        }
                        return null;
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(AppColors.mainColor),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.r),
                ),
              ),
            ),
            onPressed: () {
              final isValid = _formKey.currentState!.validate();
              if (!isValid) return;
              widget.onEvent(_parseController());
              context.pop();
              CustomSnackBar.showSnackBar(
                context,
                AppTexts.productSuccessAdded,
                false,
              );
            },
            child: const Text(
              AppTexts.addToCart,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}
