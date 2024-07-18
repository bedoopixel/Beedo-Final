import 'package:get/get.dart';
import 'package:untitled2/Personal_Screens/Personal_Screen.dart';
import 'package:untitled2/Product_Card/Pro_H_Card.dart';
import 'package:untitled2/text.dart';
import '../Bar/bar_widget.dart';
import '../SubCategoryPage/SubCategoryPage.dart';
import '../controllers/categories_controller.dart';
import '../data/api/api_client.dart';
import '../data/repository/categories_repo.dart';
import '../utils/app_constants.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePageMainWidget extends StatefulWidget {


  @override
  State<HomePageMainWidget> createState() => _HomePageMainWidgetState();
}

class _HomePageMainWidgetState extends State<HomePageMainWidget> {

  final CategoryController categoryController = Get.put(CategoryController(
    categoryRepo: CategoryRepo(
      apiClient: ApiClient(appBaseUrl: AppConstants.BASE_URL),
    ),
  ));


  @override
  Widget build(BuildContext context) {
    categoryController.fetchCategories();
    return GestureDetector(

      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(

          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: Align(
            alignment: AlignmentDirectional(0, 0),
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height * 1,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Wrap(
                spacing: 0,
                runSpacing: 0,
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.start,
                direction: Axis.horizontal,
                runAlignment: WrapAlignment.start,
                verticalDirection: VerticalDirection.down,
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery.sizeOf(context).height * 1,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).accent1,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 64, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              FlutterFlowIconButton(
                                borderColor: Colors.white,
                                borderRadius: 20,
                                borderWidth: 1,
                                buttonSize: 45,
                                fillColor: Colors.white,
                                icon: FaIcon(
                                  FontAwesomeIcons.bell,
                                  color: Color(0xFFD50066),
                                  size: 28,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                              Text(
                                'مرحباً عبد الخالق سعيد',
                                style:Appwidget.bodyMedium(),
                              ),
                              InkWell(
                                onTap: () async {
Navigator.push(context, MaterialPageRoute(builder: (context)=>PersonalScreenWidget()));
                                },
                                child: Container(
                                  width: 55,
                                  height: 55,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    'assets/images/Avatar.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 26, 0, 0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width,
                            height: MediaQuery.sizeOf(context).height * 0.83,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(0),
                                bottomRight: Radius.circular(0),
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                                      child: Container(
                                        width: MediaQuery.sizeOf(context).width * 0.9,
                                        height: MediaQuery.sizeOf(context).height * 0.07,
                                        decoration: BoxDecoration(),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [

                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(8, 0, 8, 0),
                                                child: TextFormField(
                                                  autofocus: false,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    hintText: 'اكتب للبحث',
                                                    hintStyle: FlutterFlowTheme
                                                        .of(context)
                                                        .labelMedium
                                                        .override(
                                                      fontFamily: 'Tajawal',
                                                      fontSize: 18,
                                                      letterSpacing: 0,
                                                    ),
                                                    enabledBorder:
                                                    InputBorder.none,
                                                    focusedBorder:
                                                    InputBorder.none,
                                                    errorBorder:
                                                    InputBorder.none,
                                                    focusedErrorBorder:
                                                    InputBorder.none,
                                                  ),
                                                  style:Appwidget.LgihtbText(),
                                                  textAlign: TextAlign.end,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 10, 0),
                                              child: FaIcon(
                                                FontAwesomeIcons.search,
                                                color: Color(0xFFCDD9DF),
                                                size: 24,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 20, 0, 0),
                                              child: GetBuilder<CategoryController>(
                                                builder: (categoryController) {
                                                  if (categoryController.isLoading) {
                                                    return Center(child: CircularProgressIndicator());
                                                  }
                                                  return SingleChildScrollView(
                                                    scrollDirection: Axis.horizontal,
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: categoryController.categories.map((category) {
                                                        return GestureDetector(
                                                          onTap: () {
                                                            // Replace 'SubCategoryPage' with your actual page that views the subcategories
                                                            // and pass the selected category to it.
                                                            Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                builder: (context) => SubCategoryPage(category: category),
                                                              ),
                                                            );
                                                          },
                                                          child: Padding(
                                                            padding: const EdgeInsets.only(left: 10),
                                                            child: Container(
                                                              width: 85,
                                                              height: 35,
                                                              child: Center(
                                                                child: Text(
                                                                  category.name,
                                                                  style: Appwidget.primaryText(),
                                                                ),
                                                              ),
                                                              decoration: BoxDecoration(
                                                                color: Colors.white,
                                                                borderRadius: BorderRadius.circular(20.0),
                                                                border: Border.all(
                                                                  color: FlutterFlowTheme.of(context).accent1,
                                                                ),
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                    color: Colors.black12,
                                                                    blurRadius: 4.0,
                                                                    offset: Offset(0, 2),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      }).toList(),
                                                    ),
                                                  );
                                                },
                                              ),


                                          ),
                                          Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                20, 20, 20, 0),
                                            child: Container(
                                              width: double.infinity,
                                              height: MediaQuery.sizeOf(context).height * 0.25,
                                              decoration: BoxDecoration(
                                                color: FlutterFlowTheme.of(context).primaryBackground,
                                              ),
                                              child: Container(
                                                width: double.infinity,
                                                height: 476,
                                                child: Stack(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          0, 0, 0, 0),
                                                      child: PageView(
                                                        scrollDirection:
                                                        Axis.horizontal,
                                                        children: [
                                                          ClipRRect(
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                8),
                                                            child: Image.asset(
                                                              'assets/images/h.png',
                                                              width: MediaQuery.sizeOf(context).width*0.5,
                                                              height: MediaQuery.sizeOf(context).height*0.6,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                          ClipRRect(
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                8),
                                                            child: Image.asset(
                                                              'assets/images/h.png',
                                                              width: 300,
                                                              height: 200,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                          ClipRRect(
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                8),
                                                            child: Image.asset(
                                                              'assets/images/h.png',
                                                              width: 300,
                                                              height: 200,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                      AlignmentDirectional(
                                                          0, 1),
                                                      child: Padding(
                                                        padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0, 0,
                                                            0, 80),

                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),

                                          Container(
                                            width: double.infinity,
                                            height: MediaQuery.sizeOf(context).height*0.30,
                                            decoration: BoxDecoration(
                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                            ),
                                            child: SingleChildScrollView(
                                              child: Column(


                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.all(5.0),
                                                    child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Text("اخترنا لك",
                                                        style: Appwidget.LgihtbText(),)
                                                      ],
                                                    ),
                                                  ),
                                                  Row(
                                                    children: [
                                                      ProHcard(),

                                                    ],
                                                  ),

                                                ],
                                              ),

                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                // Generated code for this Row Widget...
                                const BarWidget(),
                              ],),),),],),),],),),),),),);}
}
