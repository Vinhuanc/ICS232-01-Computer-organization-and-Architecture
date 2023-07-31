   1              		.file	"Project 2.c"
   2              		.intel_syntax noprefix
   3              		.text
   4              	.Ltext0:
   6              	function1:
   7              	.LFB0:
   8              		.file 1 "Project 2.c"
   1:Project 2.c   **** /* Project 2 */
   2:Project 2.c   **** /* 10/5/2022 */
   3:Project 2.c   **** 
   4:Project 2.c   **** /* GCC */
   5:Project 2.c   **** /* gcc -Wa,-adhln -g -masm=intel -m32 "Project 2.c" > "Project 2-g.asm" */
   6:Project 2.c   **** /* gcc -Wa,-adhln -O -masm=intel -m32 "Project 2.c" > "Project 2-o.asm" */
   7:Project 2.c   **** 
   8:Project 2.c   **** #include <stdio.h>
   9:Project 2.c   **** 
  10:Project 2.c   **** #define NOINLINE __attribute__ ((noinline))
  11:Project 2.c   **** 
  12:Project 2.c   **** static NOINLINE int function1(int x, int y)
  13:Project 2.c   **** {
   9              		.loc 1 13 1
  10              		.cfi_startproc
  11 0000 F30F1EFB 		endbr32
  12 0004 55       		push	ebp
  13              		.cfi_def_cfa_offset 8
  14              		.cfi_offset 5, -8
  15 0005 89E5     		mov	ebp, esp
  16              		.cfi_def_cfa_register 5
  17 0007 83EC48   		sub	esp, 72
  18 000a E8FCFFFF 		call	__x86.get_pc_thunk.ax
  18      FF
  19 000f 05010000 		add	eax, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_
  19      00
  20              		.loc 1 13 1
  21 0014 65A11400 		mov	eax, DWORD PTR gs:20
  21      0000
  22 001a 8945F4   		mov	DWORD PTR -12[ebp], eax
  23 001d 31C0     		xor	eax, eax
  14:Project 2.c   **** 
  15:Project 2.c   **** 	int i;
  16:Project 2.c   **** 	int sum;
  17:Project 2.c   **** 	int values[10];
  18:Project 2.c   **** 	
  19:Project 2.c   **** 	sum = 0;
  24              		.loc 1 19 6
  25 001f C745C800 		mov	DWORD PTR -56[ebp], 0
  25      000000
  20:Project 2.c   **** 	for (i = 0; i < 10; i++) {
  26              		.loc 1 20 9
  27 0026 C745C400 		mov	DWORD PTR -60[ebp], 0
  27      000000
  28              		.loc 1 20 2
  29 002d EB26     		jmp	.L2
  30              	.L3:
  21:Project 2.c   **** 		values[i] = 10 + i + 2 * x * y;
  31              		.loc 1 21 18 discriminator 3
  32 002f 8B45C4   		mov	eax, DWORD PTR -60[ebp]
  33 0032 8D500A   		lea	edx, 10[eax]
  34              		.loc 1 21 30 discriminator 3
  35 0035 8B4508   		mov	eax, DWORD PTR 8[ebp]
  36 0038 0FAF450C 		imul	eax, DWORD PTR 12[ebp]
  37 003c 01C0     		add	eax, eax
  38              		.loc 1 21 22 discriminator 3
  39 003e 01C2     		add	edx, eax
  40              		.loc 1 21 13 discriminator 3
  41 0040 8B45C4   		mov	eax, DWORD PTR -60[ebp]
  42 0043 895485CC 		mov	DWORD PTR -52[ebp+eax*4], edx
  22:Project 2.c   **** 		sum += values[i];
  43              		.loc 1 22 16 discriminator 3
  44 0047 8B45C4   		mov	eax, DWORD PTR -60[ebp]
  45 004a 8B4485CC 		mov	eax, DWORD PTR -52[ebp+eax*4]
  46              		.loc 1 22 7 discriminator 3
  47 004e 0145C8   		add	DWORD PTR -56[ebp], eax
  20:Project 2.c   **** 	for (i = 0; i < 10; i++) {
  48              		.loc 1 20 23 discriminator 3
  49 0051 8345C401 		add	DWORD PTR -60[ebp], 1
  50              	.L2:
  20:Project 2.c   **** 	for (i = 0; i < 10; i++) {
  51              		.loc 1 20 2 discriminator 1
  52 0055 837DC409 		cmp	DWORD PTR -60[ebp], 9
  53 0059 7ED4     		jle	.L3
  23:Project 2.c   **** 	}
  24:Project 2.c   **** 
  25:Project 2.c   **** 	return (sum);
  54              		.loc 1 25 9
  55 005b 8B45C8   		mov	eax, DWORD PTR -56[ebp]
  26:Project 2.c   **** 	
  27:Project 2.c   **** }
  56              		.loc 1 27 1
  57 005e 8B4DF4   		mov	ecx, DWORD PTR -12[ebp]
  58 0061 65330D14 		xor	ecx, DWORD PTR gs:20
  58      000000
  59 0068 7405     		je	.L5
  60 006a E8FCFFFF 		call	__stack_chk_fail_local
  60      FF
  61              	.L5:
  62 006f C9       		leave
  63              		.cfi_restore 5
  64              		.cfi_def_cfa 4, 4
  65 0070 C3       		ret
  66              		.cfi_endproc
  67              	.LFE0:
  70              	function2:
  71              	.LFB1:
  28:Project 2.c   **** 
  29:Project 2.c   **** static int NOINLINE function2(int *values, int valuesLen)
  30:Project 2.c   **** {
  72              		.loc 1 30 1
  73              		.cfi_startproc
  74 0071 F30F1EFB 		endbr32
  75 0075 55       		push	ebp
  76              		.cfi_def_cfa_offset 8
  77              		.cfi_offset 5, -8
  78 0076 89E5     		mov	ebp, esp
  79              		.cfi_def_cfa_register 5
  80 0078 83EC10   		sub	esp, 16
  81 007b E8FCFFFF 		call	__x86.get_pc_thunk.ax
  81      FF
  82 0080 05010000 		add	eax, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_
  82      00
  31:Project 2.c   **** 
  32:Project 2.c   **** 	int i;
  33:Project 2.c   **** 	int sum1;
  34:Project 2.c   **** 	int sum2;
  35:Project 2.c   **** 	int v;
  36:Project 2.c   **** 
  37:Project 2.c   **** 	sum1 = 0;
  83              		.loc 1 37 7
  84 0085 C745F400 		mov	DWORD PTR -12[ebp], 0
  84      000000
  38:Project 2.c   **** 	sum2 = 0;
  85              		.loc 1 38 7
  86 008c C745F800 		mov	DWORD PTR -8[ebp], 0
  86      000000
  39:Project 2.c   **** 	for (i = 0; i < valuesLen; i++) {
  87              		.loc 1 39 9
  88 0093 C745F000 		mov	DWORD PTR -16[ebp], 0
  88      000000
  89              		.loc 1 39 2
  90 009a EB2C     		jmp	.L7
  91              	.L10:
  40:Project 2.c   **** 		v = values[i];
  92              		.loc 1 40 13
  93 009c 8B45F0   		mov	eax, DWORD PTR -16[ebp]
  94 009f 8D148500 		lea	edx, 0[0+eax*4]
  94      000000
  95 00a6 8B4508   		mov	eax, DWORD PTR 8[ebp]
  96 00a9 01D0     		add	eax, edx
  97              		.loc 1 40 5
  98 00ab 8B00     		mov	eax, DWORD PTR [eax]
  99 00ad 8945FC   		mov	DWORD PTR -4[ebp], eax
  41:Project 2.c   **** 		if (v > 0)
 100              		.loc 1 41 6
 101 00b0 837DFC00 		cmp	DWORD PTR -4[ebp], 0
 102 00b4 7E08     		jle	.L8
  42:Project 2.c   **** 			sum1 += v;
 103              		.loc 1 42 9
 104 00b6 8B45FC   		mov	eax, DWORD PTR -4[ebp]
 105 00b9 0145F4   		add	DWORD PTR -12[ebp], eax
 106 00bc EB06     		jmp	.L9
 107              	.L8:
  43:Project 2.c   **** 		else
  44:Project 2.c   **** 			sum2 += v;
 108              		.loc 1 44 9
 109 00be 8B45FC   		mov	eax, DWORD PTR -4[ebp]
 110 00c1 0145F8   		add	DWORD PTR -8[ebp], eax
 111              	.L9:
  39:Project 2.c   **** 		v = values[i];
 112              		.loc 1 39 30 discriminator 2
 113 00c4 8345F001 		add	DWORD PTR -16[ebp], 1
 114              	.L7:
  39:Project 2.c   **** 		v = values[i];
 115              		.loc 1 39 2 discriminator 1
 116 00c8 8B45F0   		mov	eax, DWORD PTR -16[ebp]
 117 00cb 3B450C   		cmp	eax, DWORD PTR 12[ebp]
 118 00ce 7CCC     		jl	.L10
  45:Project 2.c   **** 	}
  46:Project 2.c   **** 
  47:Project 2.c   **** 	return (sum1 + sum2);
 119              		.loc 1 47 15
 120 00d0 8B55F4   		mov	edx, DWORD PTR -12[ebp]
 121 00d3 8B45F8   		mov	eax, DWORD PTR -8[ebp]
 122 00d6 01D0     		add	eax, edx
  48:Project 2.c   **** 	
  49:Project 2.c   **** }
 123              		.loc 1 49 1
 124 00d8 C9       		leave
 125              		.cfi_restore 5
 126              		.cfi_def_cfa 4, 4
 127 00d9 C3       		ret
 128              		.cfi_endproc
 129              	.LFE1:
 132              	function3:
 133              	.LFB2:
  50:Project 2.c   **** 
  51:Project 2.c   **** static NOINLINE int function3(int x)
  52:Project 2.c   **** {
 134              		.loc 1 52 1
 135              		.cfi_startproc
 136 00da F30F1EFB 		endbr32
 137 00de 55       		push	ebp
 138              		.cfi_def_cfa_offset 8
 139              		.cfi_offset 5, -8
 140 00df 89E5     		mov	ebp, esp
 141              		.cfi_def_cfa_register 5
 142 00e1 83EC10   		sub	esp, 16
 143 00e4 E8FCFFFF 		call	__x86.get_pc_thunk.ax
 143      FF
 144 00e9 05010000 		add	eax, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_
 144      00
  53:Project 2.c   **** 
  54:Project 2.c   **** 	int y;
  55:Project 2.c   **** 
  56:Project 2.c   **** 	y = x / 20;
 145              		.loc 1 56 4
 146 00ee 8B4D08   		mov	ecx, DWORD PTR 8[ebp]
 147 00f1 BA676666 		mov	edx, 1717986919
 147      66
 148 00f6 89C8     		mov	eax, ecx
 149 00f8 F7EA     		imul	edx
 150 00fa C1FA03   		sar	edx, 3
 151 00fd 89C8     		mov	eax, ecx
 152 00ff C1F81F   		sar	eax, 31
 153 0102 29C2     		sub	edx, eax
 154 0104 89D0     		mov	eax, edx
 155 0106 8945FC   		mov	DWORD PTR -4[ebp], eax
  57:Project 2.c   **** 	
  58:Project 2.c   **** 	return (y);
 156              		.loc 1 58 9
 157 0109 8B45FC   		mov	eax, DWORD PTR -4[ebp]
  59:Project 2.c   **** 	
  60:Project 2.c   **** }
 158              		.loc 1 60 1
 159 010c C9       		leave
 160              		.cfi_restore 5
 161              		.cfi_def_cfa 4, 4
 162 010d C3       		ret
 163              		.cfi_endproc
 164              	.LFE2:
 167              	function4:
 168              	.LFB3:
  61:Project 2.c   **** 
  62:Project 2.c   **** static NOINLINE int function4(int a, int b, int c, int d)
  63:Project 2.c   **** {
 169              		.loc 1 63 1
 170              		.cfi_startproc
 171 010e F30F1EFB 		endbr32
 172 0112 55       		push	ebp
 173              		.cfi_def_cfa_offset 8
 174              		.cfi_offset 5, -8
 175 0113 89E5     		mov	ebp, esp
 176              		.cfi_def_cfa_register 5
 177 0115 83EC10   		sub	esp, 16
 178 0118 E8FCFFFF 		call	__x86.get_pc_thunk.ax
 178      FF
 179 011d 05010000 		add	eax, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_
 179      00
  64:Project 2.c   **** 
  65:Project 2.c   **** 	int r;
  66:Project 2.c   **** 
  67:Project 2.c   **** 	if (a > b)
 180              		.loc 1 67 5
 181 0122 8B4508   		mov	eax, DWORD PTR 8[ebp]
 182 0125 3B450C   		cmp	eax, DWORD PTR 12[ebp]
 183 0128 7E08     		jle	.L15
  68:Project 2.c   **** 		r = b;
 184              		.loc 1 68 5
 185 012a 8B450C   		mov	eax, DWORD PTR 12[ebp]
 186 012d 8945FC   		mov	DWORD PTR -4[ebp], eax
 187 0130 EB2D     		jmp	.L16
 188              	.L15:
  69:Project 2.c   **** 	else if (a > c)
 189              		.loc 1 69 10
 190 0132 8B4508   		mov	eax, DWORD PTR 8[ebp]
 191 0135 3B4510   		cmp	eax, DWORD PTR 16[ebp]
 192 0138 7E0B     		jle	.L17
  70:Project 2.c   **** 		r = 4 * a;
 193              		.loc 1 70 5
 194 013a 8B4508   		mov	eax, DWORD PTR 8[ebp]
 195 013d C1E002   		sal	eax, 2
 196 0140 8945FC   		mov	DWORD PTR -4[ebp], eax
 197 0143 EB1A     		jmp	.L16
 198              	.L17:
  71:Project 2.c   **** 	else if (a > d)
 199              		.loc 1 71 10
 200 0145 8B4508   		mov	eax, DWORD PTR 8[ebp]
 201 0148 3B4514   		cmp	eax, DWORD PTR 20[ebp]
 202 014b 7E0B     		jle	.L18
  72:Project 2.c   **** 		r = 8 * a;
 203              		.loc 1 72 5
 204 014d 8B4508   		mov	eax, DWORD PTR 8[ebp]
 205 0150 C1E003   		sal	eax, 3
 206 0153 8945FC   		mov	DWORD PTR -4[ebp], eax
 207 0156 EB07     		jmp	.L16
 208              	.L18:
  73:Project 2.c   **** 	else
  74:Project 2.c   **** 		r = -1;
 209              		.loc 1 74 5
 210 0158 C745FCFF 		mov	DWORD PTR -4[ebp], -1
 210      FFFFFF
 211              	.L16:
  75:Project 2.c   **** 	
  76:Project 2.c   **** 	return (r);
 212              		.loc 1 76 9
 213 015f 8B45FC   		mov	eax, DWORD PTR -4[ebp]
  77:Project 2.c   **** 	
  78:Project 2.c   **** }
 214              		.loc 1 78 1
 215 0162 C9       		leave
 216              		.cfi_restore 5
 217              		.cfi_def_cfa 4, 4
 218 0163 C3       		ret
 219              		.cfi_endproc
 220              	.LFE3:
 223              	function5:
 224              	.LFB4:
  79:Project 2.c   **** 
  80:Project 2.c   **** static NOINLINE unsigned int function5(unsigned int x)
  81:Project 2.c   **** {
 225              		.loc 1 81 1
 226              		.cfi_startproc
 227 0164 F30F1EFB 		endbr32
 228 0168 55       		push	ebp
 229              		.cfi_def_cfa_offset 8
 230              		.cfi_offset 5, -8
 231 0169 89E5     		mov	ebp, esp
 232              		.cfi_def_cfa_register 5
 233 016b 83EC10   		sub	esp, 16
 234 016e E8FCFFFF 		call	__x86.get_pc_thunk.ax
 234      FF
 235 0173 05010000 		add	eax, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_
 235      00
  82:Project 2.c   **** 
  83:Project 2.c   **** 	unsigned int x1;
  84:Project 2.c   **** 	unsigned int x2;
  85:Project 2.c   **** 	unsigned int x3;
  86:Project 2.c   **** 	
  87:Project 2.c   **** 	x1 = x * 16;
 236              		.loc 1 87 5
 237 0178 8B4508   		mov	eax, DWORD PTR 8[ebp]
 238 017b C1E004   		sal	eax, 4
 239 017e 8945F4   		mov	DWORD PTR -12[ebp], eax
  88:Project 2.c   **** 	x2 = x / 8;
 240              		.loc 1 88 5
 241 0181 8B4508   		mov	eax, DWORD PTR 8[ebp]
 242 0184 C1E803   		shr	eax, 3
 243 0187 8945F8   		mov	DWORD PTR -8[ebp], eax
  89:Project 2.c   **** 	x3 = x % 8;
 244              		.loc 1 89 5
 245 018a 8B4508   		mov	eax, DWORD PTR 8[ebp]
 246 018d 83E007   		and	eax, 7
 247 0190 8945FC   		mov	DWORD PTR -4[ebp], eax
  90:Project 2.c   **** 	
  91:Project 2.c   **** 	return (x1 + x2 + x3);
 248              		.loc 1 91 13
 249 0193 8B55F4   		mov	edx, DWORD PTR -12[ebp]
 250 0196 8B45F8   		mov	eax, DWORD PTR -8[ebp]
 251 0199 01C2     		add	edx, eax
 252              		.loc 1 91 18
 253 019b 8B45FC   		mov	eax, DWORD PTR -4[ebp]
 254 019e 01D0     		add	eax, edx
  92:Project 2.c   **** 	
  93:Project 2.c   **** }
 255              		.loc 1 93 1
 256 01a0 C9       		leave
 257              		.cfi_restore 5
 258              		.cfi_def_cfa 4, 4
 259 01a1 C3       		ret
 260              		.cfi_endproc
 261              	.LFE4:
 263              		.section	.rodata
 264              		.align 4
 265              	.LC0:
 266 0000 66756E63 		.string	"function1: i = %d, j = %d, k = %d\n"
 266      74696F6E 
 266      313A2069 
 266      203D2025 
 266      642C206A 
 267              	.LC1:
 268 0023 66756E63 		.string	"function2: k = %d\n"
 268      74696F6E 
 268      323A206B 
 268      203D2025 
 268      640A00
 269              	.LC2:
 270 0036 66756E63 		.string	"function3: k = %d\n"
 270      74696F6E 
 270      333A206B 
 270      203D2025 
 270      640A00
 271              	.LC3:
 272 0049 66756E63 		.string	"function4: k = %d\n"
 272      74696F6E 
 272      343A206B 
 272      203D2025 
 272      640A00
 273              	.LC4:
 274 005c 66756E63 		.string	"function5: k = %d\n"
 274      74696F6E 
 274      353A206B 
 274      203D2025 
 274      640A00
 275              		.text
 276              		.globl	main
 278              	main:
 279              	.LFB5:
  94:Project 2.c   **** 
  95:Project 2.c   **** int main(int argc, char **argv)
  96:Project 2.c   **** {
 280              		.loc 1 96 1
 281              		.cfi_startproc
 282 01a2 F30F1EFB 		endbr32
 283 01a6 8D4C2404 		lea	ecx, 4[esp]
 284              		.cfi_def_cfa 1, 0
 285 01aa 83E4F0   		and	esp, -16
 286 01ad FF71FC   		push	DWORD PTR -4[ecx]
 287 01b0 55       		push	ebp
 288 01b1 89E5     		mov	ebp, esp
 289              		.cfi_escape 0x10,0x5,0x2,0x75,0
 290 01b3 53       		push	ebx
 291 01b4 51       		push	ecx
 292              		.cfi_escape 0xf,0x3,0x75,0x78,0x6
 293              		.cfi_escape 0x10,0x3,0x2,0x75,0x7c
 294 01b5 83EC50   		sub	esp, 80
 295 01b8 E8FCFFFF 		call	__x86.get_pc_thunk.bx
 295      FF
 296 01bd 81C30200 		add	ebx, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_
 296      0000
 297 01c3 89C8     		mov	eax, ecx
 298 01c5 8B4004   		mov	eax, DWORD PTR 4[eax]
 299 01c8 8945B4   		mov	DWORD PTR -76[ebp], eax
 300              		.loc 1 96 1
 301 01cb 65A11400 		mov	eax, DWORD PTR gs:20
 301      0000
 302 01d1 8945F4   		mov	DWORD PTR -12[ebp], eax
 303 01d4 31C0     		xor	eax, eax
  97:Project 2.c   **** 
  98:Project 2.c   **** 	int i;
  99:Project 2.c   **** 	int j;
 100:Project 2.c   **** 	int k;
 101:Project 2.c   **** 	int values[10];
 102:Project 2.c   **** 
 103:Project 2.c   **** 	i = 5;
 304              		.loc 1 103 4
 305 01d6 C745C005 		mov	DWORD PTR -64[ebp], 5
 305      000000
 104:Project 2.c   **** 	j = 8;
 306              		.loc 1 104 4
 307 01dd C745C408 		mov	DWORD PTR -60[ebp], 8
 307      000000
 105:Project 2.c   **** 	k = function1(i, j);
 308              		.loc 1 105 6
 309 01e4 83EC08   		sub	esp, 8
 310 01e7 FF75C4   		push	DWORD PTR -60[ebp]
 311 01ea FF75C0   		push	DWORD PTR -64[ebp]
 312 01ed E80EFEFF 		call	function1
 312      FF
 313 01f2 83C410   		add	esp, 16
 314 01f5 8945C8   		mov	DWORD PTR -56[ebp], eax
 106:Project 2.c   **** 	printf("function1: i = %d, j = %d, k = %d\n", i, j, k);
 315              		.loc 1 106 2
 316 01f8 FF75C8   		push	DWORD PTR -56[ebp]
 317 01fb FF75C4   		push	DWORD PTR -60[ebp]
 318 01fe FF75C0   		push	DWORD PTR -64[ebp]
 319 0201 8D830000 		lea	eax, .LC0@GOTOFF[ebx]
 319      0000
 320 0207 50       		push	eax
 321 0208 E8FCFFFF 		call	printf@PLT
 321      FF
 322 020d 83C410   		add	esp, 16
 107:Project 2.c   **** 
 108:Project 2.c   **** 	for (i = 0; i < 10; i++) {
 323              		.loc 1 108 9
 324 0210 C745C000 		mov	DWORD PTR -64[ebp], 0
 324      000000
 325              		.loc 1 108 2
 326 0217 EB0E     		jmp	.L23
 327              	.L24:
 109:Project 2.c   **** 		values[i] = i;
 328              		.loc 1 109 13 discriminator 3
 329 0219 8B45C0   		mov	eax, DWORD PTR -64[ebp]
 330 021c 8B55C0   		mov	edx, DWORD PTR -64[ebp]
 331 021f 895485CC 		mov	DWORD PTR -52[ebp+eax*4], edx
 108:Project 2.c   **** 		values[i] = i;
 332              		.loc 1 108 23 discriminator 3
 333 0223 8345C001 		add	DWORD PTR -64[ebp], 1
 334              	.L23:
 108:Project 2.c   **** 		values[i] = i;
 335              		.loc 1 108 2 discriminator 1
 336 0227 837DC009 		cmp	DWORD PTR -64[ebp], 9
 337 022b 7EEC     		jle	.L24
 110:Project 2.c   **** 	}
 111:Project 2.c   **** 	k = function2(values, 10);
 338              		.loc 1 111 6
 339 022d 83EC08   		sub	esp, 8
 340 0230 6A0A     		push	10
 341 0232 8D45CC   		lea	eax, -52[ebp]
 342 0235 50       		push	eax
 343 0236 E836FEFF 		call	function2
 343      FF
 344 023b 83C410   		add	esp, 16
 345 023e 8945C8   		mov	DWORD PTR -56[ebp], eax
 112:Project 2.c   **** 	printf("function2: k = %d\n", k);
 346              		.loc 1 112 2
 347 0241 83EC08   		sub	esp, 8
 348 0244 FF75C8   		push	DWORD PTR -56[ebp]
 349 0247 8D832300 		lea	eax, .LC1@GOTOFF[ebx]
 349      0000
 350 024d 50       		push	eax
 351 024e E8FCFFFF 		call	printf@PLT
 351      FF
 352 0253 83C410   		add	esp, 16
 113:Project 2.c   **** 
 114:Project 2.c   **** 	k = function3(100);
 353              		.loc 1 114 6
 354 0256 83EC0C   		sub	esp, 12
 355 0259 6A64     		push	100
 356 025b E87AFEFF 		call	function3
 356      FF
 357 0260 83C410   		add	esp, 16
 358 0263 8945C8   		mov	DWORD PTR -56[ebp], eax
 115:Project 2.c   **** 	printf("function3: k = %d\n", k);
 359              		.loc 1 115 2
 360 0266 83EC08   		sub	esp, 8
 361 0269 FF75C8   		push	DWORD PTR -56[ebp]
 362 026c 8D833600 		lea	eax, .LC2@GOTOFF[ebx]
 362      0000
 363 0272 50       		push	eax
 364 0273 E8FCFFFF 		call	printf@PLT
 364      FF
 365 0278 83C410   		add	esp, 16
 116:Project 2.c   **** 
 117:Project 2.c   **** 	k = function4(1, 2, 3, 4);
 366              		.loc 1 117 6
 367 027b 6A04     		push	4
 368 027d 6A03     		push	3
 369 027f 6A02     		push	2
 370 0281 6A01     		push	1
 371 0283 E886FEFF 		call	function4
 371      FF
 372 0288 83C410   		add	esp, 16
 373 028b 8945C8   		mov	DWORD PTR -56[ebp], eax
 118:Project 2.c   **** 	printf("function4: k = %d\n", k);
 374              		.loc 1 118 2
 375 028e 83EC08   		sub	esp, 8
 376 0291 FF75C8   		push	DWORD PTR -56[ebp]
 377 0294 8D834900 		lea	eax, .LC3@GOTOFF[ebx]
 377      0000
 378 029a 50       		push	eax
 379 029b E8FCFFFF 		call	printf@PLT
 379      FF
 380 02a0 83C410   		add	esp, 16
 119:Project 2.c   **** 	
 120:Project 2.c   **** 	k = function5(100);
 381              		.loc 1 120 6
 382 02a3 83EC0C   		sub	esp, 12
 383 02a6 6A64     		push	100
 384 02a8 E8B7FEFF 		call	function5
 384      FF
 385 02ad 83C410   		add	esp, 16
 386              		.loc 1 120 4
 387 02b0 8945C8   		mov	DWORD PTR -56[ebp], eax
 121:Project 2.c   **** 	printf("function5: k = %d\n", k);
 388              		.loc 1 121 2
 389 02b3 83EC08   		sub	esp, 8
 390 02b6 FF75C8   		push	DWORD PTR -56[ebp]
 391 02b9 8D835C00 		lea	eax, .LC4@GOTOFF[ebx]
 391      0000
 392 02bf 50       		push	eax
 393 02c0 E8FCFFFF 		call	printf@PLT
 393      FF
 394 02c5 83C410   		add	esp, 16
 122:Project 2.c   **** 
 123:Project 2.c   **** 	return (0);
 395              		.loc 1 123 9
 396 02c8 B8000000 		mov	eax, 0
 396      00
 124:Project 2.c   **** }
 397              		.loc 1 124 1
 398 02cd 8B4DF4   		mov	ecx, DWORD PTR -12[ebp]
 399 02d0 65330D14 		xor	ecx, DWORD PTR gs:20
 399      000000
 400 02d7 7405     		je	.L26
 401 02d9 E8FCFFFF 		call	__stack_chk_fail_local
 401      FF
 402              	.L26:
 403 02de 8D65F8   		lea	esp, -8[ebp]
 404 02e1 59       		pop	ecx
 405              		.cfi_restore 1
 406              		.cfi_def_cfa 1, 0
 407 02e2 5B       		pop	ebx
 408              		.cfi_restore 3
 409 02e3 5D       		pop	ebp
 410              		.cfi_restore 5
 411 02e4 8D61FC   		lea	esp, -4[ecx]
 412              		.cfi_def_cfa 4, 4
 413 02e7 C3       		ret
 414              		.cfi_endproc
 415              	.LFE5:
 417              		.section	.text.__x86.get_pc_thunk.ax,"axG",@progbits,__x86.get_pc_thunk.ax,comdat
 418              		.globl	__x86.get_pc_thunk.ax
 419              		.hidden	__x86.get_pc_thunk.ax
 421              	__x86.get_pc_thunk.ax:
 422              	.LFB6:
 423              		.cfi_startproc
 424 0000 8B0424   		mov	eax, DWORD PTR [esp]
 425 0003 C3       		ret
 426              		.cfi_endproc
 427              	.LFE6:
 428              		.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
 429              		.globl	__x86.get_pc_thunk.bx
 430              		.hidden	__x86.get_pc_thunk.bx
 432              	__x86.get_pc_thunk.bx:
 433              	.LFB7:
 434              		.cfi_startproc
 435 0000 8B1C24   		mov	ebx, DWORD PTR [esp]
 436 0003 C3       		ret
 437              		.cfi_endproc
 438              	.LFE7:
 439              		.text
 440              	.Letext0:
 441              		.file 2 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
 442              		.file 3 "/usr/include/bits/types.h"
 443              		.file 4 "/usr/include/bits/types/struct_FILE.h"
 444              		.file 5 "/usr/include/bits/types/FILE.h"
 445              		.file 6 "/usr/include/stdio.h"
 446              		.file 7 "/usr/include/bits/sys_errlist.h"
 1660              		.section	.note.gnu.property,"a"
 1661              		.align 4
 1662 0000 04000000 		.long	 1f - 0f
 1663 0004 0C000000 		.long	 4f - 1f
 1664 0008 05000000 		.long	 5
 1665              	0:
 1666 000c 474E5500 		.string	 "GNU"
 1667              	1:
 1668              		.align 4
 1669 0010 020000C0 		.long	 0xc0000002
 1670 0014 04000000 		.long	 3f - 2f
 1671              	2:
 1672 0018 03000000 		.long	 0x3
 1673              	3:
 1674              		.align 4
 1675              	4:
