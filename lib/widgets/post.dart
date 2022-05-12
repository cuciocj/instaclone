import 'package:flutter/material.dart';
import 'package:instaclone/model/post_details.dart';

class Post extends StatelessWidget {
  final PostDetail _postDetail;

  const Post({
    Key? key,
    required PostDetail postDetail,
  }) : _postDetail = postDetail,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.only(left: 15),
          leading: const CircleAvatar(),
          visualDensity: VisualDensity.compact,
          title: Text(
            _postDetail.username,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5,
            ),
          ),
          subtitle: Text(
            _postDetail.location,
            style: const TextStyle(letterSpacing: 0.5),
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
            iconSize: 30,
          ),
        ),
        Image.network(
          _postDetail.imageUrl,
          fit: BoxFit.fitWidth,
        ),
        ListTile(
          visualDensity: VisualDensity.standard,
          contentPadding: const EdgeInsets.only(left: 5),
          leading: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_outline_outlined),
                iconSize: 30,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.chat_bubble_outline_rounded),
                iconSize: 30,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.send_outlined),
                iconSize: 30,
              ),
            ],
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.bookmark_outline_outlined),
            iconSize: 30,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, bottom: 10.0),
          child: Column(
            children: [
              Row(
                // likes
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 2),
                    child: Text(
                      "${_postDetail.likes} likes",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                // caption
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20, bottom: 2),
                      child: RichText(
                        maxLines: 1,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(
                          style: const TextStyle(
                            color: Colors.black,
                            letterSpacing: 0.5,
                          ),
                          children: [
                            TextSpan(
                              text: '${_postDetail.username} ',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: _postDetail.caption,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                // view all comments
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(bottom: 2),
                    child: Text(
                      'View all 3 comments',
                      style: TextStyle(
                        letterSpacing: 0.5,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                // add comment
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  CircleAvatar(
                    maxRadius: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, bottom: 2),
                    child: Text(
                      'Add a comment...',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 0.5,
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Text(
                      getFormattedDateFormat(_postDetail.uploadDate),
                      style: const TextStyle(
                        letterSpacing: 0.5,
                        color: Colors.black54,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

  String getFormattedDateFormat(DateTime dt) {
    return '${dt.year}-${dt.month}-${dt.day}';
  }
}
