import Data.List
import qualified Data.Set as Set

-- Also unresolved

-- Type synonym for representing coordinates
type Point = (Double, Double)

-- Type synonym for representing an edge as (weight, vertex1, vertex2)
type Edge = (Double, Point, Point)

-- Calculate the Euclidean distance between two points
distance :: Point -> Point -> Double
distance (x1, y1) (x2, y2) = sqrt ((x1 - x2) ** 2 + (y1 - y2) ** 2)

-- Find the minimum-weight edge connecting a vertex in the tree to a vertex outside the tree
findMinEdge :: Set.Set Point -> Set.Set Point -> [Edge] -> Edge
findMinEdge inTree outTree edges = minimumBy (\(w1, _, _) (w2, _, _) -> compare w1 w2) validEdges
  where
    validEdges = filter (\(_, p1, p2) -> (Set.member p1 inTree && Set.notMember p2 inTree) || (Set.member p2 inTree && Set.notMember p1 inTree)) edges

-- Prim's algorithm to find minimum spanning tree
prims :: [Point] -> [Edge]
prims vertices = mst
  where
    initialVertex = head vertices
    inTree = Set.singleton initialVertex
    outTree = Set.fromList (tail vertices)
    allEdges = [(distance p1 p2, p1, p2) | (p1, p2) <- distinctPairs vertices]
    mst = primLoop inTree outTree allEdges []

    primLoop inT outT remainingEdges mstSoFar
      | Set.null outT = mstSoFar
      | otherwise = primLoop newInTree newOutTree newRemainingEdges (minEdge : mstSoFar)
      where
        minEdge = findMinEdge inT outT remainingEdges
        tempVert = getVertex minEdge
        newInTree = Set.insert tempVert inT
        newOutTree = Set.delete tempVert outT
        newRemainingEdges = filter (\(_, p1, p2) -> (Set.member p1 inT && Set.notMember p2 inT) || (Set.member p2 inT && Set.notMember p1 inT)) remainingEdges

    getVertex (_, v1, v2)
        | Set.member v1 inTree = v2
        | otherwise = v1

-- Generate distinct pairs of elements from a list
distinctPairs :: [a] -> [(a, a)]
distinctPairs [] = []
distinctPairs (x:xs) = [(x, y) | y <- xs] ++ distinctPairs xs

main :: IO ()
main = do
    let vertices = [(1, 1), (2, 2), (2, 4)]
    let mst = prims vertices
    putStrLn "Total distance of MST:"
    print $ sum $ map (\(x, _, _) -> x) mst
