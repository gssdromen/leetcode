class Solution:
    # @return an integer
    def reverse(self, x):
        input = str(x)
        output = ""
        if input=='0':
            print 0
        if input[0] == '-':
            isFirstZero = True
            output += str(input[0])
            for i in range(len(input)-1):
                thisone = str(input[-(i+1)])
                if thisone == '0' and isFirstZero:
                    pass
                else:
                    output += thisone
                    isFirstZero =False
            print int(output)
        else:
            isFirstZero = True
            for i in range(len(input)):
                thisone = str(input[-(i+1)])
                if thisone == '0' and isFirstZero:
                    pass
                else:
                    output += thisone
                    isFirstZero =False
            print int(output)


su =Solution()
su.reverse(0)
su.reverse(-100)
su.reverse(123)
su.reverse(100)