// import 'package:flutter/material.dart';
// import 'dart:convert';
// import 'package:webview_flutter/webview_flutter.dart';
//  late  bool isweb=true;
// class c extends StatefulWidget {
//   const webviewPage({super.key});

//   @override
//   State<webviewPage> createState() => _webviewPageState();
// }

// class _webviewPageState extends State<webviewPage> {
//   late final  WebViewController controller;
//  late final  WebViewController controller1;
//   double progress=0;
//   bool isError=false;
//   bool isLoad=true;
//   List<int> arr = [0,0,0,0,0];
 
//   List<dynamic> msg=['....','....','....','....','....'];
//    bool isPop=true;
//   bool mountes=true;
//   bool isyES=false;
//   String Url="https://flutter.dev";
 
//   @override
//   void initState() {
//     super.initState();
//   //    controller1 = WebViewController()
//   // ..setJavaScriptMode(JavaScriptMode.unrestricted)
//   // ..loadRequest(Uri.parse('https://flutter.dev'));
//   //   controller = WebViewController()
//   // ..setJavaScriptMode(JavaScriptMode.unrestricted)
//   // ..setBackgroundColor(const Color(0x00000000))
//   // ..addJavaScriptChannel("myChannel",onMessageReceived:(JavaScriptMessage message){
//   //   print("oo");
   
//   //   setMessage(message.message);
//   // })
//   // ..setNavigationDelegate(
//   //   NavigationDelegate(
//   //     onProgress: (int progress) {
//   //       // Update loading bar.
//   //         this.progress=progress/100;
//   //     },
//   //     onPageStarted: (String url) {
//   //        setState(() {
//   //                     isLoad=true;
//   //                     isError=false;
//   //                   });
//   //     },
//   //     onPageFinished: (String url) {
//   //        setState(() {
//   //                      isLoad=false;
                      
//   //                      injectJavascript(controller);
//   //                   });
//   //     },
      
//   //     onWebResourceError: (WebResourceError error) {
//   //          setState(() {
//   //                     isLoad=false;
//   //                     isError=true;
//   //                   });
//   //     },
//   //     onNavigationRequest: (NavigationRequest request) {
//   //       if (request.url.startsWith('https://www.youtube.com/')) {
//   //         return NavigationDecision.prevent;
//   //       }
//   //       return NavigationDecision.navigate;
//   //     },
      
      
//   //   ),
//   // )
//   // ..loadRequest(Uri.parse('https://flutter.dev'));
    
//    }
//   setMessage(String jsMes){
//   if(mounted){
//     setState(() {
//       print("/////////////////////////");
//       print(jsMes);
//       msg=jsonDecode(jsMes);
//       print(msg[0],);
//       print(msg[1]);
//       isyES=true;
      
//     });
//   }
// }
// late String current;
// getCurrentUrl() async{
//   current=(await controller.currentUrl())!;
//   return current;
// }
// injectJavascript(WebViewController con) async{
  
//   if(Url==''){
//     setState(() {
  
//       isyES=true;
//     });
//   }
//   controller.runJavascript(''' 
//   var btnElements = document.querySelectorAll('a.btn.top-level');
//   var btnList = [];

//   btnElements.forEach(function(btnElement) {
//   var btnContent = btnElement.textContent;
//   btnList.push(btnContent);
// });

// Mychannel.postMessage(JSON.stringify(btnList));
//   ''');
//   controller.runJavascript(''' 
//     const div = document.querySelector('.icon-btn.hamburger');
//     div.style.display = 'none';
//   ''');
// }
//   @override
  
//   Widget build(BuildContext context) {
    
//     return 
    
//     WillPopScope(
//       onWillPop: ()async{
//         if(await controller.canGoBack()){
//              // for saty in  App
//           controller.goBack();
          
          
//           return false;
//         }else{
//           // leave App

//           return true;
//         }
     
        
//       },
//       child: Scaffold(
//         appBar:  AppBar(
//           title: Text('Hamburger Menu Example'),
//           leading: Builder(
//             builder: (BuildContext context) {
//               return IconButton(
//                 icon: Icon(Icons.menu),
//                 onPressed: () {
//                   Scaffold.of(context).openDrawer();
//                 },
//               );
//             },
//           ),
//         ),
       
//          drawer: !isError? 
//          Drawer(
//           child: Builder(
            
//             builder: (context) {
//               return ListView(
//                 padding: EdgeInsets.zero,
//                 children: <Widget>[
//                   DrawerHeader(
//                     decoration: BoxDecoration(
//                       color: Colors.blue,
//                     ),
//                     child: Text(
//                       'Menu',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 24,
//                       ),
//                     ),
//                   ),
                  
//                   Container(
//   color:arr[0]==0? Colors.white:Colors.blue,
//   child: GestureDetector(
//     onTap: () {
//       // Handle option 2 selection
//       setState(() {
//         arr.fillRange(0, arr.length,0);
//         arr[0]=1;
//          Url=',,,';
//       });
//          try{
//           controller.loadUrl(Uri.parse("https://flutter.dev/multi-platform").toString());}
//       catch(e){print("the error is"+e.toString());}
    
//       print('Option 2 selected');
//     },
//     child: ListTile(
//       title: Text(isweb && msg.isNotEmpty ? msg[0].toString().trim() : "multi-platform"),
//     ),
//   ),
// ),Container(
//   color:arr[1]==0? Colors.white:Colors.blue,
//   child: GestureDetector(
//     onTap: () {
//       // Handle option 2 selection
//       setState(() {
//         arr.fillRange(0, arr.length,0);
//         arr[1]=1;
//           Url=',,,';
//       });
//         try{
//        controller.loadUrl(Uri.parse("https://flutter.dev/development").toString());}
//       catch(e){print("the error is"+e.toString());}
     
     
//       print('Option 2 selected');
//     },
//     child: ListTile(
//       title: Text(isweb &&msg.isNotEmpty ? msg[1].toString().trim() : "development"),
//     ),
//   ),
// ),Container(
//   color:arr[2]==0? Colors.white:Colors.blue,
//   child: GestureDetector(
//     onTap: () {
//       // Handle option 2 selection
//       try{
//        controller.loadUrl(Uri.parse("https://flutter.dev/ecosystem").toString());}
//       catch(e){print("the error is"+e.toString());}
     
//       print('Option 2 selected');
//       setState(() {
//         arr.fillRange(0, arr.length,0);
//         arr[2]=1;
//         Url=',,,';
//       });
//     },
//     child: ListTile(
//       title: Text(isweb &&msg.isNotEmpty ? msg[2].toString().trim() : "ecosystem"),
//     ),
//   ),
// ),Container(
//   color:arr[3]==0? Colors.white:Colors.blue,
//   child: GestureDetector(
//     onTap: () {
//       // Handle option 2 selection
//       setState(() {
//         arr.fillRange(0, arr.length,0);
//         arr[3]=1;
//          Url=',,,';
//       });
//        try{
//       controller.loadUrl(Uri.parse("https://flutter.dev/showcase").toString());}
//       catch(e){print("the error is"+e.toString());}
      
//       print('Option 2 selected');
//     },
//     child: ListTile(
//       title: Text(isweb &&msg.isNotEmpty? msg[3].toString().trim() : "showcase"),
//     ),
//   ),
// ),Container(
//   color:arr[4]==0? Colors.white:Colors.blue,
//   child: GestureDetector(
//     onTap: () {
//       // Handle option 2 selection
//       setState(() {
//         arr.fillRange(0, arr.length,0);
//         arr[4]=1;
//         Url='';
//       });
//       try{
//       controller.loadUrl(Uri.parse("https://flutter.dev/docs").toString());}
//       catch(e){print("the error is"+e.toString());}
//       print('Option 2 selected');
//     },
//     child: ListTile(
//       title: Text(isweb &&msg.isNotEmpty? msg[4].toString().trim() : "docs"),
//     ),
//   ),
// ),
//                 ],
//               );
//             }
//           ),
//         ):Drawer(
//           child: Builder(
            
//             builder: (context) {
//               return ListView(
//                 padding: EdgeInsets.zero,
//                 children: <Widget>[
//                   DrawerHeader(
//                     decoration: BoxDecoration(
//                       color: Colors.blue,
//                     ),
//                     child: Text(
//                       'no internet',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 24,
//                       ),
//                     ),
//                   ),
                 
//                 ],
//               );
//             }
//           ),
//         ),
                  
//         body:Stack(
//           children: [
           
//           //  WebViewWidget(controller: controller),
//             if(!isError) 
//           Offstage(
//             offstage:!isyES,
//             child: WebView(
//             initialUrl:Url,
//             javascriptMode: JavascriptMode.unrestricted,
//             onWebViewCreated: (WebViewController webViewController) {
//               this.controller=webViewController;
//               controller.loadUrl(Uri.parse("https://flutter.dev/docs").toString(),headers:{});
              
           
              
          
                   
//               // controller.complete(webViewController);
//             },
//             onProgress: (int progress) {
//               setState(() {
//                 progress=progress;
//               });
//               print('WebView is loading (progress : $progress%)');
//             },
//             javascriptChannels: <JavascriptChannel>{
//               JavascriptChannel(name:"Mychannel",onMessageReceived:(JavascriptMessage message){
//               print("oo");
             
//               setMessage(message.message);
//             })
//               // _toasterJavascriptChannel(context),
//             },
//             navigationDelegate: (NavigationRequest request) {
//               if (request.url.startsWith('https://www.youtube.com/')) {
//                 print('blocking navigation to $request}');
//                 return NavigationDecision.prevent;
//               }
//               print('allowing navigation to $request');
//               return NavigationDecision.navigate;
//             },
//             onPageStarted: (String url) {
//               setState(() {
//                 isyES=false;
//                         isLoad=true;
//                         isError=false;
//                       });
              
//               print('Page started loading: $url');
//             },
//             onPageFinished: (String url) {
//                  setState(() {
//                          isLoad=false;
//                           injectJavascript(controller);
//                       });
//               print('Page finished loading: $url');
//             },
//             onWebResourceError:(_){
//               setState(() {
//                         isLoad=false;
//                         isError=true;
//                       });
//             },
//             gestureNavigationEnabled: true,
//             backgroundColor: const Color(0x00000000),
//                   ),
//           ),
      
//             if(isLoad) Center(child:CircularProgressIndicator()),
//             if(isError) Center(child:Text("No Internet Connection"))
//           ],
//         ),
       
//       ),
//     );
//   }}
  
  
