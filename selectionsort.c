#include<stdio.h>
#include<stdlib.h>
int n;
void selection_sort(int a[])
{
int i,j,temp,loc;
for(i=0;i<n-1;i++)
{
loc=i;
for(j=i+1;j<n;j++)
{
if(a[loc]<a[j])
{
loc=j;
}
}
temp=a[i];
a[i]=a[loc];
a[loc]=temp;
}
}
int main()
{

int a[10],i;
printf("Enter n value");
scanf("%d",&n);
printf("Enter the array elements");
for(i=0;i<n;i++)
scanf("%d",&a[i]);
selection_sort(a);
printf("Array in decending order is:");
for(i=0;i<n;i++)
printf("%d\t",a[i]);
return 0;
}
