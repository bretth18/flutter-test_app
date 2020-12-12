import 'package:flutter/cupertino.dart';

// as user performs searches, the list of results changes, so we use a stateful widget
class SearchTab extends StatefulWidget {
  @override
  _SearchTabState createState() {
    return _SearchTabState();
  }
}

class _SearchTabState extends State<SearchTab> {
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: <Widget>[
        CupertinoSliverNavigationBar(
          largeTitle: Text('search'),
        ),
      ],
    );
  }
}
