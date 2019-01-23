
int main()
{
	register int first=434;
	register int second=43;
	register int third=41;
	first=first+second;
	second =second -first;
	first=first/second;
	second=first*third;
	first=second & third;
	second=first | third;
	first=first ^ second;
	third =~first;

	return 0;
}
