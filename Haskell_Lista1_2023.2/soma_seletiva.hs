isNumber :: Char -> Bool
isNumber x = x `elem` ['0'..'9']

sumNumbers :: String -> Int
sumNumbers = foldl (\acc x -> if isNumber x then acc + (read [x] :: Int) else acc) 0

main :: IO ()
main = do
    a <- getLine
    let result = sumNumbers a
    print result
