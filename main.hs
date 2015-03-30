data BinTree = Node {
	bintreedescription :: String
	, left_child :: BinTree
	, right_child :: BinTree
	}
	| Empty
	deriving (Show, Eq)

-- Attempting to use DFS to find a specific string
find :: BinTree -> String -> Bool
find x y
	| x == Empty = False
	| (bintreedescription x) == y = True
	| otherwise = find (left_child x) y || find (right_child x) y 

main = do
	let x = Node "Top!" (Node "left" Empty Empty) (Node "right" Empty Empty)
	print (find x "right")





















