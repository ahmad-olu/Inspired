import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:geat/app/constants/appwrite_const.dart';
import 'package:geat/app/constants/enum/post_type_enum.dart';
import 'package:geat/app/constants/platform.dart';
import 'package:geat/app/models/book.dart';
import 'package:geat/app/repository/book_repo.dart';
import 'package:geat/app/repository/notification_repo.dart';
import 'package:geat/app/repository/user_repo.dart';
import 'package:geat/app/router/app_router.gr.dart';
import 'package:geat/app/widget/global_cached_network_image.dart';
import 'package:geat/auth/bloc/auth_bloc/auth_bloc.dart';
import 'package:geat/view_book/bloc/likes_bloc/likes_bloc.dart';
import 'package:markdown_widget/markdown_widget.dart';

import 'package:geat/view_book/widgets/custom_text_node.dart';

@RoutePage(name: 'viewBook')
class ViewBookPage extends StatelessWidget {
  const ViewBookPage({required this.book, super.key});
  final Book book;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LikesBloc>(
      create: (context) => LikesBloc(
        context.read<BookRepo>(),
        context.read<AuthBloc>(),
        context.read<NotificationRepo>(),
        context.read<UserRepo>(),
      )..add(LikesEvent.initialize(book)),
      child: ViewBookView(
        book: book,
      ),
    );
  }
}

class ViewBookView extends HookWidget {
  const ViewBookView({required this.book, super.key});
  final Book book;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final pageController = usePageController();

    return Scaffold(
      appBar: AppBar(
        title: Text(book.title, textScaleFactor: 0.8),
        actions: [
          if (book.postType != BookType.image)
            ElevatedButton(
              onPressed: () => AutoRouter.of(context).push(
                CreateAlternate(
                  postId: book.id!,
                  postName: book.title,
                  postUserId: book.uId,
                ),
              ),
              child: const Text('🖋️', textScaleFactor: 1.1),
            )
                .animate(
                  onPlay: (controller) => controller.repeat(reverse: true),
                )
                .then(
                  delay: 500.ms,
                )
                .shimmer(
                  duration: 2000.ms,
                  delay: 1000.ms,
                  color: theme.scaffoldBackgroundColor,
                ),
          const SizedBox(width: 10),
        ],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            if (book.postType == BookType.text)
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: PageView.builder(
                    controller: pageController,
                    itemCount: book.content.length,
                    itemBuilder: (context, index) {
                      final data = book.content[index];
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
            if (book.postType == BookType.image)
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: PageView.builder(
                    controller: pageController,
                    itemCount: book.imagesId!.length,
                    onPageChanged: (value) {
                      log('print ${value + 1}');
                    },
                    itemBuilder: (context, index) {
                      final data = book.imagesId![index];

                      return Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: CachedNetworkImageProvider(
                              AppwriteConst.imageUrl(data),
                            ),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.8),
                              BlendMode.darken,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: GlobalCachedNetworkImage(
                            imageId: data,
                          ),
                        ),
                      );

                      // return Image.network(
                      //   data,
                      //   fit: BoxFit.fitHeight,
                      // );
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
                    child: GeatPlatforms().isWeb
                        ? const Icon(Icons.arrow_back)
                        : const Text('⇜', textScaleFactor: 2),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () => pageController.nextPage(
                      duration: 1.seconds,
                      curve: Curves.bounceInOut,
                    ),
                    child: GeatPlatforms().isWeb
                        ? const Icon(Icons.arrow_forward)
                        : const Text('⇝', textScaleFactor: 2),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 47),
        child: BlocBuilder<LikesBloc, LikesState>(
          builder: (context, state) {
            return FloatingActionButton(
              backgroundColor: theme.colorScheme.secondary.withOpacity(0.5),
              hoverColor: theme.colorScheme.primary,
              child: GeatPlatforms().isWeb
                  ? Column(
                      children: [
                        if (state.isLiked == true)
                          const Icon(
                            Icons.monitor_heart,
                            color: Colors.red,
                          )
                        else
                          const Icon(Icons.heart_broken_sharp),
                        Text(
                          state.likes.length.toString(),
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        if (state.isLiked == true)
                          const Text(
                            '💗',
                            textScaleFactor: 1.7,
                          )
                        else
                          const Text(
                            '🤍',
                            textScaleFactor: 1.7,
                          ),
                        Text(
                          state.likes.length.toString(),
                        ),
                      ],
                    ),
              onPressed: () =>
                  context.read<LikesBloc>().add(const LikesEvent.toggle()),
            );
          },
        ),
      ),
    );
  }
}
