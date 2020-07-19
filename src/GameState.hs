module GameState where

import Data.List.Split
import Data.List

type Board = String
type Player = Char

data GameState = 
    GameState Board Player 
    deriving (Show, Eq)

initBoard :: Board
initBoard = replicate 9 ' '

render :: Board -> String
render board =
    unlines . map (intercalate "|") . chunksOf 3 .
    map (\(i, c) -> " " ++ (if c == ' ' then show i else [c]) ++ " ") $
    zip [0..] board

move :: GameState -> Int -> GameState
move = undefined
