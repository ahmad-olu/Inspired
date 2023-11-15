import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:geat/app/constants/app_assets.dart';
import 'package:geat/app/constants/enum/post_type_enum.dart';
import 'package:geat/app/repository/book_repo.dart';
import 'package:geat/app/router/app_router.gr.dart';
import 'package:geat/app/utilities/show_book_dialog.dart';
import 'package:geat/app/widget/avatar_container.dart';
import 'package:geat/app/widget/empty_page_view.dart';
import 'package:geat/feed/bloc/bloc/feed_bloc.dart';

@RoutePage(name: 'feed')
class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => FeedBloc(
        context.read<BookRepo>(),
      )
      //..add(const FeedEvent.loadBooks())
      ,
      child: const FeedView(),
    );
  }
}

class FeedView extends HookWidget {
  const FeedView({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();
    useEffect(
      () {
        context.read<FeedBloc>().add(const FeedEvent.loadBooks());
        scrollController.addListener(() {
          if (scrollController.position.maxScrollExtent ==
              scrollController.offset) {
            context.read<FeedBloc>().add(const FeedEvent.loadBooks());
          }
        });
        return;
      },
      [],
    );
    return BlocBuilder<FeedBloc, FeedState>(
      builder: (context, state) {
        return Scaffold(
          // appBar: AppBar(
          //   automaticallyImplyLeading: false,
          //   title: ,
          // ),
          body: state.books.isEmpty
              ? const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: EmptyPageView(
                        title: 'No Books Yet',
                        subTitle:
                            "Why don't you become the first to publish a book",
                        lottieAsset: AssetsConstants.emptyState1,
                        height: 300,
                      ),
                    ),
                  ],
                )
              : Padding(
                  padding: const EdgeInsets.only(
                    bottom: 30,
                    left: 10,
                    right: 10,
                    top: 10,
                  ),
                  child: RefreshIndicator(
                    onRefresh: () async {
                      context
                          .read<FeedBloc>()
                          .add(const FeedEvent.refreshFeed());
                      return;
                    },
                    child: ListView.builder(
                      itemCount: state.books.length + 1,
                      itemBuilder: (context, index) {
                        if (index < state.books.length) {
                          final book = state.books[index];
                          return ListTile(
                            leading: AvatarContainer(
                              imageId: book.imagesId!.isNotEmpty
                                  ? book.imagesId![0]
                                  : '',
                              size: 70,
                              borderRadius: 10,
                            ),
                            title: Text(
                              book.title,
                              textScaleFactor: 2,
                            ),
                            subtitle: book.postType == BookType.text
                                ? Text(
                                    '${book.content.length} chapters in total',
                                  )
                                : Text(
                                    '${book.imagesId!.length - 1} pages in total - cover page',
                                  ),
                            onTap: () => AutoRouter.of(context)
                                .push(ViewBook(book: book)),
                          );
                        } else {
                          return Center(
                            child: state.hasMore
                                ? const CircularProgressIndicator()
                                : const Text(
                                    'No More data to load',
                                    textScaleFactor: 2,
                                  ),
                          );
                        }
                      },
                    ),
                  ),
                ),
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: FloatingActionButton.extended(
              onPressed: () async {
                final isBook = await showBookOrComicDialog(context);
                if (isBook == true) {
                  if (!context.mounted) return;
                  await AutoRouter.of(context).push(CreateBook());
                } else if (isBook == false) {
                  if (!context.mounted) return;
                  await AutoRouter.of(context).push(CreateImageBook());
                }
              },
              label: const Text('Add📓'),
            ),
          ),
        );
      },
    );
  }
}
