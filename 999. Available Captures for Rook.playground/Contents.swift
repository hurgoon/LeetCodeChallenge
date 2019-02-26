/*

 999. Available Captures for Rook
 
 On an 8 x 8 chessboard, there is one white rook.  There also may be empty squares, white bishops, and black pawns.  These are given as characters 'R', '.', 'B', and 'p' respectively. Uppercase characters represent white pieces, and lowercase characters represent black pieces.
 
 The rook moves as in the rules of Chess: it chooses one of four cardinal directions (north, east, west, and south), then moves in that direction until it chooses to stop, reaches the edge of the board, or captures an opposite colored pawn by moving to the same square it occupies.  Also, rooks cannot move into the same square as other friendly bishops.
 
 Return the number of pawns the rook can capture in one move.
 
 Example 1:
 Input: [
 [".",".",".",".",".",".",".","."],
 [".",".",".","p",".",".",".","."],
 [".",".",".","R",".",".",".","p"],
 [".",".",".",".",".",".",".","."],
 [".",".",".",".",".",".",".","."],
 [".",".",".","p",".",".",".","."],
 [".",".",".",".",".",".",".","."],
 [".",".",".",".",".",".",".","."]]
 Output: 3
 Explanation:
 In this example the rook is able to capture all the pawns.
 
 Example 2:
 Input: [
 [".",".",".",".",".",".",".","."],
 [".","p","p","p","p","p",".","."],
 [".","p","p","B","p","p",".","."],
 [".","p","B","R","B","p",".","."],
 [".","p","p","B","p","p",".","."],
 [".","p","p","p","p","p",".","."],
 [".",".",".",".",".",".",".","."],
 [".",".",".",".",".",".",".","."]]
 Output: 0
 Explanation:
 Bishops are blocking the rook to capture any pawn.
 
 Example 3:
 Input: [
 [".",".",".",".",".",".",".","."],
 [".",".",".","p",".",".",".","."],
 [".",".",".","p",".",".",".","."],
 ["p","p",".","R",".","p","B","."],
 [".",".",".",".",".",".",".","."],
 [".",".",".","B",".",".",".","."],
 [".",".",".","p",".",".",".","."],
 [".",".",".",".",".",".",".","."]]
 Output: 3
 Explanation:
 The rook can capture the pawns at positions b5, d6 and f5.
 
 Note:
 board.length == board[i].length == 8
 board[i][j] is either 'R', '.', 'B', or 'p'
 There is exactly one cell with board[i][j] == 'R'
 
 */

import UIKit

class Solution {  // 12 ms    19.6 MB
    func numRookCaptures(_ board: [[Character]]) -> Int {
        
        // 1. checking Position of "R"
        var rookPosition: (i: Int?, j: Int?)
        
        for i in 0...7 {
            
            if board[i].contains("R") {
                rookPosition.i = i
                rookPosition.j = board[i].firstIndex(of: "R")
            }
        }
        
        // 2. searching proper "p"
        var numberOfPawn = 0
        
        for i in (0..<rookPosition.i!).reversed() { // North side
            
            if board[i][rookPosition.j!] == "B" { // Checking Bishop
                break
            } else if board[i][rookPosition.j!] == "p" {
                numberOfPawn += 1
                break
            }
        }
        
        for i in (rookPosition.i! + 1)...7 { // South side
            
            if board[i][rookPosition.j!] == "B" {
                break
            } else if board[i][rookPosition.j!] == "p" {
                numberOfPawn += 1
                break
            }
        }
        
        for j in (0..<rookPosition.j!).reversed() { // West side
            
            if board[rookPosition.i!][j] == "B" {
                break
            } else if board[rookPosition.i!][j] == "p" {
                numberOfPawn += 1
                break
            }
        }
        
        for j in (rookPosition.j! + 1)...7 { // East side
            
            if board[rookPosition.i!][j] == "B" {
                break
            } else if board[rookPosition.i!][j] == "p" {
                numberOfPawn += 1
                break
            }
        }
        
        return numberOfPawn
    }
}

let a = Solution()
a.numRookCaptures([
    [".",".",".",".",".",".",".","."],
    [".",".",".","p",".",".",".","."],
    [".",".",".","p",".",".",".","."],
    ["p","p",".","R",".","p","B","."],
    [".",".",".",".",".",".",".","."],
    [".",".",".","B",".",".",".","."],
    [".",".",".","p",".",".",".","."],
    [".",".",".",".",".",".",".","."]])

let sample = [[1,2,3],[4,5,6]]
sample[1].firstIndex(of: 6)
