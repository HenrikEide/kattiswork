import Data.Maybe
import Data.List
import Data.Time
main = do
    a <- readLn :: IO Int
    putStr $ angleToTime a

angleToTime :: Int -> String
angleToTime a = formatTime defaultTimeLocale "%H:%M" $ UTCTime (fromGregorian 2014 1 1) (secondsToDiffTime $ 3600 * fromIntegral h + 60 * fromIntegral m)
    where
        l = [0, 30, 5, 35, 10, 40, 15, 45, 20, 50, 25, 35]
        m' = flip div 55 $ a + (3600 * fromJust (elemIndex (mod a 55) l))
        (h, m) = m' `divMod` 60