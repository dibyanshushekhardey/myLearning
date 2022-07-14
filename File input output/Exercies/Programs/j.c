#include<stdio.h>
#include<conio.h>
#include<windows.h>
#include<stdlib.h>

void add_info(struct blood);
void display(char*);
void lessthen25(char*);

struct blood
{
	char name[20];
	char address[40];
	int age;
	int blood_type;
};

int main()
{
	lessthen25("Blood Donors Record.txt");
	_getch();
	return 0;
}

void add_info(struct blood data)
{
	FILE *fp;
	fp = fopen("Blood Donors Record.txt", "r+");
	if (fp == NULL)
		fp = fopen("Blood Donors Record.txt", "w");
	fseek(fp, 0, SEEK_END);
	fprintf(fp, "%-20s", data.name);
	fprintf(fp, "%-40s ", data.address);
	fprintf(fp, "%-2d ", data.age);
	fprintf(fp, "%d\n", data.blood_type);
	fclose(fp);
}

void display(char *file)
{
	FILE *fp;
	fp = fopen(file, "r");
	char str[20];
	while (fgets(str, 19, fp) != NULL)
		printf("%s", str);
	fclose(fp);
}

void lessthen25(char *file)
{
	FILE *fp;
	struct blood data;
	int age;
	char str[68];
	fp = fopen(file, "r");
	while (fgets(str, 67, fp) != NULL)
	{
		age = (str[62] - 48) * 10 + (str[63] - 48);
		if (age < 25)
			printf("%s", str);
	}
	fclose(fp);
}