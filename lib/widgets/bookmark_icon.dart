import 'package:flutter/material.dart';
import 'package:wordpress_app/models/article.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:wordpress_app/services/bookmark_service.dart';

class BookmarkIcon extends StatelessWidget {
  const BookmarkIcon(
      {Key? key,
      required this.bookmarkedList,
      required this.article,
      required this.iconSize,
      this.iconColor,
      this.normalIconColor})
      : super(key: key);

  final Box bookmarkedList;
  final Article? article;
  final double iconSize;
  final Color? iconColor;
  final Color? normalIconColor;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: bookmarkedList.listenable(),
      builder: (context, dynamic value, Widget? child) {
        return IconButton(
            iconSize: iconSize,
            padding: EdgeInsets.all(0),
            constraints: BoxConstraints(),
            alignment: Alignment.centerRight,
            icon: bookmarkedList.keys.contains(article!.id)
                ? Icon(Icons.bookmark,
                    color: iconColor == null ? Colors.blue : iconColor)
                : Icon(Icons.bookmark_add,
                    color: normalIconColor == null
                        ? Colors.grey
                        : normalIconColor),
            onPressed: () {
              BookmarkService().handleBookmarkIconPressed(article!, context);
            });
      },
    );
  }
}
