module Foo.BarSpec where

import Test.Hspec
import Foo.Bar

applied = Entity 1 "太郎" Applied
cancelled = cancel applied

spec :: Spec
spec = do
    describe "キャンセル" $ do
        it "ステータスがキャンセルになる" $ do
            status cancelled `shouldBe` Cancelled
        it "名前は変わらない" $ do
            name cancelled `shouldBe` "太郎"
