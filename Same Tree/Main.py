class Solution:
    # @param p, a tree node
    # @param q, a tree node
    # @return a boolean
    

    a=[]
    b=[]
        
    def getListFromTreeA(self, p):
        if p == None:
            return
        if (p.left != None):
            self.getListFromTreeA(p.left)
        print "a:" + str(p.val)
        self.a.append(p.val)
        if (p.right != None):
            self.getListFromTreeA(p.right)
        return
        
    def getListFromTreeB(self, p):
        if p == None:
            return
        if (p.left != None):
            self.getListFromTreeB(p.left)
        print "b:" + str(p.val)
        self.b.append(p.val)
        if (p.right != None):
            self.getListFromTreeB(p.right)
        return
    
    def isSameTree(self, p, q):
        self.getListFromTreeA(p)
        self.getListFromTreeB(q)
        if len(self.a) != len(self.b):
            return False
        for i in range(len(self.a)):
            if self.a[i] != self.b[i]:
                return False
        return True

su = Solution()
su.isSameTree({0,1,2},(0,1,2))