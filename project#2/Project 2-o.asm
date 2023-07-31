   1              		.file	"Project 2.c"
   2              		.intel_syntax noprefix
   3              		.text
   5              	function1:
   6              	.LFB23:
   7              		.cfi_startproc
   8 0000 0FAFC2   		imul	eax, edx
   9 0003 01C0     		add	eax, eax
  10 0005 8D54C063 		lea	edx, 99[eax+eax*8]
  11 0009 8D44102E 		lea	eax, 46[eax+edx]
  12 000d C3       		ret
  13              		.cfi_endproc
  14              	.LFE23:
  17              	function2:
  18              	.LFB24:
  19              		.cfi_startproc
  20 000e 56       		push	esi
  21              		.cfi_def_cfa_offset 8
  22              		.cfi_offset 6, -8
  23 000f 53       		push	ebx
  24              		.cfi_def_cfa_offset 12
  25              		.cfi_offset 3, -12
  26 0010 85D2     		test	edx, edx
  27 0012 7E24     		jle	.L7
  28 0014 89C1     		mov	ecx, eax
  29 0016 8D1C90   		lea	ebx, [eax+edx*4]
  30 0019 BE000000 		mov	esi, 0
  30      00
  31 001e B8000000 		mov	eax, 0
  31      00
  32 0023 EB09     		jmp	.L6
  33              	.L4:
  34 0025 01D6     		add	esi, edx
  35              	.L5:
  36 0027 83C104   		add	ecx, 4
  37 002a 39D9     		cmp	ecx, ebx
  38 002c 7414     		je	.L3
  39              	.L6:
  40 002e 8B11     		mov	edx, DWORD PTR [ecx]
  41 0030 85D2     		test	edx, edx
  42 0032 7EF1     		jle	.L4
  43 0034 01D0     		add	eax, edx
  44 0036 EBEF     		jmp	.L5
  45              	.L7:
  46 0038 BE000000 		mov	esi, 0
  46      00
  47 003d B8000000 		mov	eax, 0
  47      00
  48              	.L3:
  49 0042 01F0     		add	eax, esi
  50 0044 5B       		pop	ebx
  51              		.cfi_restore 3
  52              		.cfi_def_cfa_offset 8
  53 0045 5E       		pop	esi
  54              		.cfi_restore 6
  55              		.cfi_def_cfa_offset 4
  56 0046 C3       		ret
  57              		.cfi_endproc
  58              	.LFE24:
  61              	function3:
  62              	.LFB25:
  63              		.cfi_startproc
  64 0047 89C1     		mov	ecx, eax
  65 0049 BA676666 		mov	edx, 1717986919
  65      66
  66 004e F7EA     		imul	edx
  67 0050 C1FA03   		sar	edx, 3
  68 0053 C1F91F   		sar	ecx, 31
  69 0056 89D0     		mov	eax, edx
  70 0058 29C8     		sub	eax, ecx
  71 005a C3       		ret
  72              		.cfi_endproc
  73              	.LFE25:
  76              	function4:
  77              	.LFB26:
  78              		.cfi_startproc
  79 005b 53       		push	ebx
  80              		.cfi_def_cfa_offset 8
  81              		.cfi_offset 3, -8
  82 005c 39D0     		cmp	eax, edx
  83 005e 7F14     		jg	.L14
  84 0060 39C8     		cmp	eax, ecx
  85 0062 7E05     		jle	.L13
  86 0064 C1E002   		sal	eax, 2
  87 0067 EB0D     		jmp	.L11
  88              	.L13:
  89 0069 3B442408 		cmp	eax, DWORD PTR 8[esp]
  90 006d 7E09     		jle	.L15
  91 006f C1E003   		sal	eax, 3
  92 0072 EB02     		jmp	.L11
  93              	.L14:
  94 0074 89D0     		mov	eax, edx
  95              	.L11:
  96 0076 5B       		pop	ebx
  97              		.cfi_remember_state
  98              		.cfi_restore 3
  99              		.cfi_def_cfa_offset 4
 100 0077 C3       		ret
 101              	.L15:
 102              		.cfi_restore_state
 103 0078 B8FFFFFF 		mov	eax, -1
 103      FF
 104 007d EBF7     		jmp	.L11
 105              		.cfi_endproc
 106              	.LFE26:
 109              	function5:
 110              	.LFB27:
 111              		.cfi_startproc
 112 007f 89C2     		mov	edx, eax
 113 0081 C1E204   		sal	edx, 4
 114 0084 89C1     		mov	ecx, eax
 115 0086 C1E903   		shr	ecx, 3
 116 0089 01CA     		add	edx, ecx
 117 008b 83E007   		and	eax, 7
 118 008e 01D0     		add	eax, edx
 119 0090 C3       		ret
 120              		.cfi_endproc
 121              	.LFE27:
 123              		.section	.rodata.str1.4,"aMS",@progbits,1
 124              		.align 4
 125              	.LC0:
 126 0000 66756E63 		.string	"function1: i = %d, j = %d, k = %d\n"
 126      74696F6E 
 126      313A2069 
 126      203D2025 
 126      642C206A 
 127              		.section	.rodata.str1.1,"aMS",@progbits,1
 128              	.LC1:
 129 0000 66756E63 		.string	"function2: k = %d\n"
 129      74696F6E 
 129      323A206B 
 129      203D2025 
 129      640A00
 130              	.LC2:
 131 0013 66756E63 		.string	"function3: k = %d\n"
 131      74696F6E 
 131      333A206B 
 131      203D2025 
 131      640A00
 132              	.LC3:
 133 0026 66756E63 		.string	"function4: k = %d\n"
 133      74696F6E 
 133      343A206B 
 133      203D2025 
 133      640A00
 134              	.LC4:
 135 0039 66756E63 		.string	"function5: k = %d\n"
 135      74696F6E 
 135      353A206B 
 135      203D2025 
 135      640A00
 136              		.text
 137              		.globl	main
 139              	main:
 140              	.LFB28:
 141              		.cfi_startproc
 142 0091 F30F1EFB 		endbr32
 143 0095 8D4C2404 		lea	ecx, 4[esp]
 144              		.cfi_def_cfa 1, 0
 145 0099 83E4F0   		and	esp, -16
 146 009c FF71FC   		push	DWORD PTR -4[ecx]
 147 009f 55       		push	ebp
 148 00a0 89E5     		mov	ebp, esp
 149              		.cfi_escape 0x10,0x5,0x2,0x75,0
 150 00a2 53       		push	ebx
 151 00a3 51       		push	ecx
 152              		.cfi_escape 0xf,0x3,0x75,0x78,0x6
 153              		.cfi_escape 0x10,0x3,0x2,0x75,0x7c
 154 00a4 83EC30   		sub	esp, 48
 155 00a7 E8FCFFFF 		call	__x86.get_pc_thunk.bx
 155      FF
 156 00ac 81C30200 		add	ebx, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_
 156      0000
 157 00b2 65A11400 		mov	eax, DWORD PTR gs:20
 157      0000
 158 00b8 8945F4   		mov	DWORD PTR -12[ebp], eax
 159 00bb 31C0     		xor	eax, eax
 160 00bd BA080000 		mov	edx, 8
 160      00
 161 00c2 B8050000 		mov	eax, 5
 161      00
 162 00c7 E834FFFF 		call	function1
 162      FF
 163 00cc 83EC0C   		sub	esp, 12
 164 00cf 50       		push	eax
 165 00d0 6A08     		push	8
 166 00d2 6A05     		push	5
 167 00d4 8D830000 		lea	eax, .LC0@GOTOFF[ebx]
 167      0000
 168 00da 50       		push	eax
 169 00db 6A01     		push	1
 170 00dd E8FCFFFF 		call	__printf_chk@PLT
 170      FF
 171 00e2 83C420   		add	esp, 32
 172 00e5 B8000000 		mov	eax, 0
 172      00
 173              	.L19:
 174 00ea 894485CC 		mov	DWORD PTR -52[ebp+eax*4], eax
 175 00ee 83C001   		add	eax, 1
 176 00f1 83F80A   		cmp	eax, 10
 177 00f4 75F4     		jne	.L19
 178 00f6 8D45CC   		lea	eax, -52[ebp]
 179 00f9 BA0A0000 		mov	edx, 10
 179      00
 180 00fe E80BFFFF 		call	function2
 180      FF
 181 0103 83EC04   		sub	esp, 4
 182 0106 50       		push	eax
 183 0107 8D830000 		lea	eax, .LC1@GOTOFF[ebx]
 183      0000
 184 010d 50       		push	eax
 185 010e 6A01     		push	1
 186 0110 E8FCFFFF 		call	__printf_chk@PLT
 186      FF
 187 0115 B8640000 		mov	eax, 100
 187      00
 188 011a E828FFFF 		call	function3
 188      FF
 189 011f 83C40C   		add	esp, 12
 190 0122 50       		push	eax
 191 0123 8D830000 		lea	eax, .LC2@GOTOFF[ebx]
 191      0000
 192 0129 50       		push	eax
 193 012a 6A01     		push	1
 194 012c E8FCFFFF 		call	__printf_chk@PLT
 194      FF
 195 0131 C7042404 		mov	DWORD PTR [esp], 4
 195      000000
 196 0138 B9030000 		mov	ecx, 3
 196      00
 197 013d BA020000 		mov	edx, 2
 197      00
 198 0142 B8010000 		mov	eax, 1
 198      00
 199 0147 E80FFFFF 		call	function4
 199      FF
 200 014c 83C40C   		add	esp, 12
 201 014f 50       		push	eax
 202 0150 8D830000 		lea	eax, .LC3@GOTOFF[ebx]
 202      0000
 203 0156 50       		push	eax
 204 0157 6A01     		push	1
 205 0159 E8FCFFFF 		call	__printf_chk@PLT
 205      FF
 206 015e B8640000 		mov	eax, 100
 206      00
 207 0163 E817FFFF 		call	function5
 207      FF
 208 0168 83C40C   		add	esp, 12
 209 016b 50       		push	eax
 210 016c 8D830000 		lea	eax, .LC4@GOTOFF[ebx]
 210      0000
 211 0172 50       		push	eax
 212 0173 6A01     		push	1
 213 0175 E8FCFFFF 		call	__printf_chk@PLT
 213      FF
 214 017a 83C410   		add	esp, 16
 215 017d 8B45F4   		mov	eax, DWORD PTR -12[ebp]
 216 0180 65330514 		xor	eax, DWORD PTR gs:20
 216      000000
 217 0187 750F     		jne	.L23
 218 0189 B8000000 		mov	eax, 0
 218      00
 219 018e 8D65F8   		lea	esp, -8[ebp]
 220 0191 59       		pop	ecx
 221              		.cfi_remember_state
 222              		.cfi_restore 1
 223              		.cfi_def_cfa 1, 0
 224 0192 5B       		pop	ebx
 225              		.cfi_restore 3
 226 0193 5D       		pop	ebp
 227              		.cfi_restore 5
 228 0194 8D61FC   		lea	esp, -4[ecx]
 229              		.cfi_def_cfa 4, 4
 230 0197 C3       		ret
 231              	.L23:
 232              		.cfi_restore_state
 233 0198 E8FCFFFF 		call	__stack_chk_fail_local
 233      FF
 234              		.cfi_endproc
 235              	.LFE28:
 237              		.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
 238              		.globl	__x86.get_pc_thunk.bx
 239              		.hidden	__x86.get_pc_thunk.bx
 241              	__x86.get_pc_thunk.bx:
 242              	.LFB29:
 243              		.cfi_startproc
 244 0000 8B1C24   		mov	ebx, DWORD PTR [esp]
 245 0003 C3       		ret
 246              		.cfi_endproc
 247              	.LFE29:
 248              		.hidden	__stack_chk_fail_local
 249              		.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
 250              		.section	.note.GNU-stack,"",@progbits
 251              		.section	.note.gnu.property,"a"
 252              		.align 4
 253 0000 04000000 		.long	 1f - 0f
 254 0004 0C000000 		.long	 4f - 1f
 255 0008 05000000 		.long	 5
 256              	0:
 257 000c 474E5500 		.string	 "GNU"
 258              	1:
 259              		.align 4
 260 0010 020000C0 		.long	 0xc0000002
 261 0014 04000000 		.long	 3f - 2f
 262              	2:
 263 0018 03000000 		.long	 0x3
 264              	3:
 265              		.align 4
 266              	4:
