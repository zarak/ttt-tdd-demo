import Test.Hspec
import GameState

main :: IO ()
main = hspec $ do
    describe "GameState" $ do
        context "initBoard" $ do
            it "should initialize the board" $ do
                initBoard `shouldBe` "   "
                                   ++"   "
                                   ++"   "

        context "render" $ do
            it "should display the board" $ do
                render "XX  OO   " `shouldBe` " X | X | 2 \n\
                                              \ 3 | O | O \n\
                                              \ 6 | 7 | 8 \n"
        context "move" $ do
            it "should make a move" $ do
                move (GameState "X XOOOXO" 'X') 1 `shouldBe` GameState "XXXOOOXO" 'O'
