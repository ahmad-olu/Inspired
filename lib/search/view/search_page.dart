import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:geat/app/repository/search_repo.dart';
import 'package:geat/app/router/app_router.gr.dart';
import 'package:geat/app/widget/global_cached_network_image.dart';
import 'package:geat/search/bloc/cubit/search_cubit.dart';

@RoutePage(name: 'search')
class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(
        context.read<SearchRepo>(),
      ),
      child: const SearchView(),
    );
  }
}

class SearchView extends HookWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    final searchController = useTextEditingController(text: '');
    final theme = Theme.of(context);
    //final selectedCat = useState<int>(0);
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: theme.scaffoldBackgroundColor,
            title: SizedBox(
              height: 50,
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(10).copyWith(left: 20),
                  filled: true,
                  fillColor: theme.scaffoldBackgroundColor.withOpacity(0.5),
                  enabledBorder: textFieldBorder(theme),
                  focusedBorder: textFieldBorder(theme),
                  hintText: 'Search...',
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: IconButton(
                      onPressed: () {
                        context
                            .read<SearchCubit>()
                            .search(searchController.text);
                      },
                      icon: const Icon(
                        Icons.search_sharp,
                        size: 34,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          body: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 55, top: 10),
              child: Column(
                children: [
                  Wrap(
                    children: List.generate(
                      SearchType.values.length,
                      (index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: ChoiceChip(
                            label: Text(SearchType.values[index].name),
                            selected: state.searchType == index,
                            onSelected: (value) => context
                                .read<SearchCubit>()
                                .searchTypeEnum(index, selected: value),
                          ),
                        );
                      },
                    ),
                  ),
                  Expanded(child: SearchBody(searchState: state)),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  OutlineInputBorder textFieldBorder(ThemeData theme) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: theme.colorScheme.primary.withOpacity(0.9),
        width: 2,
      ),
    );
  }
}

class SearchBody extends StatelessWidget {
  const SearchBody({
    required this.searchState,
    super.key,
  });
  final SearchState searchState;

  @override
  Widget build(BuildContext context) {
    log('=============> ${searchState.searchType} \n');
    if (searchState.status == SearchStatus.error) {
      return Center(
        child: Text(searchState.errorMessage ?? 'Error Occurred'),
      );
    }
    if (searchState.status == SearchStatus.loading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    if (searchState.status == SearchStatus.initial) {
      return const Center(
        child: Text('CLICK ABOVE TO SEARCH 👽', textScaleFactor: 2),
      );
    }

    if (searchState.searchType == 0) {
      if (searchState.users == null || searchState.users!.isEmpty) {
        return const Center(
          child: Text('CLICK ABOVE TO SEARCH 👽', textScaleFactor: 2),
        );
      }
      return ListView.builder(
        itemCount: searchState.users?.length,
        itemBuilder: (context, index) {
          final user = searchState.users?[index];
          return ListTile(
            leading: CircleAvatar(
              radius: 30,
              child: user?.imageId == null
                  ? null
                  : GlobalCachedNetworkImage(
                      imageId: user!.imageId!,
                    ),
            ),
            title: Text('@${user!.username}', textScaleFactor: 1.3),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(user.email),
                Text(
                  'Following::${user.following.length} ,Followers::${user.followers.length}',
                ),
              ],
            ),
            onTap: () => AutoRouter.of(context)
                .push(Profile(uid: user.id, isProfilePage: false)),
          );
        },
      );
    } else if (searchState.searchType == 1) {
      if (searchState.books == null || searchState.books!.isEmpty) {
        return const Center(
          child: Text('CLICK ABOVE TO SEARCH 👽', textScaleFactor: 2),
        );
      }
      return ListView.builder(
        itemCount: searchState.books?.length,
        itemBuilder: (context, index) {
          final book = searchState.books?[index];
          final imageId = book?.imagesId;
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              radius: 30,
              child: imageId == null || imageId.isEmpty
                  ? Icon(
                      Icons.panorama,
                      color: Theme.of(context).colorScheme.secondary,
                    )
                  : GlobalCachedNetworkImage(
                      imageId: imageId[0],
                    ),
            ),
            title: Text('📖 ${book?.title}', textScaleFactor: 1.3),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('books:: ${book?.content.length}'),
                Text(
                  'Likes::${book?.likes.length}',
                ),
              ],
            ),
            onTap: () => AutoRouter.of(context).push(ViewBook(book: book!)),
          );
        },
      );
    }
    return const Center(
      child: Text('CLICK ABOVE TO SEARCH 👽', textScaleFactor: 2),
    );
  }
}
