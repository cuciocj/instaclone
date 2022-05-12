import 'package:flutter/material.dart';
import 'package:instaclone/model/post_details.dart';
import 'package:instaclone/widgets/bottom_nav_bar.dart';
import 'package:instaclone/widgets/post.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsIconTheme: const IconThemeData(
          color: Colors.black,
          size: 25,
        ),
        title: const Text(
          'Instaclone',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              fontSize: 25),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // TODO handle press
            },
            icon: const Icon(Icons.add_box_outlined),
          ),
          IconButton(
            onPressed: () {
              // TODO handle press
            },
            icon: const Icon(Icons.message_outlined),
          )
        ],
        backgroundColor: Colors.white,
      ),
      body: const Center(
        child: PostList(),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}

class PostList extends StatelessWidget {
  const PostList({Key? key}) : super(key: key);

  static const String longCaption =
      "Long caption goes here. #Lorem #ipsum dolor sit amet, consectetur "
      "adipiscing elit. Integer rutrum justo eget porttitor eleifend. Duis ac "
      "diam vitae odio facilisis feugiat et quis odio. Aenean vitae justo "
      "accumsan nisi pharetra scelerisque. Donec orci diam, vestibulum vitae "
      "elementum at, ullamcorper in tortor. Ut fermentum blandit commodo. "
      "Curabitur ut hendrerit eros. Fusce sed eros in enim elementum tempor "
      "varius at risus. Fusce sodales sapien ipsum, vel sodales magna "
      "vestibulum in. Pellentesque iaculis in leo sit amet bibendum. "
      "Vivamus tempor nec sapien a molestie. Sed vulputate metus suscipit "
      "justo laoreet semper. Etiam in accumsan velit. Etiam non facilisis "
      "nisl. Etiam ac mauris posuere, euismod lorem id, malesuada arcu. Morbi "
      "venenatis ornare maximus. Sed eget dolor viverra, vulputate tortor ac, "
      "interdum velit. In malesuada tempor purus, sit amet iaculis nisi "
      "vestibulum at. Morbi at massa nibh. Aenean lobortis suscipit erat, in "
      "egestas est maximus sit amet. Proin mi tortor, accumsan ac varius vitae, "
      "auctor vel sem. Sed euismod nunc ac quam elementum, non vehicula massa "
      "placerat. Ut eu nulla eu sapien dictum ullamcorper non luctus nulla.";

  @override
  Widget build(BuildContext context) {
    
    PostDetail postDetail1 = PostDetail(
        238,
        'cuciocj',
        'https://picsum.photos/id/238/500/',
        longCaption,
        'Naga, Camarines Sur',
        DateTime.now()
    );

    PostDetail postDetail2 = PostDetail(
        237,
        'cuciocj',
        'https://picsum.photos/id/237/500/',
        longCaption,
        '',
        DateTime.now()
    );

    PostDetail postDetail3 = PostDetail(
        239,
        'cuciocj',
        'https://picsum.photos/id/239/500/',
        longCaption,
        '',
        DateTime.now()
    );

    PostDetail postDetail4 = PostDetail(
        235,
        'cuciocj',
        'https://picsum.photos/id/235/500/',
        longCaption,
        'Big Mountain',
        DateTime.now()
    );
    
    return Container(
      padding: EdgeInsets.zero,
      child: ListView(
        children: [
          Post(postDetail: postDetail1),
          Post(postDetail: postDetail2),
          Post(postDetail: postDetail3),
          Post(postDetail: postDetail4),
        ],
      ),
    );
  }
}
