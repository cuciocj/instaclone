import 'package:flutter/material.dart';
import 'package:instaclone/model/post_details.dart';

class Post extends StatefulWidget {
  final PostDetail _postDetail;

  final Function callback;

  const Post({
    Key? key,
    required PostDetail postDetail,
    required this.callback,
  })  : _postDetail = postDetail,
        super(key: key);

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  bool _isLiked = false;
  bool _isSaved = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.only(left: 15),
          leading: const CircleAvatar(),
          visualDensity: VisualDensity.compact,
          title: Text(
            widget._postDetail.username,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5,
            ),
          ),
          subtitle: Text(
            widget._postDetail.location,
            style: const TextStyle(letterSpacing: 0.5),
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
            iconSize: 30,
          ),
        ),
        Image.network(
          widget._postDetail.imageUrl,
          fit: BoxFit.fitWidth,
        ),
        ListTile(
          visualDensity: VisualDensity.standard,
          contentPadding: const EdgeInsets.only(left: 5),
          leading: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    _isLiked = !_isLiked;
                  });
                },
                icon: _isLiked
                    ? const Icon(
                        Icons.favorite_outlined,
                        color: Colors.red,
                      )
                    : const Icon(
                        Icons.favorite_outline_outlined,
                      ),
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
            // bookmark
            onPressed: () {
              setState(() {
                _isSaved = !_isSaved;
              });
              widget.callback(widget._postDetail);
            },
            icon: _isSaved
                ? const Icon(
                    Icons.bookmark_outlined,
                    color: Colors.black,
                  )
                : const Icon(
                    Icons.bookmark_outline_outlined,
                  ),
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
                      "${widget._postDetail.likes} likes",
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
                              text: '${widget._postDetail.username} ',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: widget._postDetail.caption,
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
                    padding: EdgeInsets.only(bottom: 3),
                    child: Text(
                      'View all 3 comments',
                      style: TextStyle(
                        letterSpacing: 0.5,
                        color: Colors.black54,
                        fontSize: 16,
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
                // elapsed time
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Text(
                      getFormattedDateFormat(widget._postDetail.uploadDate),
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
