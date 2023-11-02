class  extends StatefulWidget {
  const ({super.key});

  @override
  State<> createState() => _State();
}

class _State extends State<> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class _PageViewUIState extends State<PageViewUI>{
  @override
  Widget build(BuildContest context) {
    return Scaffold(
      appBarr: AppBar(
        title: Text(
        'PageView Test',
             ),
          backgroundColor: Colors.green,
           ),
           body: PageView(
          children:[

        ],
      ),
    );
  }
}
