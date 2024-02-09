#include <iostream>

using namespace std;

int n=5,m=3;
int a[5000];

int main()
{
    int k;
    //cin>>n;
    /*for(i=1;i<=n;i++)
      for(j=1;j<=i;j++)
        cin>>a[i][j];*/
    a[1]=1;a[2]=2;a[3]=3;a[4]=4;a[5]=6;
    a[0]=-1;
    for(int i=1;i<=m;i++){
      int x;
      int left=1,right=n,mid;
      //cin>>x;
      switch(i){
        case 1:
          x=5;
          break;
        case 2:
          x=1;
          break;
        case 3:
          x=3;
          break;
      }
      while(left<=right){
        mid=(left+right)/2;
        if(a[mid]<=x) left=mid+1;
        else right=mid-1;
      }
      cout<<a[right]<<endl;
    }
}