class Solution:
    # @param s, a string
    # @return an integer
    def lengthOfLastWord(self, s):
        if s.strip() == '':
            return 0
        ll = s.split(' ')
        if ll == []:
            return 0
        else:
            length = len(ll)
            while True:
                if length>-1 and ll[length-1] != '':
                    return len(ll[length-1])
                else:
                    length = length -1
