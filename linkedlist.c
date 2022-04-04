#include<stdio.h>
#include<stdlib.h>
typedef struct Node* lstptr;
struct Node
{
int data;
lstptr link;
};
lstptr first=NULL;
lstptr getnode()
{
lstptr node;
node=(lstptr)malloc(sizeof(struct Node));
return node;
}
void insertBegin(int ele)
{
lstptr new;
new=getnode();
new->data=ele;
new->link=NULL;
if(first!=NULL)
new->link=first;
first=new;
}
void insertEnd(int ele)
{
lstptr new,temp;
new=getnode();
new->data=ele;
new->link=NULL;
if(first!=NULL)
{
temp=first;
while(temp->link!=NULL)
temp=temp->link;
temp->link=new;
}
else
first=new;

}
void display()
{
lstptr temp;
if(first==NULL)
   {
     printf("\nList is Empty\n");
     exit(0);
    }
    temp=first;
while(temp->link!=NULL)
{
printf("\n%d\t",temp->data);
temp=temp->link;
}
printf("\n%d\t",temp->data);
}
void deleteBegin()
{
lstptr temp;
if(first==NULL)
{
printf("\nList is empty");
}
else
{
temp=first;
 if(first->link=NULL)
first=NULL;
else
first=first->link;
free(temp);
}
}
void deleteEnd()
{
lstptr temp,prev;
if(first==NULL)
{
printf("\nList is empty");
}
else
{
temp=first;
 if(first->link=NULL)
first=NULL;
else
{
prev=temp;
while(temp->link!=NULL)
{
prev=temp;
prev->link=NULL;
free(temp);
}
}
}
}
void main()
{
int ch,ele,opt=1;
while(opt)
{
printf("\n1.InsertBegin\n2.InsertEnd\n3.DeleteBegin\n4.DeleteEnd\n5.DeleteSpecific\n6.display\n");
printf("Enter your choice\n");
scanf("%d",&ch);
switch(ch)
{
case 1:printf("Enter the element to be inserted\n");
        scanf("%d",&ele);
       insertBegin(ele);
        break;
case 2:printf("Enter the element to be inserted\n");
        scanf("%d",&ele);
       insertEnd(ele);
        break;
case 3: deleteBegin();
        break;
case 4: deleteEnd();
        break;
case 6: display();
        break;
}
printf("Do you want to continue\n");
scanf("%d",&opt);
}
}


       
