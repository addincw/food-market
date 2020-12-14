part of 'pages.dart';

class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    var stars = 3;

    return ListView(
      children: [
        renderFoodHeader(),
        Container(
          height: 258,
          width: double.infinity,
          color: tBackgroundColor,
          alignment: Alignment.center,
          child: ListView(
            padding: EdgeInsets.only(left: tDefaultPadding),
            scrollDirection: Axis.horizontal,
            children: [
              Row(
                children: mockFoods
                    .map(
                      (food) => Padding(
                        padding: EdgeInsets.only(right: tDefaultPadding),
                        child: FmFoodCard(food: food),
                      ),
                    )
                    .toList(),
              )
            ],
          ),
        )
      ],
    );
  }

  Container renderFoodHeader() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(tDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("FoodMarket", style: tTitleFontSyle),
              Text("Let's get some foods", style: tSubtitleFontSyle),
            ],
          ),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1569124589354-615739ae007b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')),
            ),
          )
        ],
      ),
    );
  }
}