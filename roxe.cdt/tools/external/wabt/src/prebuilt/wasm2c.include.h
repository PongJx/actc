/* Generated from 'wasm2c.h.tmpl' by wasm2c_tmpl.py, do not edit! */
const char SECTION_NAME(top)[] =
"#ifdef __cplusplus\n"
"extern \"C\" {\n"
"#endif\n"
"\n"
"#include <stdint.h>\n"
"\n"
"#include \"wasm-rt.h\"\n"
"\n"
"#ifndef WASM_RT_MODULE_PREFIX\n"
"#define WASM_RT_MODULE_PREFIX\n"
"#endif\n"
"\n"
"#define WASM_RT_PASTE_(x, y) x ## y\n"
"#define WASM_RT_PASTE(x, y) WASM_RT_PASTE_(x, y)\n"
"#define WASM_RT_ADD_PREFIX(x) WASM_RT_PASTE(WASM_RT_MODULE_PREFIX, x)\n"
"\n"
"/* TODO(binji): only use stdint.h types in header */\n"
"typedef uint8_t u8;\n"
"typedef int8_t s8;\n"
"typedef uint16_t u16;\n"
"typedef int16_t s16;\n"
"typedef uint32_t u32;\n"
"typedef int32_t s32;\n"
"typedef uint64_t u64;\n"
"typedef int64_t s64;\n"
"typedef float f32;\n"
"typedef double f64;\n"
"\n"
"extern void WASM_RT_ADD_PREFIX(init)(void);\n"
;

const char SECTION_NAME(bottom)[] =
"#ifdef __cplusplus\n"
"}\n"
"#endif\n"
;