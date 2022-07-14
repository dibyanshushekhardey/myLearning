#include<stdio.h>
#include<conio.h>
#include<stdlib.h>
#include<string.h>
#include<Windows.h>

#define EndOfWord word[i][j] == ' ' || word[i][j] == ','\
 || word[i][j] == '.' || word[i][j] == '\n'

void swap(char*, char*);
void list(FILE *);

int main()
{
	FILE *fp;
	fp = fopen("File (q).txt", "r");
	if (fp == NULL)
	{
		puts("\nCannot open the file.\n");
		exit(1);
	}
	list(fp);
	_getch();
	return 0;
}

void swap(char *one, char *two)
{
	char three[20];
	strcpy(three, one);
	strcpy(one, two);
	strcpy(two, three);
}

void list(FILE *fp)
{
	char word[30][20];
	int i = 0, j, count = 0, k1 = 0, k2 = 0;
	/* 'count' is used to count total number of words in the list,
	and k1 and k2 are used to locate k1th and k2th characters
	in Ist and IInd words respectively and 'i' is the first word 
	and 'j' is second*/
	for (j = 0; 1; j++)
	{
		word[i][j] = fgetc(fp);
		if (word[i][j] == EOF)
			break;
		/*A word may be ends with a space or a comma etc.*/
		if (EndOfWord)
		{
			if (j != 0)
			{
				word[i][j] = '\0';
				i++;
				/*It means, first word is successfully saved
				in word[i][j]. Increament in i takes 2-d array
				in next 1d array and save next word in it.*/
				count++;
			}
			/*If a word saved, so second word should be saved 
			with second index 0.*/
			j = -1;
		}
	}


	/*	Loop below is for sorting the words by alphabatical order a to z,
	and all words should have only upper or only lower case words.*/
	for (i = 0; i < count; i++)
	{
		for (j = i + 1; j < count; j++)
		{
			if (word[i][k1] > word[j][k2])
			{
				swap(word[i], word[j]);
				k1 = k2 = 0;
				/*If second word is smaller alphabatically, 
				so it will come in first by swapping them together*/
				continue;	
			}
			if (word[i][k1] < word[j][k2])
			{
				k1 = k2 = 0;
				/*If first word is smaller alphabatically, so next word
				is compared without making any changes*/
				continue;
			}
			if (word[i][k1] == word[j][k2])
			{
				/*If both the words are identical, so no action is taken*/
				if (word[i][k1 + 1] == '\0' && word[j][k2 + 1] == '\0')	
				{
					k1 = k2 = 0;
					continue;
				}
				/*	If one word is end and second is not so next character is
				ckecked of second word with the first character of first word,
				that means, only k2 increases and k1 remains same	*/
				if (word[i][k1 + 1] != '\0')
					k1++;
				if (word[j][k2 + 1] != '\0')
					k2++;
				/*Next character is checked of the same word, so j should be 
				decreament as it is also increamenting after every loop*/
				j--;
			}

		}
	}
	system("cls");
	printf("\nTotal number of words in the list is : %d\n", count);
	puts("Alphabatical listing of words is : ");
	for (i = 0; i < count; i++)
		printf("\n%-2d : %s", i + 1, word[i]);
	fclose(fp);
}