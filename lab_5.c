
int main()
{
	int i,a[5],b[5],temp;
	a[0]=0;
	a[1]=1;
	a[2]=2;
	a[3]=3;
	a[4]=4;
	b[0]=5;
	b[1]=1;
	b[2]=43;
	b[3]=0;
	b[4]=4;
	for(i=0;i<5;i++)
	{
		temp=a[i];
		a[i]=b[i];
		b[i]=temp;
	}
return 0;
}
