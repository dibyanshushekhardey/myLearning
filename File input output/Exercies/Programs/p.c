#include<stdio.h>
#include<conio.h>
#include<stdlib.h>
#include<string.h>
#include<Windows.h>

#define EndOfWord word[i] == ' ' || word[i] == ','\
 || word[i] == '.' || word[i] == '\n'

int count_word(FILE*);
void count_4_words(FILE*);

int main()
{
	FILE *fp;
	fp = fopen("File (p).txt", "r");
	if (fp == NULL)
	{
		puts("\nCan't open the file.");
		exit(1);
	}

	int count = count_word(fp);
	printf("\nThere are total %d words in file.\n", count);
	_getch();
	system("cls");
	count_4_words(fp);
	_getch();
	return 0;
}

int count_word(FILE *fp)
{
	int i, count = 0;
	char word[20];
	for (i = 0; 1; i++)
	{
		word[i] = fgetc(fp);
		if (word[i] == EOF)
			break;

		/*A word ends if a space or comma or etc. encounter.*/
		if (EndOfWord)
		{

			/*If the 'word' variable contain only one letter and viz.
			'.' or ',' or ' ' or '\n' so it skips it as 
			it is not count as a word*/
			if (i != 0)		
				count++;

			i = -1;
		}
	}
	return count;
	fclose(fp);
}

void count_4_words(FILE *fp)
{
	int i, count = 0;
	char word[20];
	if (fp == NULL)
	{
		puts("\nCan't open the file.");
		exit(1);
	}
	puts("\nTotal number of four letter words are following.\n");
	for (i = 0; 1; i++)
	{
		word[i] = fgetc(fp);
		if (word[i] == EOF)
			break;

		/*A word ends if a space or comma or etc. encounter.*/
		if (EndOfWord)
		{
			/*If the 'word' variable contain only one letter and viz.
			'.' or ',' or ' ' or '\n' so it skips it as
			it is not count as a word*/
			if (i != 0)		
			{
				if (i == 4)
				{
					/*Terminating the word before printing it*/
					word[i + 1] = '\0';
					puts(word);	
				}
			}
			i = -1; 
		}
	}
	fclose(fp);
}