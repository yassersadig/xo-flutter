import 'package:flutter/material.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}


class AppState extends State<App>{  

  List<List<String>> grid;
  bool switchPlayer;
  bool gameOver;
  String winner;
  int steps;

  @override
  void initState() {
    grid = [
      ['','',''],
      ['','',''],
      ['','','']
    ];
    switchPlayer = true;
    gameOver = false;
    winner = '';
    steps = 0;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: home(),
      ),
    );
  }

  Widget home(){
    if(gameOver == false){
      return Center(
        child: Container(
          height: 300.0,
          width: 300.0,
          child: Column(
            children: <Widget>[
              firstRow(),
              secondRow(),
              thirdRow()
            ],
          ),
        ),
      );
    } else {
      return Center(
        child: Container(
          height: 200.0,
          width: 300.0,
          child:Column(
            children: <Widget>[
              Text(
                winner,
                textScaleFactor: 3.0,
              ),
              Container(
                margin: EdgeInsets.only(top: 16.0, bottom: 16.0),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    grid = [
                      ['','',''],
                      ['','',''],
                      ['','','']
                    ];
                    switchPlayer = true;
                    gameOver = false;
                    winner = '';
                    steps = 0;
                  });
                },
                child: Icon(
                  Icons.replay,
                  size: 100.0,
                  ),
              ),
            ],
          ),
        )
      );
    }
  }

  Widget firstRow(){
    return Container(
      height:100.0,
      child: Row(
        children: <Widget>[
          GestureDetector(
            onTap: () => onTap(0,0),
            child: Container(
              child: Center(
                child: Text(
                  grid[0][0],
                  textScaleFactor: 4.0,),
              ),
              width: 100.0,
              height: 100.0,
              decoration: ShapeDecoration(
                shape: Border(
                  bottom: BorderSide(
                    color: Colors.white,
                    width: 5.0
                  ),
                  right: BorderSide(
                    color: Colors.white,
                    width: 5.0,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => onTap(0,1),
            child:Container(
              child: Center(
                child: Text(
                  grid[0][1],
                  textScaleFactor: 4.0,),
              ),
              width: 100.0,
              height: 100.0,
              decoration: ShapeDecoration(
                shape: Border(
                  bottom: BorderSide(
                    color: Colors.white,
                    width: 5.0
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => onTap(0,2),
            child:Container(
              child: Center(
                child: Text(
                  grid[0][2],
                  textScaleFactor: 4.0,),
              ),
              width: 100.0,
              height: 100.0,
              decoration: ShapeDecoration(
                shape: Border(
                  bottom: BorderSide(
                    color: Colors.white,
                    width: 5.0
                  ),
                  left: BorderSide(
                    color: Colors.white,
                    width: 5.0,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget secondRow(){
    return Container(
      height:100.0,
      child: Row(
        children: <Widget>[
          GestureDetector(
            onTap: () => onTap(1,0),
            child:Container(
              child: Center(
                child: Text(
                  grid[1][0],
                  textScaleFactor: 4.0,),
              ),
              width: 100.0,
              height: 100.0,
              decoration: ShapeDecoration(
                shape: Border(
                  bottom: BorderSide(
                    color: Colors.white,
                    width: 5.0
                  ),
                  right: BorderSide(
                    color: Colors.white,
                    width: 5.0,
                  )
                )
              ),
            ),
          ),
          GestureDetector(
            onTap: () => onTap(1,1),
            child:Container(
              child: Center(
                child: Text(
                  grid[1][1],
                  textScaleFactor: 4.0,),
              ),
              width: 100.0,
              height: 100.0,
              decoration: ShapeDecoration(
                shape: Border(
                  bottom: BorderSide(
                    color: Colors.white,
                    width: 5.0
                  ),
                )
              ),
            ),
          ),
          GestureDetector(
            onTap: () => onTap(1,2),
            child:Container(
              child: Center(
                child: Text(
                  grid[1][2],
                  textScaleFactor: 4.0,),
              ),
              width: 100.0,
              height: 100.0,
              decoration: ShapeDecoration(
                shape: Border(
                  bottom: BorderSide(
                    color: Colors.white,
                    width: 5.0
                  ),
                  left: BorderSide(
                    color: Colors.white,
                    width: 5.0,
                  )
                )
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget thirdRow(){
    return Container(
      height:100.0,
      child: Row(
        children: <Widget>[
          GestureDetector(
            onTap: () => onTap(2,0),
            child:Container(
              child: Center(
                child: Text(
                  grid[2][0],
                  textScaleFactor: 4.0,),
              ),
              width: 100.0,
              height: 100.0,
              decoration: ShapeDecoration(
                shape: Border(
                  right: BorderSide(
                    color: Colors.white,
                    width: 5.0,
                  )
                )
              ),
            ),
          ),
          GestureDetector(
            onTap: () => onTap(2,1),
            child:Container(
              child: Center(
                child: Text(
                  grid[2][1],
                  textScaleFactor: 4.0,),
              ),
              width: 100.0,
              height: 100.0,
              color: Colors.transparent,
            ),
          ),
          GestureDetector(
            onTap: () => onTap(2,2),
            child:Container(
              child: Center(
                child: Text(
                  grid[2][2],
                  textScaleFactor: 4.0,),
              ),
              width: 100.0,
              height: 100.0,
              decoration: ShapeDecoration(
                shape: Border(
                  left: BorderSide(
                    color: Colors.white,
                    width: 5.0,
                  )
                )
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onTap (int x, int y) {
    input(x, y);
    check(x, y);
  }

  void input(int x, int y){
    if (grid[x][y] == '') {
      if(switchPlayer) {
        setState(() {
          grid[x][y] = 'X';
          switchPlayer = false;
          steps++;
          }
        );
       } else{
         setState(() {
           grid[x][y] = 'O';
           switchPlayer = true;
           steps++;
          }
         );
       }
    }
  }

  void check(int x, int y) {

    switch (x) {
      case 0:
        switch (y) {
          case 0:
            if(
              grid[x][y] == grid[x][y+1] && grid[x][y] == grid[x][y+2]
              || grid[x][y] == grid[x+1][y] && grid[x][y] == grid[x+2][y]
              || grid[x][y] == grid[x+1][y+1] && grid[x][y] == grid[x+2][y+2]) {
              setState(() {
                winner = switchPlayer? "The Winner is O" : "The Winner is X";
                gameOver = true;
              });
            }
            break;

          case 1:
            if(
              grid[x][y] == grid[x][y+1] && grid[x][y] == grid[x][y-1]
              || grid[x][y] == grid[x+1][y] && grid[x][y] == grid[x+2][y]) {
              setState(() {
                winner = switchPlayer? "The Winner is O" : "The Winner is X";
                gameOver = true;
              });
            }
            break;

          case 2:
            if(
              grid[x][y] == grid[x][y-1] && grid[x][y] == grid[x][y-2]
              || grid[x][y] == grid[x+1][y] && grid[x][y] == grid[x+2][y]
              || grid[x][y] == grid[x+1][y-1] && grid[x][y] == grid[x+2][y-2]) {
              setState(() {
                winner = switchPlayer? "The Winner is O" : "The Winner is X";
                gameOver = true;
              });
            }
            break;
        }
        break;

      case 1:
        switch (y) {
          case 0:
            if(
              grid[x][y] == grid[x][y+1] && grid[x][y] == grid[x][y+2]
              || grid[x][y] == grid[x+1][y] && grid[x][y] == grid[x-1][y]) {
              setState(() {
                winner = switchPlayer? "The Winner is O" : "The Winner is X";
                gameOver = true;
              });
            }
            break;

          case 1:
            if(
              grid[x][y] == grid[x][y+1] && grid[x][y] == grid[x][y-1]
              || grid[x][y] == grid[x+1][y] && grid[x][y] == grid[x-1][y]
              || grid[x][y] == grid[x+1][y+1] && grid[x][y] == grid[x-1][y-1]
              || grid[x][y] == grid[x-1][y+1] && grid[x][y] == grid[x+1][y-1]) {
              setState(() {
                winner = switchPlayer? "The Winner is O" : "The Winner is X";
                gameOver = true;
              });
            }
            break;

          case 2:
            if(
              grid[x][y] == grid[x][y-1] && grid[x][y] == grid[x][y-2]
              || grid[x][y] == grid[x+1][y] && grid[x][y] == grid[x-1][y]) {
              setState(() {
                winner = switchPlayer? "The Winner is O" : "The Winner is X";
                gameOver = true;
              });
            }
            break;
        }
        break;
      
      case 2:
        switch (y) {
          case 0:
            if(
              grid[x][y] == grid[x][y+1] && grid[x][y] == grid[x][y+2]
              || grid[x][y] == grid[x-1][y] && grid[x][y] == grid[x-2][y]
              || grid[x][y] == grid[x-1][y+1] && grid[x][y] == grid[x-2][y+2]) {
              setState(() {
                winner = switchPlayer? "The Winner is O" : "The Winner is X";
                gameOver = true;
              });
            }
            break;

          case 1:
            if(
              grid[x][y] == grid[x][y+1] && grid[x][y] == grid[x][y-1]
              || grid[x][y] == grid[x-1][y] && grid[x][y] == grid[x-2][y]) {
              setState(() {
                winner = switchPlayer? "The Winner is O" : "The Winner is X";
                gameOver = true;
              });
            }
            break;

          case 2:
            if(
              grid[x][y] == grid[x][y-1] && grid[x][y] == grid[x][y-2]
              || grid[x][y] == grid[x-1][y] && grid[x][y] == grid[x-2][y]
              || grid[x][y] == grid[x-1][y-1] && grid[x][y] == grid[x-2][y-2]) {
              setState(() {
                winner = switchPlayer? "The Winner is O" : "The Winner is X";
                gameOver = true;
              });
            }
            break;
        }
        break;
    }

    if (steps == 9 && winner == ''){
      setState(() {
        winner = "That's a Draw!!";
        gameOver = true;
      });
    }
  }
}