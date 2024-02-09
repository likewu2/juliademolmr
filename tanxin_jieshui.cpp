#include <iostream>
#include <algorithm>
#include <cstring>

#define Inf 999999999;

using namespace std;

int n=4,r=2;
int s[5000],a[5000];

int main11()
{
    int j=0,sum=0;
    //cin>>n;
    /*for(i=1;i<=n;i++)
      for(j=1;j<=i;j++)
        cin>>a[i][j];*/
    memset(s,0,sizeof(s));
    a[1]=2;a[2]=6;a[3]=4;a[4]=5;
    sort(a+1,a+1+n);
    for(int i=1;i<=n;i++){
        j++;
        if(j==r+1) j=1;
        s[j]+=a[i];
        sum+=s[j];
        //cout<<a[i]<<" "<<sum<<" "<<endl;
    }
    cout<<s[1]<<" "<<s[2]<<endl;
    cout<<sum<<endl;
    return 0;
}

int main()
{
    int k;
    //cin>>n;
    /*for(i=1;i<=n;i++)
      for(j=1;j<=i;j++)
        cin>>a[i][j];*/
    a[1]=2;a[2]=6;a[3]=4;a[4]=5;
    for(int i=1;i<=n;i++){
        int minn=Inf;
        for(int j=1;j<=r;j++)
          if(s[j]<minn){
            minn=s[j];
            k=j;
          }
        s[k]+=a[i];
    }
    int maxx=-Inf;
    for(int i=1;i<=r;i++)
      if(s[i]>maxx)
        maxx=s[i];
    cout<<s[1]<<" "<<s[2]<<endl;
    cout<<maxx<<endl;
}