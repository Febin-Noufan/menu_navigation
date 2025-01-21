import 'package:flutter/material.dart';
import 'package:slide_pages_package/slide_pages_package.dart';
import 'package:template_package/section.dart';
import 'package:template_package/template_code.dart';

class SlideFormApp extends StatelessWidget {
  const SlideFormApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SlideFormNavigator(
          pages: [
            SlideFormPage(
                child: TemplatePage(sections: [
              Section(
                  title: "Hello",
                  content: Center(
                    child: Text("Hello World"),
                  )),
              Section(
                  title: "Hey",
                  content: Center(
                    child: Text("Hello World"),
                  )),
              Section(
                  title: "Kooi",
                  content: Center(
                    child: Text("Hello World"),
                  ))
            ])),
            SlideFormPage(
                child: TemplatePage(sections: [
              Section(
                title: "Name",
                content: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: Text("$index"),
                            title: Text("Hello $index"),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Section(
                  title: "Ag",
                  content: Center(
                    child: Text("Hello World"),
                  )),
              Section(
                  title: "Kooi",
                  content: Center(
                    child: Text("Hello World"),
                  ))
            ])),
            SlideFormPage(
                child: TemplatePage(sections: [
              Section(
                  title: "Hey",
                  content: Center(
                    child: Text("Hello World"),
                  )),
              Section(
                  title: "Kooi",
                  content: Center(
                    child: Text("Hello World"),
                  ))
            ])),
            SlideFormPage(
                child: Center(
              child: Text("Hello"),
            ))
          ],
        ),
      ),
    );
  }
}
