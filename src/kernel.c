/*
 * kernel.c
 */

int kmain(void)
{
	const char *str = "Wesley Chalmers Kernel";
	char * const vidptr = (char*) 0xb8000; //Why does video mem begin here?

	unsigned int i,  j ;
	i = j = 0;
	while(j < 80 *25*2)
	{
		vidptr[j] = ' ';
		vidptr[j + 1] = 0x07;
		j += 2;
	}
	j = 0;
	while(*str)
	{
		vidptr[i] = *str;
		vidptr[i+1]=0x07;
		i+=2;
                str++;
	}
	return 0;
}
		

