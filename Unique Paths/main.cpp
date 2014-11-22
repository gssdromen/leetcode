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
    int uniquePaths(int m, int n) {
        int paths[m][n];
        for (int i=0;i<m;i++){
            paths[i][0]=1;
        }
        for (int i=0;i<n;i++){
            paths[0][i]=1;
        }
        for (int i=1;i<m;i++){
            for(int j=1;j<n;j++){
                // cout<<i<<":"<<j<<endl;
                // cout<<paths[i-1][j]<<endl;
                // cout<<paths[i][j-1]<<endl;
                // cout<<"==="<<endl;
                paths[i][j]=paths[i-1][j]+paths[i][j-1];
                // paths[j][i]=paths[i][j];
            }
        }
        return paths[m-1][n-1];
    }
};


int main(void){
    Solution *ss = new Solution();
    cout<<ss->uniquePaths(5,19);
    return 0;
}
