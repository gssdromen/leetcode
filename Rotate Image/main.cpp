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
    void rotate(vector<vector<int> > &matrix) {
        int n = matrix.size();
        int m = 0;
        if (n==0){
            return;
        }
        m = (n%2==0)?(n/2):(n+1)/2;
        for (int i=0;i<m;i++){
            swap(matrix[i], matrix[n-i-1]);
        }
    }
};


int main(void){
    Solution *ss = new Solution();
    vector<vector<int> > ret;
    vector<int> ret1;
    ret1.push_back(1);
    ret1.push_back(2);
    ret1.push_back(3);
    vector<int> ret2;
    ret2.push_back(4);
    ret2.push_back(5);
    ret2.push_back(6);
    vector<int> ret3;
    ret3.push_back(7);
    ret3.push_back(8);
    ret3.push_back(9);
    ret.push_back(ret1);
    ret.push_back(ret2);
    ret.push_back(ret3);
    ss->rotate(ret);
    // cout<<ret;
    // display<string>(ret);
    return 0;
}
