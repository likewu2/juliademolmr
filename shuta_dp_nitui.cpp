#include <iostream>
#include <cstring>

using namespace std;

const int MAXN=1005;
int A[MAXN][MAXN][3],N;

int main()
{
    //cin>>N;
    /*for(i=1;i<=N;i++)
      for(j=1;j<=i;j++)
        cin>>A[i][j];*/
    N=5;
    memset(A,0,sizeof(A));
    A[1][1][1]=13;
    A[2][1][1]=11;A[2][2][1]=8;
    A[3][1][1]=12;A[3][2][1]=7; A[3][3][1]=26;
    A[4][1][1]=6; A[4][2][1]=14;A[4][3][1]=15;A[4][4][1]=8;
    A[5][1][1]=12;A[5][2][1]=7; A[5][3][1]=13;A[5][4][1]=24;A[5][5][1]=11;
    for(int i=1;i<=N;i++)
      for(int j=1;j<=i;j++){
        A[i][j][2]=A[i][j][1];
        A[i][j][3]=0;
      }
    for(int i=N-1;i>=1;i--)
      for(int j=1;j<=i;j++)
        if(A[i+1][j][2]>A[i+1][j+1][2])
        {
          A[i][j][2]=A[i][j][2]+A[i+1][j][2];A[i][j][3]=0;
        }else{
          A[i][j][2]=A[i][j][2]+A[i+1][j+1][2];A[i][j][3]=1;
        }
    cout<<"max="<<A[1][1][2]<<endl;
    int j=1;
    for(int i=1;i<=N-1;i++){
      cout<<A[i][j][1]<<"->";
      j=j+A[i][j][3];
    }
    cout<<A[N][j][1]<<endl;
}