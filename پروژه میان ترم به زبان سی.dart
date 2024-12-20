#include <stdio.h>
float mohasebe_bime(float hogog,float darsade_bime)
{
  float bime=hogog*(darsade_bime/100);
  return bime;
}
void fishe_hogogi(int moshakhasate_har_karmand,float hogog,float darsade_bime)
{
  float bime =mohasebe_bime(hogog,darsade_bime);
  float hogoge_kol =hogog-bime;
  printf("fishe hogogi baraye karmand %d:\n Hogog: %.2f\n Bime: %.2f\n Hogoge kol: %.2f\n", 
     moshakhasate_har_karmand,hogog,bime,hogoge_kol);
}
int main()
{
   float karmandan[10];
   float darsadebime;
   printf("Darsade bime ra vared kon:");
   scanf("%f",&darsadebime);
   for(int i=0;i<10;i++)
   {
     printf("Hogoge karmande %d ro vared kon:", i+1);
     scanf("%f",&karmandan[i]);
    }
   FILE *file = fopen("fish.txt", "w");
   if (file == NULL)
   {
     printf("eror\n");
     return 1;
    }
   for(int i=0;i<10;i++)
    {
      float bime = mohasebe_bime(karmandan[i],darsadebime);
      float hogoge_kol = karmandan[i]-bime;
      fprintf(file, "fishe hogogi baraye karmand %d:\nHogog: %.2f\nBime: %.2f\nHogoge kol: %.2f\n\n", 
        i+1,karmandan[i],bime,hogoge_kol);
    }
   fclose(file);
   for(int i=0;i<10;i++)
    {
      fishe_hogogi(i+1,karmandan[i],darsadebime);
    }
    return 0;
}