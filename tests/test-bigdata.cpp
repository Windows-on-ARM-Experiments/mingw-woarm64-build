#include <stdio.h>
#include <stdlib.h>
#include <string.h>


#define MAX_SAMPLES 0x1000000


static void big_text()
{
  // Print out more than one page of text.
  puts("The Commodore 64, also known as the C64, is an 8-bit home");
  puts("computer introduced in January 1982 by Commodore");
  puts("International (first shown at the Consumer Electronics");
  puts("Show, January 7-10, 1982, in Las Vegas). It has been");
  puts("listed in the Guinness World Records as the");
  puts("highest-selling single computer model of all time, with");
  puts("independent estimates placing the number sold between");
  puts("12.5 and 17 million units. Volume production started in");
  puts("early 1982, marketing in August for US$595 (equivalent to");
  puts("$1,800 in 2022). Preceded by the VIC-20 and Commodore");
  puts("PET, the C64 took its name from its 64 kilobytes (65,536");
  puts("bytes) of RAM. With support for multicolor sprites and a");
  puts("custom chip for waveform generation, the C64 could create");
  puts("superior visuals and audio compared to systems without");
  puts("such custom hardware.");
  puts("");
  puts("The C64 dominated the low-end computer market (except in");
  puts("the UK and Japan, lasting only about six months in Japan)");
  puts("for most of the later years of the 1980s. For a");
  puts("substantial period (1983-1986), the C64 had between 30%");
  puts("and 40% share of the US market and two million units sold");
  puts("per year, outselling IBM PC compatibles, Apple computers,");
  puts("and the Atari 8-bit family of computers. Sam Tramiel, a");
  puts("later Atari president and the son of Commodore's founder,");
  puts("said in a 1989 interview, When I was at Commodore we");
  puts("were building 400,000 C64s a month for a couple of");
  puts("years. In the UK market, the C64 faced competition from");
  puts("the BBC Micro, the ZX Spectrum, and later the Amstrad CPC");
  puts("464. but the C64 was still the second-most-popular");
  puts("computer in the UK after the ZX Spectrum. The Commodore");
  puts("64 failed to make any impact in Japan, as their market");
  puts("was dominated by Japanese computers, such as the NEC");
  puts("PC-8801, Sharp X1, Fujitsu FM-7, and MSX.");
  puts("");
  puts("Part of the Commodore 64's success was its sale in");
  puts("regular retail stores instead of only electronics or");
  puts("computer hobbyist specialty stores. Commodore produced");
  puts("many of its parts in-house to control costs, including");
  puts("custom integrated circuit chips from MOS Technology. In");
  puts("the United States, it has been compared to the Ford Model");
  puts("T automobile for its role in bringing a new technology to");
  puts("middle-class households via creative and affordable");
  puts("mass-production. Approximately 10,000 commercial software");
  puts("titles have been made for the Commodore 64, including");
  puts("development tools, office productivity applications, and");
  puts("video games. C64 emulators allow anyone with a modern");
  puts("computer, or a compatible video game console, to run");
  puts("these programs today. The C64 is also credited with");
  puts("popularizing the computer demoscene and is still used");
  puts("today by some computer hobbyists. In 2011, 17 years after");
  puts("it was taken off the market, research showed that brand");
  puts("recognition for the model was still at 87%.");
}

void big_bss()
{
    static size_t values[MAX_SAMPLES];
    static size_t sorted[MAX_SAMPLES]; 
    static size_t ref[MAX_SAMPLES];

    printf("bigger %lx %d\n", MAX_SAMPLES, 0x1919);
    printf("1 %lx\n", values);
    printf("2 %lx\n", sorted);
    printf("3 %lx\n", ref);

    memset(values, 0, sizeof(values));
    memset(sorted, 0, sizeof(sorted));
    memset(ref, 0, sizeof(ref));
}

int get_len()
{
  return 100;
}

int calc_func2(int x, int y)
{
    printf("calc-func\n");
    int i = x;
    int j = y;
    return i + j;
}

int throw_func1(void)
{
  printf("throw-func\n");
  int x = calc_func2(13, 19);
  return x;
}

void big_stack_func(void)
{
  printf("big-stack-func\n");
  char sz[0x4000] ="";
  strcpy(sz,"hello");

  int num = get_len();
    
  {
      int scopes[num];
      int temps[num];

      throw_func1();
  }
}

int main(void)
{
    printf("main\n");
    big_stack_func();
    big_bss();
    big_text();
    printf("ok\n");
    return 0;
}
