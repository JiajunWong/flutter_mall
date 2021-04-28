import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mall/network/models/advertise.dart';
// import 'dart:ui' as ui;
// import 'dart:html';

class AdvertiseBanner extends StatefulWidget {
  final List<Advertise> advertises;

  AdvertiseBanner({Key key, this.advertises}) : super(key: key);

  _AdvertiseBannerState createState() => _AdvertiseBannerState();
}

class _AdvertiseBannerState extends State<AdvertiseBanner> {
  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return PageView(
              controller: _controller,
              children: widget.advertises
                  .map((advertise) => _AdvertiseView(advertise))
                  .toList(),
            );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class _AdvertiseView extends StatelessWidget {
  final Advertise _advertise;

  _AdvertiseView(this._advertise);

  @override
  Widget build(BuildContext context) {
    // ui.platformViewRegistry.registerViewFactory(
    //     'hello-world-html',
    //         (int viewId) => IFrameElement()
    //       ..width = '640'
    //       ..height = '360'
    //       ..src = _advertise.pic
    //       ..style.border = 'none');

    return Stack(
      children: [
        Center(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Image.network(_advertise.pic),
            // child: HtmlElementView(viewType: 'hello-world-html')
          ),
        ),
        // Positioned.fill(child: Container(color: Colors.grey.withOpacity(0.2))),
        Column(
          children: <Widget>[
            Spacer(),
            Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  color: Colors.grey.withOpacity(0.8),
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    _advertise.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                )),
          ],
        )
      ],
    );
  }
}
