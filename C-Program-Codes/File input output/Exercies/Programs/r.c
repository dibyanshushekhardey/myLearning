#include<stdio.h>
#include<conio.h>
#include<stdlib.h>
#include<string.h>

void frev(FILE*);

int main()
{
	FILE *fp;
	fp = fopen("File (r).txt", "r");
	if (fp == NULL)
	{
		puts("File cannot be opened.\n");
		exit(1);
	}
	frev(fp);
	fclose(fp);
	_getch();
	return 0;
}

void frev(FILE *fp)
{
	char word[11];
	int i;
	for (i = 0; 1; i++)
	{
		word[i] = fgetc(fp);
		if (word[i] == EOF)
			break;
		if (word[i] == ' ' || word[i] == '\n')
		{
			/*Convert that space/newline to NULL character 
			to complete the word for printing*/
			word[i] = '\0';
			
			_strrev(word);
			printf("%s ", word);
			/*When i increament so i becomes 0 and a
            new word start to save in the word variable*/
			i = -1;
		}
	}
}