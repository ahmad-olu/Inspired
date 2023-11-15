import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:geat/app/models/re_imagined.dart';
import 'package:geat/app/repository/book_repo.dart';
import 'package:geat/app/repository/notification_repo.dart';
import 'package:geat/app/repository/user_repo.dart';
import 'package:geat/auth/bloc/auth_bloc/auth_bloc.dart';
import 'package:geat/view_book/bloc/likes_bloc/likes_bloc.dart';
import 'package:geat/view_book/widgets/custom_text_node.dart';
import 'package:markdown_widget/markdown_widget.dart';

@RoutePage(name: 'viewAlternate')
class ViewReImaginedPage extends StatelessWidget {
  const ViewReImaginedPage({required this.reImagined, super.key});
  final ReImagined reImagined;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LikesBloc>(
      create: (context) => LikesBloc(
        context.read<BookRepo>(),
        context.read<AuthBloc>(),
        context.read<NotificationRepo>(),
        context.read<UserRepo>(),
      ),
      //..add(LikesEvent.initialize(reImagined)),
      child: ViewReImaginedView(
        reImagined: reImagined,
      ),
    );
  }
}

class ViewReImaginedView extends HookWidget {
  const ViewReImaginedView({required this.reImagined, super.key});
  final ReImagined reImagined;

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('ReImagined', textScaleFactor: 0.8),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: PageView.builder(
                  controller: pageController,
                  itemCount: reImagined.content.length,
                  itemBuilder: (context, index) {
                    final data = reImagined.content[index];
                    return Column(
                      children: [
                        Text(
                          data.head,
                          textScaleFactor: 1.2,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Expanded(
                          child: MarkdownWidget(
                            data: data.content,
                            markdownGenerator: MarkdownGenerator(
                              textGenerator: (node, config, visitor) =>
                                  CustomTextNode(
                                node.textContent,
                                config,
                                visitor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 65),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => pageController.previousPage(
                      duration: 1.seconds,
                      curve: Curves.bounceInOut,
                    ),
                    child: const Text('⇜', textScaleFactor: 2),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () => pageController.nextPage(
                      duration: 1.seconds,
                      curve: Curves.bounceInOut,
                    ),
                    child: const Text('⇝', textScaleFactor: 2),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// 

