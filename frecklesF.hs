import qualified Data.List as List
import Data.Set (Set)
import qualified Data.Set as Set
import Data.Maybe
import Text.Printf

-- Kruskal attempt, didnt work out

type Point = (Double, Double)

type Edge = (Double, Point, Point)


distance :: Point -> Point -> Double
distance (x1, y1) (x2, y2) = sqrt ((x1 - x2) ** 2 + (y1 - y2) ** 2)

find :: Set Point -> Point -> Point
find parents p
    | Set.null parents = p 
    | otherwise = find parents parentP
    where
        parentP = if Set.member p parents then Set.findMin parents else p

union :: Set.Set Point -> Point -> Point -> Set.Set Point
union parents p1 p2
    | Set.null parents = parents  -- No need to perform union on an empty set
    | otherwise = Set.map updateParent parents
    where
        parent1 = find parents p1
        parent2 = find parents p2
        newParent = if parent1 < parent2 then parent1 else parent2
        updateParent p
            | p == parent1 || p == parent2 = newParent
            | otherwise = p


kruskal :: [Point] -> Double
kruskal vertices = totalDistance
    where
        initialParents = Set.fromList vertices
        edges = [(distance p1 p2, p1, p2) | (p1, p2) <- distinctPairs vertices]
        (_, totalDistance) = foldl processEdge (initialParents, 0) $ List.sortOn (\(x,_,_) -> x) edges

        processEdge (parents, dist) (w, p1, p2)
            | parent1 /= parent2 = (union parents p1 p2, dist + w)
            | otherwise = (parents, dist)
            where
                parent1 = find parents p1
                parent2 = find parents p2

distinctPairs :: [a] -> [(a, a)]
distinctPairs [] = []
distinctPairs (x:xs) = [(x, y) | y <- xs] ++ distinctPairs xs

main :: IO ()
main = do
    let vertices = [(1,1), (2,2), (2,4)]
    let totalDistance = kruskal vertices
    let p1 = (1, 1)
    let p2 = (2, 2)
    putStrLn $ "Distance between " ++ show p1 ++ " and " ++ show p2 ++ ": " ++ show (distance p1 p2)
    mapM_ (\(x, y) -> putStrLn $ show x ++ " - " ++ show y) (distinctPairs vertices)
    putStrLn $ formatDist totalDistance

formatDist :: Double -> String
formatDist = printf "%.2f"