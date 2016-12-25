foo :: Maybe Int
foo = do
    x <- Just 5
    y <- Just 2
    return $ x + y

bar :: Maybe Int
bar = do
    x <- Just 5
    y <- Nothing
    return $ x + y

-- return はIO専用だと思っていた

e :: Either String Int
e = do
    x <- Right 5
    Left "error"
    y <- Right 2
    return $ x + y

baz :: IO Int
baz = do
    print "hoge"
    return 5

poo :: Maybe Int
poo = do
    return 5

zak :: IO Int
zak = do
    print "hoge"
    print $ Just 5
    return 5

main :: IO ()
main = do
    print 5

-- 今回は使うのが目的なので則はスキップ
-- たとえ話や絵より、型で見るのが一番理解が早い気がした

-- mainは IO () の文脈だから、Nothingを扱っても終わらない
