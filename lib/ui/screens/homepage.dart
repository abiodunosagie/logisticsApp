import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logisticsapp/theme/palette.dart';
import 'package:logisticsapp/ui/screens/product_page.dart';
import 'package:shimmer/shimmer.dart';
import '../widgets/my_data_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isLoading = true; //set to true initially
  @override
  void initState() {
    super.initState();
    //simulate data loading delay
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _isLoading = false; // set to false when data is loaded
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.kBackgroundColor,
      body: _isLoading
          ? Shimmer(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.grey.shade300,
                  Colors.grey.shade100,
                  Colors.grey.shade300,
                ],
                stops: const [
                  0.4,
                  0.5,
                  0.6,
                ],
              ),
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    title: Padding(
                      padding: const EdgeInsets.only(
                        left: 24,
                      ),
                      child: Text(
                        'Track Parcel',
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                    ),
                    centerTitle: false,
                    floating: true,
                    titleSpacing: 0,
                    pinned: true,
                    actions: const [
                      Padding(
                        padding: EdgeInsets.only(
                          right: 24,
                        ),
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.deepPurple,
                          backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQf5M2j5aP_QleSz2Sb2Qgf-J5UgjP3po54hg&usqp=CAU',
                          ),
                        ),
                      ),
                    ],
                    shadowColor: Colors.transparent,
                    expandedHeight: 426,
                    backgroundColor:
                        Theme.of(context).appBarTheme.backgroundColor,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(
                          16,
                        ),
                        bottomRight: Radius.circular(
                          16,
                        ),
                      ),
                    ),
                    flexibleSpace: FlexibleSpaceBar(
                      background: Column(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 24,
                                vertical: 64,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Enter parcel number or scan QR code',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 7,
                                      bottom: 40,
                                    ),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            height: 49,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                4,
                                              ),
                                              color: Colors.white,
                                            ),
                                            child: TextField(
                                              autofillHints: Characters.empty,
                                              decoration: const InputDecoration(
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                    horizontal: 10,
                                                  ),
                                                  hintText:
                                                      'Search for parcel...',
                                                  hintMaxLines: 1,
                                                  hintStyle: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 68, 68, 68),
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                  border: InputBorder.none),
                                              autocorrect: true,
                                              textCapitalization:
                                                  TextCapitalization.characters,
                                              inputFormatters: [
                                                LengthLimitingTextInputFormatter(
                                                  30,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        Container(
                                          padding: const EdgeInsets.all(
                                            14,
                                          ),
                                          width: 50,
                                          height: 49,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              4,
                                            ),
                                            color: Colors.white,
                                          ),
                                          child: SvgPicture.asset(
                                            'assets/images/icon_qrcode.svg',
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  //Search button
                                  SizedBox(
                                    height: 48,
                                    width: double.infinity,
                                    child: TextButton(
                                      onPressed: () {},
                                      style: Theme.of(context)
                                          .textButtonTheme
                                          .style,
                                      child: Text('Track parcel',
                                          style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20,
                                          )),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SliverPadding(
                    padding: EdgeInsets.only(
                      top: 32,
                    ),
                  ),

                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 24,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'My Parcels',
                                style: Theme.of(context).textTheme.displaySmall,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  //SliverList here
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        if (index < MyDataList.dataList.length) {
                          final item = MyDataList.dataList[index];

                          return Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24,
                              vertical: 15,
                            ),
                            child: Container(
                              height: 254,
                              padding: const EdgeInsets.all(
                                16,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    4,
                                  ),
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 0,
                                      blurRadius: 10,
                                      offset: Offset(
                                        0,
                                        0,
                                      ),
                                    )
                                  ]),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        item.phoneNumber.toString(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall,
                                      ),
                                      const Spacer(),
                                      Container(
                                        height: 31,
                                        width: 108,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image:
                                                  NetworkImage(item.imageUrl),
                                              fit: BoxFit.cover),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        item.parcelStatus,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineMedium,
                                      ),
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        item.lastUpdatedTime,
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge,
                                      ),
                                      const SizedBox(
                                        height: 12,
                                      ),
                                      Container(
                                        height: 5,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            2.5,
                                          ),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            2.5,
                                          ),
                                          child: LinearProgressIndicator(
                                            value: 0.8,
                                            color: Theme.of(context)
                                                .appBarTheme
                                                .backgroundColor,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Details',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium,
                                          ),
                                          SvgPicture.asset(
                                              'assets/images/icon_details.svg'),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        } else {
                          return null;
                        }
                      },
                      childCount: MyDataList.dataList.length,
                    ),
                  )
                ],
              ),
            )
          : CustomScrollView(
              slivers: [
                SliverAppBar(
                  title: Padding(
                    padding: const EdgeInsets.only(
                      left: 24,
                    ),
                    child: Text(
                      'Track Parcel',
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                  ),
                  centerTitle: false,
                  floating: true,
                  titleSpacing: 0,
                  pinned: true,
                  actions: const [
                    Padding(
                      padding: EdgeInsets.only(
                        right: 24,
                      ),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.deepPurple,
                        backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQf5M2j5aP_QleSz2Sb2Qgf-J5UgjP3po54hg&usqp=CAU',
                        ),
                      ),
                    ),
                  ],
                  shadowColor: Colors.transparent,
                  expandedHeight: 426,
                  backgroundColor:
                      Theme.of(context).appBarTheme.backgroundColor,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(
                        16,
                      ),
                      bottomRight: Radius.circular(
                        16,
                      ),
                    ),
                  ),
                  flexibleSpace: FlexibleSpaceBar(
                    background: Column(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24,
                              vertical: 64,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Enter parcel number or scan QR code',
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 7,
                                    bottom: 40,
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          height: 49,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              4,
                                            ),
                                            color: Colors.white,
                                          ),
                                          child: TextField(
                                            autofillHints: Characters.empty,
                                            decoration: const InputDecoration(
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                  horizontal: 10,
                                                ),
                                                hintText:
                                                    'Search for parcel...',
                                                hintMaxLines: 1,
                                                hintStyle: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 68, 68, 68),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                                border: InputBorder.none),
                                            autocorrect: true,
                                            textCapitalization:
                                                TextCapitalization.characters,
                                            inputFormatters: [
                                              LengthLimitingTextInputFormatter(
                                                30,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(
                                          14,
                                        ),
                                        width: 50,
                                        height: 49,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            4,
                                          ),
                                          color: Colors.white,
                                        ),
                                        child: SvgPicture.asset(
                                          'assets/images/icon_qrcode.svg',
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                //Search button
                                SizedBox(
                                  height: 48,
                                  width: double.infinity,
                                  child: TextButton(
                                    onPressed: () {},
                                    style:
                                        Theme.of(context).textButtonTheme.style,
                                    child: Text('Track parcel',
                                        style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20,
                                        )),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SliverPadding(
                  padding: EdgeInsets.only(
                    top: 32,
                  ),
                ),
                //SliverList section
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 24,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'My Parcels',
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    if (index < MyDataList.dataList.length) {
                      final item = MyDataList.dataList[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  ProductDetailsPage(item: item),
                            ),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 15,
                          ),
                          child: Container(
                            height: 254,
                            padding: const EdgeInsets.all(
                              16,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  4,
                                ),
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.white,
                                    spreadRadius: 0,
                                    blurRadius: 10,
                                    offset: Offset(
                                      0,
                                      0,
                                    ),
                                  )
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      item.phoneNumber.toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall,
                                    ),
                                    const Spacer(),
                                    Container(
                                      height: 31,
                                      width: 108,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(item.imageUrl),
                                            fit: BoxFit.cover),
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      item.parcelStatus,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineMedium,
                                    ),
                                    const SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      item.lastUpdatedTime,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge,
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    Container(
                                      height: 5,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          2.5,
                                        ),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                          2.5,
                                        ),
                                        child: LinearProgressIndicator(
                                          value: 0.8,
                                          color: Theme.of(context)
                                              .appBarTheme
                                              .backgroundColor,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Details',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium,
                                        ),
                                        SvgPicture.asset(
                                            'assets/images/icon_details.svg'),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    } else {
                      return null;
                    }
                  }, childCount: MyDataList.dataList.length),
                )
              ],
            ),
    );
  }
}
