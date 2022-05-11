import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final int imageNumber;

  const Post({required this.imageNumber, Key? key}) : super(key: key);

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
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.zero,
      child: Column(
        children: [
          ListTile(
            contentPadding: const EdgeInsets.only(left: 15),
            leading: const CircleAvatar(),
            visualDensity: VisualDensity.compact,
            title: const Text(
              'cuciocj',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5,
              ),
            ),
            subtitle: const Text(
              "Naga, Camarines Sur",
              style: TextStyle(letterSpacing: 0.5),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
              iconSize: 30,
            ),
          ),
          Image.network(
            'https://picsum.photos/id/$imageNumber/500/',
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
                        "$imageNumber likes",
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
                          text: const TextSpan(
                            style: TextStyle(
                              color: Colors.black,
                              letterSpacing: 0.5,
                            ),
                            children: [
                              TextSpan(
                                text: 'cuciocj ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: longCaption,
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
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 2),
                      child: Text(
                        '1 hour ago',
                        style: TextStyle(
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
      ),
    );
  }
}
