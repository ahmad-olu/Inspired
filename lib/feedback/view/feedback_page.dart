import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:geat/app/constants/enum/suggestion_label_enum.dart';
import 'package:geat/app/constants/enum/suggestion_status.dart';

@RoutePage(name: 'feedback')
class FeedBackPage extends StatelessWidget {
  const FeedBackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const FeedView();
  }
}

class FeedView extends HookWidget {
  const FeedView({super.key});

  @override
  Widget build(BuildContext context) {
    final selected = useState<SuggestionLabelX>(SuggestionLabelX.unknown);
    final dropDownValue = useState<String>(SuggestionStatusX.requests.name);
    final addFeedBackBtn = useState<bool>(false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('FeedBack'),
        actions: [
          DropdownButton<String>(
            items: SuggestionStatusX.values
                .map(
                  (status) => DropdownMenuItem<String>(
                    value: status.name,
                    child: Text(status.name),
                  ),
                )
                .toList(),
            value: dropDownValue.value,
            onChanged: (value) {
              if (value is String) {
                dropDownValue.value = value;
              }
            },
            iconSize: 42,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: 7,
          itemBuilder: (context, index) {
            return SizedBox(
              height: 100,
              child: Card(
                child: ListTile(
                  title: const Text(
                    'data Title',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('data Sub -Title'),
                      Text('🔵 ${dropDownValue.value}'),
                    ],
                  ),
                  leading: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('🔼'),
                      Text('$index'),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => addFeedBackBtn.value = !addFeedBackBtn.value,
        label: Text(
          addFeedBackBtn.value == true ? 'Close' : 'Add feedback ◀️',
        ),
      ),
      bottomSheet: addFeedBackBtn.value == false
          ? null
          : SizedBox(
              height: 280,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                child: ListView(
                  children: [
                    const SizedBox(height: 4),
                    const FeedBackTextInput(helperText: 'Title'),
                    const SizedBox(height: 4),
                    const FeedBackTextInput(
                      helperText: 'Description',
                      maxLines: null,
                    ),
                    const SizedBox(height: 4),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'select a feed back label: ',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Wrap(
                          children: SuggestionLabelX.values.map((choice) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 3,
                                vertical: 2,
                              ),
                              child: ChoiceChip(
                                label: Text(choice.name),
                                selected: selected.value == choice,
                                onSelected: (value) {
                                  if (value) {
                                    selected.value = choice;
                                  }
                                },
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
    );
  }
}
// Wrap(
//                           children: BookGenre.genre.map((choice) {
//                             return Padding(
//                               padding: const EdgeInsets.symmetric(
//                                 horizontal: 3,
//                                 vertical: 2,
//                               ),
//                               child: ChoiceChip(
//                                 label: Text(choice),
//                                 selected: state.categories.contains(choice),
//                                 onSelected: (_) => context
//                                     .read<CreateBookFormCubit>()
//                                     .categoryList(choice),
//                               ),
//                             );
//                           }).toList(),
//                         ),

class FeedBackTextInput extends StatelessWidget {
  const FeedBackTextInput({
    this.visibility = false,
    this.isPassword = false,
    super.key,
    this.onChanged,
    this.controller,
    this.helperText,
    this.hintText,
    this.enabled = true,
    this.initialValue,
    this.maxLines = 1,
    this.onVisibilityPressed,
    this.validator,
  });
  final void Function(String)? onChanged;
  final TextEditingController? controller;

  final String? helperText;
  final String? hintText;

  final String? initialValue;
  final int? maxLines;

  final void Function()? onVisibilityPressed;
  final bool enabled;
  final bool visibility;
  final bool isPassword;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 7, bottom: 3),
          child: Text(
            '$helperText: ',
            style: const TextStyle(fontWeight: FontWeight.w500),
            textScaleFactor: 1.2,
          ),
        ),
        TextFormField(
          initialValue: initialValue,
          decoration: InputDecoration(
            border: border(),
            // helperText: helperText,
            hintText: hintText,
            enabledBorder: border(),

            enabled: enabled,
            suffixIcon: !isPassword
                ? null
                : IconButton(
                    onPressed: onVisibilityPressed,
                    icon: Icon(
                      visibility ? Icons.visibility_off : Icons.visibility,
                    ),
                  ),
          ),
          maxLines: maxLines,
          onChanged: onChanged,
          obscureText: visibility,
          controller: controller,
          validator: validator,
        ),
      ],
    );
  }

  OutlineInputBorder border() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      borderSide: BorderSide(
        width: 1.5,
        strokeAlign: BorderSide.strokeAlignOutside,
      ),
    );
  }
}
