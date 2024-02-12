#include <iostream>

using namespace std;

const int MAXN=1005;
int A[MAXN][MAXN],F[MAXN][MAXN],N,Ans;

void Dfs(int x,int y,int Curr){
  if(x==N){
    if(Curr>Ans) Ans=Curr;
    return;
  }
  Dfs(x+1,y,Curr+A[x+1][y]);
  Dfs(x+1,y+1,Curr+A[x+1][y+1]);
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
    Ans=0;
    Dfs(1,1,A[1][1]);
    cout<<Ans<<endl;
}