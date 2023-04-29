
main = interact (countDupes . init . tail . lines)

countDupes xs = show $ length xs - read (maximum xs)


-- altsol xs = countDupes2 xs []

-- countDupes2 [] _ = []
-- countDupes2 (x:xs) ns n
--     | x `elem` ns = 