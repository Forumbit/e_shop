import 'package:e_shop/features/cart/domain/entities/cart_product_entity.dart';
import 'package:e_shop/features/cart/presentation/bloc/cart/cart_bloc.dart';
import 'package:e_shop/widgets/custom_widgets/modal_bottom_sheet_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartProductActionsWidget extends StatelessWidget {
  const CartProductActionsWidget({
    super.key,
    required this.product,
  });

  final CartProductEntity product;

  void _onPressedEditButton(
    int value,
    BuildContext context,
  ) {
    final cartProduct = product.copyWith(
      quantity: value,
      total: value * product.price,
    );
    context.read<CartBloc>().add(
          CartEvent.onProductUpdated(
            cartProduct,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () => context.read<CartBloc>().add(
                CartEvent.onProductDeleted(
                  product.docId!,
                ),
              ),
          icon: const Icon(Icons.clear),
        ),
        IconButton(
          color: Colors.black,
          onPressed: () => showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (_) => ModalBottomSheet(
              total: product.stock,
              onEvent: (int value) => _onPressedEditButton(
                value,
                context,
              ),
              initialValue: product.quantity,
            ),
          ),
          icon: const Icon(
            Icons.edit,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
