#include <stdio.h>
#define max 100
int frag[max], b[max], f[max], i, j, nb, nf, temp, highest = 0, lowest = 10000;
static int bf[max], ff[max];
void initialize()
{
    highest = 0;
    lowest = 10000;
    for (int i = 0; i < max; i++)
    {
        ff[i] = 0;
        frag[i] = 0;
        bf[i] = 0;
    }
}
 
void printResult()
{
    printf("\nFile_no:\tFile_size :\tBlock_no:\tBlock_size:\tFragement");
    for (i = 1; i <= nf; i++)
        printf("\n%d\t\t%d\t\t%d\t\t%d\t\t%d", i, f[i], ff[i], b[ff[i]], frag[i]);
}
void first()
{
    initialize();
    for (i = 1; i <= nf; i++)
    {
        for (j = 1; j <= nb; j++)
        {
            if (bf[j] != 1)
            {
                temp = b[j] - f[i];
                if (temp >= 0)
                {
                    ff[i] = j;
                    break;
                }
            }
        }
        frag[i] = temp;
        bf[ff[i]] = 1;
    }
    printResult();
}
void best()
{
    initialize();
    for (i = 1; i <= nf; i++)
    {
        for (j = 1; j <= nb; j++)
        {
            if (bf[j] != 1)
            {
                temp = b[j] - f[i];
                if (temp >= 0)
                    if (lowest > temp)
                    {
                        ff[i] = j;
 
                        lowest = temp;
                    }
            }
        }
        frag[i] = lowest;
        bf[ff[i]] = 1;
        lowest = 10000;
    }
    printResult();
}
void worst()
{
    initialize();
    for (i = 1; i <= nf; i++)
 
    {
 
        for (j = 1; j <= nb; j++)
 
        {
 
            if (bf[j] != 1)
 
            {
 
                temp = b[j] - f[i];
 
                if (temp >= 0)
 
                    if (highest < temp)
 
                    {
 
                        ff[i] = j;
 
                        highest = temp;
                    }
            }
        }
 
        frag[i] = highest;
 
        bf[ff[i]] = 1;
 
        highest = 0;
    }
    printResult();
}
 
int main()
{
    printf("\nEnter the number of blocks:");
    scanf("%d", &nb);
    printf("Enter the number of files:");
    scanf("%d", &nf);
    printf("\nEnter the size of the blocks:-\n");
    for (i = 1; i <= nb; i++)
    {
        printf("Block %d:", i);
        scanf("%d", &b[i]);
    }
    printf("Enter the size of the files :-\n");
    for (i = 1; i <= nf; i++)
    {
        printf("File %d:", i);
        scanf("%d", &f[i]);
    }
    printf("\n\tMemory Management Scheme - First Fit");
    first();
    printf("\n\tMemory Management Scheme - Best Fit");
    best();
    printf("\n\tMemory Management Scheme - Worst Fit");
    worst();
    return 0;
}
