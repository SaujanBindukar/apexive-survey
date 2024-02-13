import 'package:apexive_test/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

// class CustomDropdown<T> extends StatefulWidget {
//   const CustomDropdown({
//     Key? key,
//     required this.items,
//     required this.value,
//     required this.onChanged,
//     required this.hintText,
//   }) : super(key: key);
//   final List<T> items;
//   final T value;
//   final Function(T) onChanged;
//   final String hintText;

//   @override
//   State<CustomDropdown<T>> createState() => _GenericDropdownState<T>();
// }

// class _GenericDropdownState<T> extends State<CustomDropdown<T>> {
//   @override
//   Widget build(BuildContext context) {
//     final textTheme = Theme.of(context).textTheme;
//     return DropdownButtonFormField<T>(
//       padding: const EdgeInsets.only(bottom: 20),
//       hint: Text(
//         widget.hintText,
//         style: textTheme.bodyLarge,
//       ),
//       icon: const Icon(
//         Icons.keyboard_arrow_down,
//         color: Colors.white,
//       ),
//       dropdownColor: AppColors.backgroundColor,
//       value: widget.value,
//       items: widget.items.map((T item) {
//         return DropdownMenuItem<T>(
//           value: item,
//           child: Text(
//             item.toString(),
//           ),
//         );
//       }).toList(),
//       onChanged: (value) {
//         widget.onChanged(value as T);
//       },
//     );
//   }
// }

class CustomDropdown<T> extends StatelessWidget {
  const CustomDropdown({
    Key? key,
    required this.items,
    required this.value,
    required this.onChanged,
    required this.hintText,
  }) : super(key: key);
  final List<T> items;
  final T value;
  final Function(T) onChanged;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return DropdownButtonFormField<T>(
      padding: const EdgeInsets.only(bottom: 20),
      hint: Text(
        hintText,
        style: textTheme.bodyLarge,
      ),
      icon: const Icon(
        Icons.keyboard_arrow_down,
        color: Colors.white,
      ),
      dropdownColor: AppColors.backgroundColor,
      value: value,
      items: items.map((T item) {
        return DropdownMenuItem<T>(
          value: item,
          child: Text(
            item.toString(),
          ),
        );
      }).toList(),
      onChanged: (value) {
        onChanged(value as T);
      },
    );
  }
}
