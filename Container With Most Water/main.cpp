#include<iostream>
#include<vector>
#include<string>
using namespace std;

template <typename T> ostream& operator <<(ostream& cout,vector<T>& v){
    typename vector<T>::iterator it;
    cout<<"[";
    for (it=v.begin(); it!=v.end(); it++){
        if (it == v.end()-1){
            cout<<*it;
        }else{
            cout<<*it<<",";
        }
    }
    cout<<"]"<<endl;
    return cout;
}

template <typename T> void display(vector<T>& v){
    typename vector<T>::iterator it;
    cout<<"[";
    for (it=v.begin(); it!=v.end(); it++){
        if (it == v.end()-1){
            cout<<*it;
        }else{
            cout<<*it<<",";
        }
    }
    cout<<"]"<<endl;
}

class Solution {
public:
    int maxArea(vector<int> &height) {
        // cout<<height;
        int maxA = 0;
        int left = 0;
        int right = height.size()-1;
        while (left<right){
            int tempA = min(height[left], height[right]) * (right-left);
            if (tempA>maxA){
                maxA = tempA;
            }
            if (height[left]<height[right]){
                left++;
            }else{
                right--;
            }
        }
        return maxA;
    }
};


int main(void){
    Solution *ss = new Solution();
    vector<int> ret;
    ret.push_back(1);
    ret.push_back(2);
    cout<<ss->maxArea(ret);
    // cout<<ret;
    // display<string>(ret);
    return 0;
}
