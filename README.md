# surfer

A new Flutter project.

## Star Rating Selector

    class StarContainer extends StatefulWidget {
    StarContainer(this.star);

    final int star;
    @override
    _StarContainerState createState() => _StarContainerState();
    }

    class _StarContainerState extends State<StarContainer> {
    final int allstar = 5;
    int selectedStar;
    @override
    void initState() {
        super.initState();
        selectedStar = widget.star;
        setState(() {});
    }

    void changeStar(int index) {
        setState(() {
        selectedStar = index;
        });
    }

    @override
    Widget build(BuildContext context) {
        print(selectedStar);
        List<GestureDetector> iconList = [];
        for (var i = 0; i < allstar; i++) {
        iconList.add(GestureDetector(
            onTap: () => changeStar(i),
            child: Icon(
            selectedStar >= i ? Icons.star : Icons.star_border,
            color: Colors.orange,
            size: 15,
            ),
        ));
        }
        return Row(
        children: iconList,
        );
    }
    }

