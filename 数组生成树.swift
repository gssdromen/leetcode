public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

func buildTree(from array: [Int?]) -> TreeNode? {
    guard !array.isEmpty, let first = array[0] else {
        return nil
    }

    let root = TreeNode(first)
    var queue: [TreeNode] = [root]
    var index = 1

    while index < array.count && !queue.isEmpty {
        let current = queue.removeFirst()

        if index < array.count, let leftVal = array[index] {
            current.left = TreeNode(leftVal)
            queue.append(current.left!)
        }
        index += 1

        if index < array.count, let rightVal = array[index] {
            current.right = TreeNode(rightVal)
            queue.append(current.right!)
        }
        index += 1
    }

    return root
}
