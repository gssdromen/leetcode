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
    int uniquePathsWithObstacles(vector<vector<int> > &obstacleGrid) {
        int m = obstacleGrid.size();
        int n = obstacleGrid[0].size();
        // cout<<m<<endl;
        // cout<<n<<endl;
        int paths[m][n];
        for (int i=0;i<m;i++){
            if (obstacleGrid[i][0] == 0){
                paths[i][0]=1;
            }else{
                paths[i][0]=0;
            }
        }
        for (int i=0;i<n;i++){
            if (obstacleGrid[0][i] == 0){
                paths[0][i]=1;
            }else{
                paths[0][i]=0;
            }
        }
        for (int i=1;i<m;i++){
            for(int j=1;j<n;j++){
                cout<<"in"<<endl;
                if (obstacleGrid[i][j] == 0){
                    paths[i][j]=paths[i-1][j]+paths[i][j-1];
                }else{
                    paths[i][j]=0;
                }
            }
        }
        return paths[m-1][n-1];
    }
};


int main(void){
    Solution *ss = new Solution();
    vector<vector <int> > ivec(1 ,vector<int>(2,0));
    // ivec[1][1] = 1;
    vector<vector <int> >::iterator it;
    for (it = ivec.begin(); it != ivec.end(); ++it){
        /* code */
        cout<<*it<<endl;
    }
    cout<<ss->uniquePathsWithObstacles(ivec);
    return 0;
}
