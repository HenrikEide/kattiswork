import Data.List
main = interact $ \x -> if isInfixOf "COV" x then "Veikur!" else "Ekki veikur!"