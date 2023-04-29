import Data.List
import Data.Text (chunksOf, pack, Text, unpack)
import Control.Exception
main = interact $ unlines . map (concat . reverse . transpose . map unpack . to2D) . tail . lines

to2D :: [Char] -> [Text]
to2D xs = chunksOf  (round (sqrt (fromIntegral (length xs)))) (pack xs)

    
locate :: String -> String -> [(Int, Int)]
locate x ys = map (\z -> (z, z + length x)) (withInd x ys 0)

withInd :: String -> String -> Int -> [Int]
withInd x [] i = []
withInd x ys i 
    | isprefix x ys = i : withInd x (drop len ys) (i+len)
    | otherwise = withInd x (drop 1 ys) (i+1)
    where len = length x


isprefix :: String -> String -> Bool
isprefix xs ys = length xs <= length ys && all (\(x,y) -> x==y) (zip xs ys)


findWord :: String -> [(String, [String])] -> String
findWord _ [] = ""
findWord x (y:ys) | elem x (snd y) = fst y
                  | otherwise = findWord x ys

ffindWord :: String -> [(String, [String])] -> String
ffindWord x ys = fst $ head $ filter (elem x . snd) ys

translate :: String -> String
translate x  = ffindWord x dictionary

replace :: [(Int, Int)] -> String -> String
replace [] y = []
replace ((x,z):xs) y = take x y ++ trst ++ replace xs y
    where
        trst = 
            onException (translate (take (z-x) (drop x y))) except :: IO a
            where
                except :: SomeException -> IO ()
                except ex = replicate (x-z) '*'
            -- s -> s

dictionary = [
        ("bb",["Big Brother"]),
        ("dep",["department"]),
        ("sec", ["Sector"]),
        ("doubleplusgood",["excellent", "fabulous", "fantastic", "best"]),
        ("doubleplusungood", ["terrible", "horrible", "worst"]),
        ("Ingsoc", ["English Socialism"]),
        ("joycamp", ["labour camp"]),
        ("Oldspeak", ["Standard English", "English"]),
        ("oldthink", ["objectivity", "rationalism", "democracy"]),
        ("thinkpol", ["The Thought Police"]),
        ("prolefeed", ["Popular culture", "pop-culture"]),
        ("crimethink", ["liberty", "equality", "privacy", "thoughtcrime"]),
        ("fullwise", ["fully", "completely", "totally"]),
        ("goodthink", ["political orthodoxy", "politically orthodox thought", "orthodox thought"]),
        ("goodwise", ["well"]),
        ("ownlife", ["anti-social tendency", "solitude", "individualism"]),
        ("plusgood", ["very good", "great"]),
        ("plusungood", ["very bad"]),
        ("misprint", ["error", "misprediction"]),
        ("Miniluv", ["The Ministry of Love"]),
        ("Minipax", ["The Ministry of Peace"]),
        ("Minitrue", ["The Ministry of Truth"]),
        ("Miniplenty", ["The Ministry of Plenty"]),
        ("bellyfeel", ["blind, enthusiastic acceptance"]),
        ("doublethink", ["believing two contradictory ideas"]),
        ("duckspeak", ["vocal support of political orthodoxies"]),
        ("un", ["not"]),
        ("peace", ["war"]),
        ("strength", ["ignorance"]),
        -- The next line contains a list of forbidden words that don't have a translation to Newspeak, these should be replaced with '*'s
        ("",["freedom", "revolution", "fun", "diary", "surveillance", "Great Britain", "Winston Smith", "Julia"])
        ]