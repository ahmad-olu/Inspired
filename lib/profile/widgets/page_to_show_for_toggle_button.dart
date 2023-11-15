import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:geat/app/constants/app_assets.dart';
import 'package:geat/app/constants/enum/post_type_enum.dart';
import 'package:geat/app/models/book.dart';
import 'package:geat/app/models/re_imagined.dart';
import 'package:geat/app/router/app_router.gr.dart';
import 'package:geat/app/widget/avatar_container.dart';
import 'package:geat/app/widget/empty_page_view.dart';

class PageToShowForToggleButton extends StatelessWidget {
  const PageToShowForToggleButton({
    required this.pageIndex,
    required this.books,
    required this.reImagined,
    required this.isCurrentUser,
    super.key,
  });
  final int pageIndex;
  final List<Book> books;
  final List<ReImagined> reImagined;
  final bool isCurrentUser;

  @override
  Widget build(BuildContext context) {
    if (pageIndex == 0) {
      if (books.isEmpty) {
        return const SliverToBoxAdapter(
          child: EmptyPageView(
            title: 'No Book yet,',
            subTitle: "Why don't you write a book already to fill it",
            lottieAsset: AssetsConstants.emptyState2,
          ),
        );
      }
      return SliverList.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          final book = books[index];
          return ListTile(
            leading: AvatarContainer(
              imageId: book.imagesId!.isNotEmpty ? book.imagesId![0] : '',
              size: 70,
              borderRadius: 10,
            ),
            trailing: isCurrentUser
                ? ElevatedButton(
                    onPressed: () {
                      if (book.postType == BookType.text) {
                        AutoRouter.of(context)
                            .push(CreateBook(isUpdate: true, book: book));
                      }
                      if (book.postType == BookType.image) {
                        AutoRouter.of(context)
                            .push(CreateImageBook(isUpdate: true, book: book));
                      }
                    },
                    child: const Text('📖', textScaleFactor: 1.3),
                  )
                : null,
            title: Text(
              book.title,
              textScaleFactor: 1.3,
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (book.postType == BookType.text)
                  Text(
                    '${book.content.length} chapters in total',
                  )
                else
                  Text(
                    '${book.imagesId!.length - 1} pages in total - cover page',
                  ),
                if (isCurrentUser == true && book.draft == true)
                  const Text(
                    '✏️ Draft',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
              ],
            ),
            onTap: () => AutoRouter.of(context).push(ViewBook(book: book)),
          );
        },
      );
    } else if (pageIndex == 1) {
      if (reImagined.isEmpty) {
        return const SliverToBoxAdapter(
          child: EmptyPageView(
            title: 'No ReImagined yet,',
            subTitle: "Why don't you re-imagine a book to fill this page",
            lottieAsset: AssetsConstants.emptyState2,
          ),
        );
      }
      return SliverList.builder(
        itemCount: reImagined.length,
        itemBuilder: (context, index) {
          final reImagine = reImagined[index];
          return ListTile(
            leading: const Text('📓', textScaleFactor: 4),
            title: Text(
              reImagine.postName,
              textScaleFactor: 1.3,
            ),
            subtitle: Text('${reImagine.content.length} chapters in total'),
            onTap: () => AutoRouter.of(context)
                .push(ViewAlternate(reImagined: reImagine)),
          );
        },
      );
    } else {
      return SliverList.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(15),
            child: Container(
              color: Colors.blue[100 * (index % 9 + 1)],
              height: 80,
              alignment: Alignment.center,
              child: Text(
                '2 Item $index',
                style: const TextStyle(fontSize: 30),
              ),
            ),
          );
        },
      );
    }
  }
}
