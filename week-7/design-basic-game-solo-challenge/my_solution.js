 // Design Basic Game Solo Challenge

 // This is a solo challenge

 // Your mission description:
 // Overall mission: Tic Tac Toe
 // Goals: Get three in a row
 // Characters: Player1,Computer
 // Objects: Player, Board
 // Functions: move, win

 // Pseudocode
 // Create board object that is an array of three arrays
 // If the move is valid(not taken already) Change value, otherwise return that value is not valid
 //If the move is not valid then as for a valid move.
 // DO move until the move is valid
 //

 // Initial Code
 // var Player1 = {
 //     move: function(x, y, board) {
 //         if (board[x][y] !== ("x" || "o")) {
 //             console.log("You can't move there");
 //         } else {
 //             board[x][y] = this.symbol;
 //         }
 //     },

 // };
 // var Player2 = {
 //     move: function(x, y, board) {
 //         if (board[x][y] === ("x" || "o")) {
 //             console.log("You can't move there");
 //         } else {
 //             board[x][y] = this.symbol;
 //         }
 //     },

 // };

 // var Board = {
 //         win: function(symbol) {
 //             var winner = false;
 //             for (var row of this.board) {
 //                 if (this.arrayCheck(row, [symbol, symbol, symbol]))
 //                     winner == true;
 //             }
 //             //test for vertical
 //             var varr = [];
 //             for (var c in this.board) {
 //                 var vert = [];
 //                 for (var index in this.board[c]) {
 //                     vert.push(this.board[index][c]);
 //                 }
 //                 varr.push(vert);
 //             }
 //             for (var i of varr) {
 //                 if (this.arrayCheck(i, [symbol, symbol, symbol])) {
 //                     winner = true;
 //                 }
 //             }
 //             // check diag one
 //             var dia = [];
 //             for (var index in this.board) {
 //                 console.log(index);
 //                 dia.push(this.board[index][index]);
 //             }
 //             if (this.arrayCheck(dia, [symbol, symbol, symbol])) {
 //                 winner = true;
 //             }
 //             var dia = [];
 //             reversedBoard = this.board.reverse()
 //             for (var index in reversedBoard) {
 //                 // console.log(reversedBoard);
 //                 dia.push(reversedBoard[index][index]);
 //             }
 //             if (this.arrayCheck(dia, [symbol, symbol, symbol])) {
 //                 winner = true;
 //             }
 //             console.log(dia);

 //             return winner;

 //         },
 //         board: [
 //             ["", "", "x"],
 //             ["", "x", " "],
 //             ["x", "", ""]
 //         ],
 //         arrayCheck: function(arr1, arr2) {
 //             if (arr1.length !== arr2.length)
 //                 return false;
 //             for (var i = arr1.length; i--;) {
 //                 if (arr1[i] !== arr2[i])
 //                     return false;
 //             }

 //             return true;
 //         },
 //         print: function() {
 //             var formatted_board = "";
 //             for (var index in this.board) {
 //                 formatted_board += this.board[index].join("|");
 //                 // if its not the last line in the board
 //                 if (index != this.board.length - 1) {
 //                     formatted_board += "\n------------\n";
 //                 }
 //             }
 //             console.log(formatted_board);
 //         },
 //     }
 //     // Player1.symbol = "x";
 //     // Player1.move(0, 0, Board.board);
 //     // Board.print();
 //     // console.log("Next move");
 //     // Player2.symbol = "o";
 //     // Player2.move(2, 0, Board.board);
 // Board.print();
 // console.log(Board.win("x"));




 // Refactored Code

 function Player(symbol) {
     this.symbol = symbol
 };

 Player.prototype.move = function(x, y, board) {
     if (board[x][y] === ("x" || "o")) {
         console.log("You can't move there");
     } else {
         board[x][y] = this.symbol;
     }
 };

// I know that there are things I could do to refactor here, but I need to move onto the other assignments.
 var Board = {
         win: function(symbol) {
             var winner = false;
             for (var row of this.board) {
                 if (this.arrayCheck(row, [symbol, symbol, symbol]))
                     winner == true;
             }
             //test for vertical
             var varr = [];
             for (var c in this.board) {
                 var vert = [];
                 for (var index in this.board[c]) {
                     vert.push(this.board[index][c]);
                 }
                 varr.push(vert);
             }
             for (var i of varr) {
                 if (this.arrayCheck(i, [symbol, symbol, symbol])) {
                     winner = true;
                 }
             }
             // check diag one
             var dia = [];
             for (var index in this.board) {
                 console.log(index);
                 dia.push(this.board[index][index]);
             }
             if (this.arrayCheck(dia, [symbol, symbol, symbol])) {
                 winner = true;
             }
             // check diag reverse
             var dia = [];
             reversedBoard = this.board.reverse()
             for (var index in reversedBoard) {
                 dia.push(reversedBoard[index][index]);
             }
             if (this.arrayCheck(dia, [symbol, symbol, symbol])) {
                 winner = true;
             }
             console.log(dia);

             return winner;

         },
         board: [
             ["", "", ""],
             ["", "", ""],
             ["", "", ""]
         ],
         arrayCheck: function(arr1, arr2) {
             if (arr1.length !== arr2.length)
                 return false;
             for (var i = arr1.length; i--;) {
                 if (arr1[i] !== arr2[i])
                     return false;
             }

             return true;
         },
         print: function() {
             var formatted_board = "";
             for (var index in this.board) {
                 formatted_board += this.board[index].join("|");
                 // if its not the last line in the board
                 if (index != this.board.length - 1) {
                     formatted_board += "\n------------\n";
                 }
             }
             console.log(formatted_board);
         },
     }
 Player1 = new Player("x");
 Player2 = new Player("o");
 Player1.move(0, 0, Board.board);
 Board.print();
 console.log("Next move");
 Player2.move(2, 0, Board.board);
 Board.print();
 console.log(Board.win("x"));




 // Reflection
 //What was the most difficult part of this challenge?
 // I think the most difficult part of this assignment was checking to see if I had completed all the requirements for the assignment.
 // Also I think figuring out what I wanted my objects to be and how I wanted the structure to look.
// What did you learn about creating objects and functions that interact with one another?
// I wish I remembered the constructor version of making objects when I started the assignment. I ended up using it in the refactored version.
// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// I know that there are a couple functions I could have used, maybe the filter function and some others. However I needed to move onto another assignments. I did refactor using the constructor and prototypes.
// How can you access and manipulate properties of objects?
// You use dot notation or bracket notation or they can be passed in as prototypes when using the constructor version. 


