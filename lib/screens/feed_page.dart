import 'dart:math';

import 'package:flutter/material.dart';
import 'package:instaclone/widgets/post.dart';

import '../model/post_details.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  final List<PostDetail> _saved = <PostDetail>[];

  static const String _longCaption =
      "Long caption goes here. #Lorem #ipsum dolor sit amet, consectetur "
      "adipiscing elit. Integer rutrum justo eget porttitor eleifend. Duis ac "
      "diam vitae odio facilisis feugiat et quis odio. Aenean vitae justo "
      "accumsan nisi pharetra scelerisque. Donec orci diam, vestibulum vitae "
      "elementum at, ullamcorper in tortor. Ut fermentum blandit commodo.";

  void callback(PostDetail postDetail) {
    // setState(() {
    //   if (_saved.contains(postDetail)) {
    //     _saved.remove(postDetail);
    //   } else {
    //     _saved.add(postDetail);
    //   }
    // });
    if (_saved.contains(postDetail)) {
      _saved.remove(postDetail);
    } else {
      _saved.add(postDetail);
    }

    print('SAVED POSTS imageurls:\n');
    _saved.forEach((element) {
      print(element.imageUrl);
    });
  }

  @override
  Widget build(BuildContext context) {
    PostDetail postDetail1 = PostDetail(
      238,
      'cuciocj',
      'https://picsum.photos/id/' +
          Random().nextInt(500 - 0).toString() +
          '/500/',
      _longCaption,
      'Naga, Camarines Sur',
      DateTime.now(),
      false,
      false,
    );

    PostDetail postDetail2 = PostDetail(
      237,
      'cuciocj',
      'https://picsum.photos/id/' +
          Random().nextInt(500 - 0).toString() +
          '/500/',
      _longCaption,
      '',
      DateTime.now(),
      false,
      false,
    );

    PostDetail postDetail3 = PostDetail(
      239,
      'cuciocj',
      'https://picsum.photos/id/' +
          Random().nextInt(500 - 0).toString() +
          '/500/',
      _longCaption,
      '',
      DateTime.now(),
      false,
      false,
    );

    PostDetail postDetail4 = PostDetail(
      235,
      'cuciocj',
      'https://picsum.photos/id/' +
          Random().nextInt(500 - 0).toString() +
          '/500/',
      _longCaption,
      'Big Mountain',
      DateTime.now(),
      false,
      false,
    );

    PostDetail postDetail5 = PostDetail(
      230,
      'cuciocj',
      'https://picsum.photos/id/' +
          Random().nextInt(500 - 0).toString() +
          '/500/',
      _longCaption,
      'Big Mountain',
      DateTime.now(),
      false,
      false,
    );

    return Container(
      padding: EdgeInsets.zero,
      child: RefreshIndicator(
        onRefresh: () async {
          setState(() {
            // pull new uploads
          });
        },
        child: ListView(
          children: [
            Post(
              postDetail: postDetail1,
              callback: callback,
            ),
            Post(
              postDetail: postDetail2,
              callback: callback,
            ),
            Post(
              postDetail: postDetail3,
              callback: callback,
            ),
            Post(
              postDetail: postDetail4,
              callback: callback,
            ),
            Post(
              postDetail: postDetail5,
              callback: callback,
            ),
            Post(
              postDetail: postDetail1,
              callback: callback,
            ),
            Post(
              postDetail: postDetail2,
              callback: callback,
            ),
            Post(
              postDetail: postDetail3,
              callback: callback,
            ),
            Post(
              postDetail: postDetail4,
              callback: callback,
            ),
            Post(
              postDetail: postDetail5,
              callback: callback,
            ),
          ],
        ),
      ),
    );
  }
}
