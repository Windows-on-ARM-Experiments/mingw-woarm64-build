/*
   Tests creating a DLL with exported functions
   EXPORT_API must be defined externally
*/

int __cdecl add_c_def(int a, int b)
{
  return a + b;
}

int __stdcall add_std_def(int a, int b)
{
  return a + b;
}

__declspec(dllexport) int __cdecl add_c_export(int a, int b)
{
  return a + b;
}

__declspec(dllexport) int __stdcall add_std_export(int a, int b)
{
  return a + b;
}