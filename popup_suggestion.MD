### link to control suggesstion using global key

    [key showmenu button](https://stackoverflow.com/questions/43349013/how-to-open-a-popupmenubutton)

    [popup widget](https://api.flutter.dev/flutter/material/PopupMenuButton-class.html)

### implementation

    import 'package:flutter/material.dart';
    import 'package:surfer/constants.dart';

    class HomeSearchContainer extends StatefulWidget {
    @override
    _HomeSearchContainerState createState() => _HomeSearchContainerState();
    }

    class _HomeSearchContainerState extends State<HomeSearchContainer> {
    final GlobalKey _menuKey = new GlobalKey();

    void showsuggesstion() {
        dynamic state = _menuKey.currentState;
        state.showButtonMenu();
    }

    @override
    Widget build(BuildContext context) {
        return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: GestureDetector(
            onDoubleTap: showsuggesstion,
            child: TextField(
                decoration: InputDecoration(
                    prefixIcon: IconButton(
                    icon: Icon(
                        Icons.search,
                        color: Colors.black,
                    ),
                    onPressed: () {},
                    ),
                    hintText: "Search",
                    hintStyle: searchtext,
                    suffixText: "Filter",
                    suffixIcon: Popup(_menuKey),
                    // Icon(
                    //   Icons.filter_3_sharp,
                    //   color: Colors.black,
                    // )
                    // ,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none),
            ),
            ));
    }
    }

    class Popup extends StatefulWidget {
    Popup(this.button);
    final button;
    @override
    _PopupState createState() => _PopupState();
    }

    class _PopupState extends State<Popup> {
    var _selection;
    var button;

    @override
    void initState() {
        super.initState();
        button = widget.button;
    }

    @override
    Widget build(BuildContext context) {
        return PopupMenuButton(
        key: button,
        onSelected: (result) {
            setState(() {
            _selection = result;
            });
        },
        itemBuilder: (BuildContext context) => <PopupMenuEntry>[
            const PopupMenuItem(
            value: "Working a lot harder",
            child: Text('Working a lot harder'),
            ),
            const PopupMenuItem(
            value: "Being a lot smarter",
            child: Text('Being a lot smarter'),
            ),
            const PopupMenuItem(
            value: "Being a self-starter",
            child: Text('Being a self-starter'),
            ),
            const PopupMenuItem(
            value: "Placed in charge of trading charter",
            child: Text('Placed in charge of trading charter'),
            ),
        ],
        );
    }
    }
