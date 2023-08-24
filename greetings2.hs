main = interact (unlines . map hey . lines)

hey xs = "h" ++ replicate ((length xs - 2) * 2) 'e' ++ "y"
