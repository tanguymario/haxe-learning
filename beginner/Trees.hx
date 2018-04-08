enum TreeStruct<T> 
{
    Leaf(v:T);
    Node(l:TreeStruct<T>, r:TreeStruct<T>);
}

class Trees
{
    public static function main() : Void 
    {
        var myTree = Node(
            Leaf("RED"), 
            Node(Leaf("ORANGE"), Leaf("GREEN"))
        );

        //              Node
        //           /        \
        //  Leaf("RED")        Node
        //                    /     \
        //         Leaf("ORANGE")  Leaf("GREEN")
    
        var match = switch(myTree) 
        {
            // matches any Node that has a Leaf on right-side
            case Node(_, Leaf(name)): 'Node with leaf: $name';

            // matches any Node that has another Node on right-side 
            // which has Leaf("{name}") on left-side
            // where name is uppercase
            case Node(_, Node(Leaf(name), _)) if (name.toUpperCase() == name): 'Node with Node with leaf: $name';

            // matches any Node that has another Node on right-side 
            // which has Leaf("{name}") on left-side
            case Node(_, Node(Leaf(name), _)): 'Node with Node with leaf: (case sensitive) $name';

            // matches anything
            case _: 'unknown';
        }

        trace(match); // "Node with Node wih leaf: ORANGE"
    }
}