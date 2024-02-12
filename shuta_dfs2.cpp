#include <iostream>
#include <algorithm>

using namespace std;

const int MAXN=1005;
int A[MAXN][MAXN],F[MAXN][MAXN],N;

int Dfs(int x,int y){
  if(F[x][y]==-1){
    if(x==N) F[x][y]=A[x][y];
    else F[x][y]=A[x][y]+max(Dfs(x+1,y),Dfs(x+1,y+1));
  }
  return F[x][y];
}

int main()
{
    //cin>>N;
    /*for(i=1;i<=N;i++)
      for(j=1;j<=i;j++)
        cin>>A[i][j];*/
    N=5;
    A[1][1]=13;
    A[2][1]=11;A[2][2]=8;
    A[3][1]=12;A[3][2]=7;A[3][3]=26;
    A[4][1]=6;A[4][2]=14;A[4][3]=15;A[4][4]=8;
    A[5][1]=12;A[5][2]=7;A[5][3]=13;A[5][4]=24;A[5][5]=11;
    for(int i=1;i<=N;i++)
      for(int j=1;j<=i;j++)
        F[i][j]=-1;
    Dfs(1,1);
    cout<<F[1][1]<<endl;
}