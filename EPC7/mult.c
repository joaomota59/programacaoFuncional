#include <stdio.h>

//referencia -> https://hackaday.com/2019/09/11/lambdas-for-c-sort-of/

#define lambda(lambda$_ret, lambda$_args, lambda$_body)\
  ({\
    lambda$_ret lambda$__anon$ lambda$_args\
      lambda$_body\
    &lambda$__anon$;\
  })


float multiply(float (*fn)(float inp,float inp2),float m, float n)
{
  printf("%f * ",m);
  printf("%f = ",n);

    return fn(m,n);
}

int main(int argc, char *argv[])
{
	float m,n;
	printf("Valor do 1 Fator:");
    scanf("%f", &m); 
    printf("Valor do 2 Fator:");
    scanf("%f", &n); 
    printf("%f\n",multiply(lambda(float,(float x,float y),{ return y*x; }),m,n));

    return 0;
}
