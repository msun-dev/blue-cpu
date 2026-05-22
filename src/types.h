#pragma once

#define BL_INT16_MAX 0x7FFF
#define BL_INT16_MIN 0x8000
#define null ((void*) 0)

typedef unsigned char      uint8_t;
typedef unsigned short int uint16_t;
typedef          short int  int16_t;
typedef unsigned int       uint32_t;
typedef unsigned long long uint64_t;

typedef enum Bool {
	False = 0,
	True  = !False,
} Bool;
