#include<stdio.h>
#include<stdlib.h>
int n;
void bubble_sort(int a[])
{
int i,j,temp;
for(i=0;i<n;i++)                                                                                                                         
{
for(j=0;j<n-i-1;j++)
{
if(a[j]>a[j+1])
{
temp=a[j];
a[j]=a[j+1];
a[j+1]=temp;
}
}
}
}
int main()
{
int a[10],i;
printf("Enter the number of elements:");
scanf("%d",&n);
printf("Enter the elements:");
for(i=0;i<n;i++)
scanf("%d",&a[i]);
bubble_sort(a);
printf("sorted data is :\n");
for(i=0;i<n;i++)
printf("%d\t",a[i]);
return 0;
}
