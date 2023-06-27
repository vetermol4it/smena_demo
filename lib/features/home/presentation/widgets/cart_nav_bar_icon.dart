import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smena_demo/common/ui_kit/app_colors.dart';
import 'package:smena_demo/common/ui_kit/assets.gen.dart';
import 'package:smena_demo/features/cart/domain/cubit/cart_cubit.dart';
import 'package:smena_demo/features/cart/domain/cubit/cart_state.dart';
import 'package:smena_demo/l10n/app_sctrings.dart';

class CartNavBarIcon extends StatelessWidget {
  final bool isActive;

  const CartNavBarIcon({
    required this.isActive,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (_, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _getIcon(state.sum).svg(
              colorFilter: ColorFilter.mode(
                isActive ? AppColors.textPrimary : AppColors.textSecondary,
                BlendMode.srcIn,
              ),
              fit: BoxFit.scaleDown,
            ),
            const SizedBox(height: 5),
            _Title(
              isActive: isActive,
              number: state.sum,
            ),
          ],
        );
      },
    );
  }

  SvgGenImage _getIcon(int sum) {
    if (sum > 0) {
      return Assets.icons.cartFull;
    } else {
      return Assets.icons.cartEmpty;
    }
  }
}

class _Title extends ImplicitlyAnimatedWidget {
  final int number;
  final bool isActive;

  const _Title({
    required this.number,
    required this.isActive,
  }) : super(duration: const Duration(milliseconds: 400), curve: Curves.linear);

  @override
  ImplicitlyAnimatedWidgetState<ImplicitlyAnimatedWidget> createState() => _AnimatedCountState();
}

class _AnimatedCountState extends AnimatedWidgetBaseState<_Title> {
  Tween? _count = Tween(begin: 0);

  @override
  Widget build(BuildContext context) {
    return Text(
      _getTitle(),
      style: TextStyle(
        color: widget.isActive ? AppColors.textPrimary : AppColors.textSecondary,
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  String _getTitle() {
    if (widget.number == 0) {
      return AppStrings.of(context).homeCartTab;
    }

    final value = _count?.evaluate(animation).toString().split('.')[0] ?? '';

    return '${int.tryParse(value) ?? ''}  ₽';
  }

  @override
  void forEachTween(visitor) {
    _count = visitor(_count, widget.number, (dynamic value) => Tween(begin: value));
  }
}
