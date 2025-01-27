#pragma once

// https://learn.microsoft.com/en-us/cpp/build/arm64-windows-abi-conventions?view=msvc-170#definitions
struct short_vector_8_bytes
{
  int a;
  int b;
};

struct not_short_vector_12_bytes
{
  int a;
  int b;
  int c;
};

struct short_vector_16_bytes
{
  int a;
  int b;
  int c;
  int d;
};

struct hfa_2_floats
{
  float a;
  float b;
};

struct hfa_4_floats
{
  float a;
  float b;
  float c;
  float d;
};

struct hfa_2_doubles
{
  double a;
  double b;
};

struct hfa_4_doubles
{
  double a;
  double b;
  double c;
  double d;
};

struct hva_2_short_vector_8_bytes
{
  struct short_vector_8_bytes a;
  struct short_vector_8_bytes b;
};

struct hva_4_short_vector_8_bytes
{
  struct short_vector_8_bytes a;
  struct short_vector_8_bytes b;
  struct short_vector_8_bytes c;
  struct short_vector_8_bytes d;
};

struct hva_2_short_vector_16_bytes
{
  struct short_vector_16_bytes a;
  struct short_vector_16_bytes b;
};

struct hva_4_short_vector_16_bytes
{
  struct short_vector_16_bytes a;
  struct short_vector_16_bytes b;
  struct short_vector_16_bytes c;
  struct short_vector_16_bytes d;
};

struct composite
{
  char a;
  int b;
  const char *c;
  double d;
  long e;
  float f;
  char g;
  int h;
  const char *i;
  double j;
  long k;
  float l;
};
