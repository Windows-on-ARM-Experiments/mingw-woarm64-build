#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <gtest/gtest.h>

static constexpr uint32_t FNV_PRIME_32 = 16777619u;
static constexpr uint32_t OFFSET_BASIS_32 = 2166136261u;

// simple fnv like hash.
// Good enough to guarantee uniqueness.
static uint32_t fnv1a(uint32_t hash, const char* data)
{
	const auto* p = reinterpret_cast<const uint8_t*>(data);
	
	while (*p != 0)
	{
		hash ^= *p;
		hash *= FNV_PRIME_32;
    p += 1;
	}
	return hash;
}

// Test if large text is stored and addressed correctly.
// Basically hash a lot of strings and check the result.
static uint32_t hash_big_text()
{
  uint32_t hash = OFFSET_BASIS_32;
  
  // Print out more than one page of text.
  hash = fnv1a(hash, "The Commodore 64, also known as the C64, is an 8-bit home");
  hash = fnv1a(hash, "computer introduced in January 1982 by Commodore");
  hash = fnv1a(hash, "International (first shown at the Consumer Electronics");
  hash = fnv1a(hash, "Show, January 7-10, 1982, in Las Vegas). It has been");
  hash = fnv1a(hash, "listed in the Guinness World Records as the");
  hash = fnv1a(hash, "highest-selling single computer model of all time, with");
  hash = fnv1a(hash, "independent estimates placing the number sold between");
  hash = fnv1a(hash, "12.5 and 17 million units. Volume production started in");
  hash = fnv1a(hash, "early 1982, marketing in August for US$595 (equivalent to");
  hash = fnv1a(hash, "$1,800 in 2022). Preceded by the VIC-20 and Commodore");
  hash = fnv1a(hash, "PET, the C64 took its name from its 64 kilobytes (65,536");
  hash = fnv1a(hash, "bytes) of RAM. With support for multicolor sprites and a");
  hash = fnv1a(hash, "custom chip for waveform generation, the C64 could create");
  hash = fnv1a(hash, "superior visuals and audio compared to systems without");
  hash = fnv1a(hash, "such custom hardware.");
  hash = fnv1a(hash, "");
  hash = fnv1a(hash, "The C64 dominated the low-end computer market (except in");
  hash = fnv1a(hash, "the UK and Japan, lasting only about six months in Japan)");
  hash = fnv1a(hash, "for most of the later years of the 1980s. For a");
  hash = fnv1a(hash, "substantial period (1983-1986), the C64 had between 30%");
  hash = fnv1a(hash, "and 40% share of the US market and two million units sold");
  hash = fnv1a(hash, "per year, outselling IBM PC compatibles, Apple computers,");
  hash = fnv1a(hash, "and the Atari 8-bit family of computers. Sam Tramiel, a");
  hash = fnv1a(hash, "later Atari president and the son of Commodore's founder,");
  hash = fnv1a(hash, "said in a 1989 interview, When I was at Commodore we");
  hash = fnv1a(hash, "were building 400,000 C64s a month for a couple of");
  hash = fnv1a(hash, "years. In the UK market, the C64 faced competition from");
  hash = fnv1a(hash, "the BBC Micro, the ZX Spectrum, and later the Amstrad CPC");
  hash = fnv1a(hash, "464. but the C64 was still the second-most-popular");
  hash = fnv1a(hash, "computer in the UK after the ZX Spectrum. The Commodore");
  hash = fnv1a(hash, "64 failed to make any impact in Japan, as their market");
  hash = fnv1a(hash, "was dominated by Japanese computers, such as the NEC");
  hash = fnv1a(hash, "PC-8801, Sharp X1, Fujitsu FM-7, and MSX.");
  hash = fnv1a(hash, "");
  hash = fnv1a(hash, "Part of the Commodore 64's success was its sale in");
  hash = fnv1a(hash, "regular retail stores instead of only electronics or");
  hash = fnv1a(hash, "computer hobbyist specialty stores. Commodore produced");
  hash = fnv1a(hash, "many of its parts in-house to control costs, including");
  hash = fnv1a(hash, "custom integrated circuit chips from MOS Technology. In");
  hash = fnv1a(hash, "the United States, it has been compared to the Ford Model");
  hash = fnv1a(hash, "T automobile for its role in bringing a new technology to");
  hash = fnv1a(hash, "middle-class households via creative and affordable");
  hash = fnv1a(hash, "mass-production. Approximately 10,000 commercial software");
  hash = fnv1a(hash, "titles have been made for the Commodore 64, including");
  hash = fnv1a(hash, "development tools, office productivity applications, and");
  hash = fnv1a(hash, "video games. C64 emulators allow anyone with a modern");
  hash = fnv1a(hash, "computer, or a compatible video game console, to run");
  hash = fnv1a(hash, "these programs today. The C64 is also credited with");
  hash = fnv1a(hash, "popularizing the computer demoscene and is still used");
  hash = fnv1a(hash, "today by some computer hobbyists. In 2011, 17 years after");
  hash = fnv1a(hash, "it was taken off the market, research showed that brand");
  hash = fnv1a(hash, "recognition for the model was still at 87%.");

  return hash;
}

#define MAX_SAMPLES 0x1000000

// There were problems with BSS sections previously.
// Check we can read and write from them.
static int check_bss()
{
    static uint8_t values[MAX_SAMPLES];
    static uint8_t sorted[MAX_SAMPLES]; 
    static uint8_t ref[MAX_SAMPLES];

    memset(values, 22, sizeof(values));
    memset(sorted, 33, sizeof(sorted));
    memset(ref, 44, sizeof(ref));

    for(int i = 0; i < MAX_SAMPLES; i++)
    {
      if (values[i] != 22) return 0;
      if (sorted[i] != 33) return 0;
      if (ref[i] != 44) return 0;
    }

    return 1;
}


TEST(Aarch64MinGW, BigDataTest) 
{
  ASSERT_EQ(hash_big_text(), 2659567138);
  ASSERT_TRUE(check_bss());
}