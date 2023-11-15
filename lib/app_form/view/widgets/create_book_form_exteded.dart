import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geat/app/constants/book_genre.dart';
import 'package:geat/app_form/bloc/create_book_form_cubit/create_book_form_cubit.dart';

List<bool> selectedItems = List.generate(4, (index) => false);

Future<bool?> showExtendedBookForm(
    // CreateBookFormState state,
    {
  required BuildContext context,
}) async {
  final theme = Theme.of(context);
  return showDialog(
    context: context,
    builder: (dialogContext) => BlocProvider.value(
      value: BlocProvider.of<CreateBookFormCubit>(context),
      child: BlocBuilder<CreateBookFormCubit, CreateBookFormState>(
        builder: (context, state) {
          final height = MediaQuery.of(context).size.height - 400;
          final width = MediaQuery.of(context).size.width - 400;

          return AlertDialog.adaptive(
            backgroundColor: theme.scaffoldBackgroundColor,
            elevation: 7,
            title: const Text('Form Extension'),
            content: SizedBox(
              height: height,
              width: width,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // DialogSwitch(
                    //   value: state.isDraft,
                    //   title: '1️⃣ Is This a draft ❓',
                    //   onChanged: (val) => context
                    //       .read<CreateBookFormCubit>()
                    //       .isDraftBool(val: val),
                    // ),
                    const SizedBox(height: 3),
                    DialogSwitch(
                      value: state.canReImagine,
                      title: '2️⃣ can this book be re-Imagined ❓',
                      onChanged: (val) => context
                          .read<CreateBookFormCubit>()
                          .canReImaginedBool(val: val),
                    ),
                    const SizedBox(height: 3),
                    DialogSwitch(
                      value: state.canComment,
                      title: '3️⃣ do you allow comments ❓',
                      onChanged: (val) => context
                          .read<CreateBookFormCubit>()
                          .canCommentBool(val: val),
                    ),
                    const SizedBox(height: 3),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "4️⃣ select categories related to you'r book: ",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Wrap(
                          children: BookGenre.genre.map((choice) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 3,
                                vertical: 2,
                              ),
                              child: ChoiceChip(
                                label: Text(choice),
                                selected: state.categories.contains(choice),
                                selectedColor: theme.colorScheme.secondary,
                                onSelected: (_) => context
                                    .read<CreateBookFormCubit>()
                                    .categoryList(choice),
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            actions: [
              ElevatedButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: const Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: const Text('Upload'),
              ),
            ],
          );
        },
      ),
    ),
  );
}

class DialogSwitch extends StatelessWidget {
  const DialogSwitch({
    required this.value,
    required this.title,
    super.key,
    this.onChanged,
  });
  final bool value;
  final String title;
  //final void Function(bool)? onChanged;
  final ValueChanged<bool>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Switch.adaptive(
          value: value,
          onChanged: onChanged,
        ),
      ],
    );
  }
}

// ToggleButtons(
//   // list of booleans
//   isSelected: isSelected,
//   // text color of selected toggle
//   selectedColor: Colors.white,
//   // text color of not selected toggle
//   color: Colors.blue,
//   // fill color of selected toggle
//   fillColor: Colors.lightBlue.shade900,
//   // when pressed, splash color is seen
//   splashColor: Colors.red,
//   // long press to identify highlight color
//   highlightColor: Colors.orange,
//   // if consistency is needed for all text style
//   textStyle: const TextStyle(fontWeight: FontWeight.bold),
//   // border properties for each toggle
//   renderBorder: true,
//   borderColor: Colors.black,
//   borderWidth: 1.5,
//   borderRadius: BorderRadius.circular(10),
//   selectedBorderColor: Colors.pink,
// // add widgets for which the users need to toggle
//    children: [ ],
// // to select or deselect when pressed
//   onPressed: (int newIndex) { }
// );
