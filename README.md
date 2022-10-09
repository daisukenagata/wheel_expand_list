# wheel_expand_list

https://pub.dev/packages/wheel_expand_list


## Environment

```
  sdk: '>=2.18.1 <3.0.0'
  flutter: ">=2.5.0"
```

## Example

| | | | 
|---|---|---|
| <img width="250" src="https://user-images.githubusercontent.com/16457165/193484605-bca0cda8-933e-4947-a945-4a45cccb9e04.gif">|<img width="250" src="https://user-images.githubusercontent.com/16457165/193484616-84febeae-dd3b-45fd-b14d-69c0a22c702d.gif">|<img width="250" src="https://user-images.githubusercontent.com/16457165/193484744-896eb155-b3ca-4b12-bf27-e61810f9ae0f.gif">|

### 0.1.0 ~
| |
|---|
|<img width="250" src="https://user-images.githubusercontent.com/16457165/194760750-2526ba88-e8e6-4532-9cfc-71effa3eba42.gif">|



## Construction

### Your favorite design will be reflected in the Widget.
```
  MyApp class ....
  var margin = 30.0;
  var fontSize = 30.0;
  
  wheelWidget = WheelWidget(
    marginSet: margin,
    fontSizeSet: fontSize,
  );
  
  WheelWidget class ....
  check is this 'same widget'
  /*
　*You can set your favorite design.
　* */
  @override
  Widget primitiveWidget(
    BuildContext context,
    String text,
    double margin,
    double fontSize,
  ) {
    return Container(
      width: MediaQuery.of(context).size.width - marginSet,
      color: Colors.green,

      /// same widget
      child: Card(
        child: ListTile(
          leading: const Icon(Icons.people),
          title: Text(
            text,
            style: TextStyle(
              fontSize: fontSizeSet,
            ),
          ),
        ),
      ),
    );
  }

  /*
  * Used to pre-size the Widget.
  * */
  @override
  Widget setSizeWidget(
    BuildContext context,
    GlobalKey<State<StatefulWidget>> key,
    String text,
    double margin,
    double fontSize,
  ) {
    return IgnorePointer(
      ignoring: true,
      child: SafeArea(
        child: Container(
          key: key,
          alignment: Alignment.topLeft,
          width: MediaQuery.of(context).size.width - margin,
          child: AnimatedOpacity(
            duration: const Duration(milliseconds: 1),
            opacity: 0,

            /// same widget
            child: Card(
              child: ListTile(
                leading: const Icon(Icons.people),
                title: Text(
                  text,
                  style: TextStyle(
                    fontSize: fontSizeSet,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

```






