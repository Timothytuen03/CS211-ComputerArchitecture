
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 3f 00 00 	mov    0x3fd9(%rip),%rax        # 4fe8 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	callq  *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	retq   

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 ca 3e 00 00    	pushq  0x3eca(%rip)        # 4ef0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 cb 3e 00 00 	bnd jmpq *0x3ecb(%rip)        # 4ef8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	pushq  $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmpq 1020 <.plt>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	pushq  $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmpq 1020 <.plt>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	pushq  $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmpq 1020 <.plt>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	pushq  $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmpq 1020 <.plt>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	pushq  $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmpq 1020 <.plt>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	pushq  $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmpq 1020 <.plt>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	pushq  $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmpq 1020 <.plt>
    109f:	90                   	nop
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	68 07 00 00 00       	pushq  $0x7
    10a9:	f2 e9 71 ff ff ff    	bnd jmpq 1020 <.plt>
    10af:	90                   	nop
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	68 08 00 00 00       	pushq  $0x8
    10b9:	f2 e9 61 ff ff ff    	bnd jmpq 1020 <.plt>
    10bf:	90                   	nop
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	68 09 00 00 00       	pushq  $0x9
    10c9:	f2 e9 51 ff ff ff    	bnd jmpq 1020 <.plt>
    10cf:	90                   	nop
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	68 0a 00 00 00       	pushq  $0xa
    10d9:	f2 e9 41 ff ff ff    	bnd jmpq 1020 <.plt>
    10df:	90                   	nop
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	68 0b 00 00 00       	pushq  $0xb
    10e9:	f2 e9 31 ff ff ff    	bnd jmpq 1020 <.plt>
    10ef:	90                   	nop
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	68 0c 00 00 00       	pushq  $0xc
    10f9:	f2 e9 21 ff ff ff    	bnd jmpq 1020 <.plt>
    10ff:	90                   	nop
    1100:	f3 0f 1e fa          	endbr64 
    1104:	68 0d 00 00 00       	pushq  $0xd
    1109:	f2 e9 11 ff ff ff    	bnd jmpq 1020 <.plt>
    110f:	90                   	nop
    1110:	f3 0f 1e fa          	endbr64 
    1114:	68 0e 00 00 00       	pushq  $0xe
    1119:	f2 e9 01 ff ff ff    	bnd jmpq 1020 <.plt>
    111f:	90                   	nop
    1120:	f3 0f 1e fa          	endbr64 
    1124:	68 0f 00 00 00       	pushq  $0xf
    1129:	f2 e9 f1 fe ff ff    	bnd jmpq 1020 <.plt>
    112f:	90                   	nop
    1130:	f3 0f 1e fa          	endbr64 
    1134:	68 10 00 00 00       	pushq  $0x10
    1139:	f2 e9 e1 fe ff ff    	bnd jmpq 1020 <.plt>
    113f:	90                   	nop
    1140:	f3 0f 1e fa          	endbr64 
    1144:	68 11 00 00 00       	pushq  $0x11
    1149:	f2 e9 d1 fe ff ff    	bnd jmpq 1020 <.plt>
    114f:	90                   	nop
    1150:	f3 0f 1e fa          	endbr64 
    1154:	68 12 00 00 00       	pushq  $0x12
    1159:	f2 e9 c1 fe ff ff    	bnd jmpq 1020 <.plt>
    115f:	90                   	nop
    1160:	f3 0f 1e fa          	endbr64 
    1164:	68 13 00 00 00       	pushq  $0x13
    1169:	f2 e9 b1 fe ff ff    	bnd jmpq 1020 <.plt>
    116f:	90                   	nop
    1170:	f3 0f 1e fa          	endbr64 
    1174:	68 14 00 00 00       	pushq  $0x14
    1179:	f2 e9 a1 fe ff ff    	bnd jmpq 1020 <.plt>
    117f:	90                   	nop
    1180:	f3 0f 1e fa          	endbr64 
    1184:	68 15 00 00 00       	pushq  $0x15
    1189:	f2 e9 91 fe ff ff    	bnd jmpq 1020 <.plt>
    118f:	90                   	nop
    1190:	f3 0f 1e fa          	endbr64 
    1194:	68 16 00 00 00       	pushq  $0x16
    1199:	f2 e9 81 fe ff ff    	bnd jmpq 1020 <.plt>
    119f:	90                   	nop
    11a0:	f3 0f 1e fa          	endbr64 
    11a4:	68 17 00 00 00       	pushq  $0x17
    11a9:	f2 e9 71 fe ff ff    	bnd jmpq 1020 <.plt>
    11af:	90                   	nop
    11b0:	f3 0f 1e fa          	endbr64 
    11b4:	68 18 00 00 00       	pushq  $0x18
    11b9:	f2 e9 61 fe ff ff    	bnd jmpq 1020 <.plt>
    11bf:	90                   	nop
    11c0:	f3 0f 1e fa          	endbr64 
    11c4:	68 19 00 00 00       	pushq  $0x19
    11c9:	f2 e9 51 fe ff ff    	bnd jmpq 1020 <.plt>
    11cf:	90                   	nop
    11d0:	f3 0f 1e fa          	endbr64 
    11d4:	68 1a 00 00 00       	pushq  $0x1a
    11d9:	f2 e9 41 fe ff ff    	bnd jmpq 1020 <.plt>
    11df:	90                   	nop

Disassembly of section .plt.got:

00000000000011e0 <__cxa_finalize@plt>:
    11e0:	f3 0f 1e fa          	endbr64 
    11e4:	f2 ff 25 0d 3e 00 00 	bnd jmpq *0x3e0d(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    11eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000011f0 <getenv@plt>:
    11f0:	f3 0f 1e fa          	endbr64 
    11f4:	f2 ff 25 05 3d 00 00 	bnd jmpq *0x3d05(%rip)        # 4f00 <getenv@GLIBC_2.2.5>
    11fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001200 <strcasecmp@plt>:
    1200:	f3 0f 1e fa          	endbr64 
    1204:	f2 ff 25 fd 3c 00 00 	bnd jmpq *0x3cfd(%rip)        # 4f08 <strcasecmp@GLIBC_2.2.5>
    120b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001210 <__errno_location@plt>:
    1210:	f3 0f 1e fa          	endbr64 
    1214:	f2 ff 25 f5 3c 00 00 	bnd jmpq *0x3cf5(%rip)        # 4f10 <__errno_location@GLIBC_2.2.5>
    121b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001220 <strcpy@plt>:
    1220:	f3 0f 1e fa          	endbr64 
    1224:	f2 ff 25 ed 3c 00 00 	bnd jmpq *0x3ced(%rip)        # 4f18 <strcpy@GLIBC_2.2.5>
    122b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001230 <puts@plt>:
    1230:	f3 0f 1e fa          	endbr64 
    1234:	f2 ff 25 e5 3c 00 00 	bnd jmpq *0x3ce5(%rip)        # 4f20 <puts@GLIBC_2.2.5>
    123b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001240 <write@plt>:
    1240:	f3 0f 1e fa          	endbr64 
    1244:	f2 ff 25 dd 3c 00 00 	bnd jmpq *0x3cdd(%rip)        # 4f28 <write@GLIBC_2.2.5>
    124b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001250 <__stack_chk_fail@plt>:
    1250:	f3 0f 1e fa          	endbr64 
    1254:	f2 ff 25 d5 3c 00 00 	bnd jmpq *0x3cd5(%rip)        # 4f30 <__stack_chk_fail@GLIBC_2.4>
    125b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001260 <alarm@plt>:
    1260:	f3 0f 1e fa          	endbr64 
    1264:	f2 ff 25 cd 3c 00 00 	bnd jmpq *0x3ccd(%rip)        # 4f38 <alarm@GLIBC_2.2.5>
    126b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001270 <close@plt>:
    1270:	f3 0f 1e fa          	endbr64 
    1274:	f2 ff 25 c5 3c 00 00 	bnd jmpq *0x3cc5(%rip)        # 4f40 <close@GLIBC_2.2.5>
    127b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001280 <read@plt>:
    1280:	f3 0f 1e fa          	endbr64 
    1284:	f2 ff 25 bd 3c 00 00 	bnd jmpq *0x3cbd(%rip)        # 4f48 <read@GLIBC_2.2.5>
    128b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001290 <fgets@plt>:
    1290:	f3 0f 1e fa          	endbr64 
    1294:	f2 ff 25 b5 3c 00 00 	bnd jmpq *0x3cb5(%rip)        # 4f50 <fgets@GLIBC_2.2.5>
    129b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012a0 <signal@plt>:
    12a0:	f3 0f 1e fa          	endbr64 
    12a4:	f2 ff 25 ad 3c 00 00 	bnd jmpq *0x3cad(%rip)        # 4f58 <signal@GLIBC_2.2.5>
    12ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012b0 <gethostbyname@plt>:
    12b0:	f3 0f 1e fa          	endbr64 
    12b4:	f2 ff 25 a5 3c 00 00 	bnd jmpq *0x3ca5(%rip)        # 4f60 <gethostbyname@GLIBC_2.2.5>
    12bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012c0 <__memmove_chk@plt>:
    12c0:	f3 0f 1e fa          	endbr64 
    12c4:	f2 ff 25 9d 3c 00 00 	bnd jmpq *0x3c9d(%rip)        # 4f68 <__memmove_chk@GLIBC_2.3.4>
    12cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012d0 <strtol@plt>:
    12d0:	f3 0f 1e fa          	endbr64 
    12d4:	f2 ff 25 95 3c 00 00 	bnd jmpq *0x3c95(%rip)        # 4f70 <strtol@GLIBC_2.2.5>
    12db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012e0 <fflush@plt>:
    12e0:	f3 0f 1e fa          	endbr64 
    12e4:	f2 ff 25 8d 3c 00 00 	bnd jmpq *0x3c8d(%rip)        # 4f78 <fflush@GLIBC_2.2.5>
    12eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012f0 <__isoc99_sscanf@plt>:
    12f0:	f3 0f 1e fa          	endbr64 
    12f4:	f2 ff 25 85 3c 00 00 	bnd jmpq *0x3c85(%rip)        # 4f80 <__isoc99_sscanf@GLIBC_2.7>
    12fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001300 <__printf_chk@plt>:
    1300:	f3 0f 1e fa          	endbr64 
    1304:	f2 ff 25 7d 3c 00 00 	bnd jmpq *0x3c7d(%rip)        # 4f88 <__printf_chk@GLIBC_2.3.4>
    130b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001310 <fopen@plt>:
    1310:	f3 0f 1e fa          	endbr64 
    1314:	f2 ff 25 75 3c 00 00 	bnd jmpq *0x3c75(%rip)        # 4f90 <fopen@GLIBC_2.2.5>
    131b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001320 <gethostname@plt>:
    1320:	f3 0f 1e fa          	endbr64 
    1324:	f2 ff 25 6d 3c 00 00 	bnd jmpq *0x3c6d(%rip)        # 4f98 <gethostname@GLIBC_2.2.5>
    132b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001330 <exit@plt>:
    1330:	f3 0f 1e fa          	endbr64 
    1334:	f2 ff 25 65 3c 00 00 	bnd jmpq *0x3c65(%rip)        # 4fa0 <exit@GLIBC_2.2.5>
    133b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001340 <connect@plt>:
    1340:	f3 0f 1e fa          	endbr64 
    1344:	f2 ff 25 5d 3c 00 00 	bnd jmpq *0x3c5d(%rip)        # 4fa8 <connect@GLIBC_2.2.5>
    134b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001350 <__fprintf_chk@plt>:
    1350:	f3 0f 1e fa          	endbr64 
    1354:	f2 ff 25 55 3c 00 00 	bnd jmpq *0x3c55(%rip)        # 4fb0 <__fprintf_chk@GLIBC_2.3.4>
    135b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001360 <sleep@plt>:
    1360:	f3 0f 1e fa          	endbr64 
    1364:	f2 ff 25 4d 3c 00 00 	bnd jmpq *0x3c4d(%rip)        # 4fb8 <sleep@GLIBC_2.2.5>
    136b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001370 <__ctype_b_loc@plt>:
    1370:	f3 0f 1e fa          	endbr64 
    1374:	f2 ff 25 45 3c 00 00 	bnd jmpq *0x3c45(%rip)        # 4fc0 <__ctype_b_loc@GLIBC_2.3>
    137b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001380 <__sprintf_chk@plt>:
    1380:	f3 0f 1e fa          	endbr64 
    1384:	f2 ff 25 3d 3c 00 00 	bnd jmpq *0x3c3d(%rip)        # 4fc8 <__sprintf_chk@GLIBC_2.3.4>
    138b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001390 <socket@plt>:
    1390:	f3 0f 1e fa          	endbr64 
    1394:	f2 ff 25 35 3c 00 00 	bnd jmpq *0x3c35(%rip)        # 4fd0 <socket@GLIBC_2.2.5>
    139b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000000013a0 <_start>:
    13a0:	f3 0f 1e fa          	endbr64 
    13a4:	31 ed                	xor    %ebp,%ebp
    13a6:	49 89 d1             	mov    %rdx,%r9
    13a9:	5e                   	pop    %rsi
    13aa:	48 89 e2             	mov    %rsp,%rdx
    13ad:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    13b1:	50                   	push   %rax
    13b2:	54                   	push   %rsp
    13b3:	4c 8d 05 26 19 00 00 	lea    0x1926(%rip),%r8        # 2ce0 <__libc_csu_fini>
    13ba:	48 8d 0d af 18 00 00 	lea    0x18af(%rip),%rcx        # 2c70 <__libc_csu_init>
    13c1:	48 8d 3d c1 00 00 00 	lea    0xc1(%rip),%rdi        # 1489 <main>
    13c8:	ff 15 12 3c 00 00    	callq  *0x3c12(%rip)        # 4fe0 <__libc_start_main@GLIBC_2.2.5>
    13ce:	f4                   	hlt    
    13cf:	90                   	nop

00000000000013d0 <deregister_tm_clones>:
    13d0:	48 8d 3d a9 42 00 00 	lea    0x42a9(%rip),%rdi        # 5680 <stdout@@GLIBC_2.2.5>
    13d7:	48 8d 05 a2 42 00 00 	lea    0x42a2(%rip),%rax        # 5680 <stdout@@GLIBC_2.2.5>
    13de:	48 39 f8             	cmp    %rdi,%rax
    13e1:	74 15                	je     13f8 <deregister_tm_clones+0x28>
    13e3:	48 8b 05 ee 3b 00 00 	mov    0x3bee(%rip),%rax        # 4fd8 <_ITM_deregisterTMCloneTable>
    13ea:	48 85 c0             	test   %rax,%rax
    13ed:	74 09                	je     13f8 <deregister_tm_clones+0x28>
    13ef:	ff e0                	jmpq   *%rax
    13f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    13f8:	c3                   	retq   
    13f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001400 <register_tm_clones>:
    1400:	48 8d 3d 79 42 00 00 	lea    0x4279(%rip),%rdi        # 5680 <stdout@@GLIBC_2.2.5>
    1407:	48 8d 35 72 42 00 00 	lea    0x4272(%rip),%rsi        # 5680 <stdout@@GLIBC_2.2.5>
    140e:	48 29 fe             	sub    %rdi,%rsi
    1411:	48 89 f0             	mov    %rsi,%rax
    1414:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1418:	48 c1 f8 03          	sar    $0x3,%rax
    141c:	48 01 c6             	add    %rax,%rsi
    141f:	48 d1 fe             	sar    %rsi
    1422:	74 14                	je     1438 <register_tm_clones+0x38>
    1424:	48 8b 05 c5 3b 00 00 	mov    0x3bc5(%rip),%rax        # 4ff0 <_ITM_registerTMCloneTable>
    142b:	48 85 c0             	test   %rax,%rax
    142e:	74 08                	je     1438 <register_tm_clones+0x38>
    1430:	ff e0                	jmpq   *%rax
    1432:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1438:	c3                   	retq   
    1439:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001440 <__do_global_dtors_aux>:
    1440:	f3 0f 1e fa          	endbr64 
    1444:	80 3d 5d 42 00 00 00 	cmpb   $0x0,0x425d(%rip)        # 56a8 <completed.8061>
    144b:	75 2b                	jne    1478 <__do_global_dtors_aux+0x38>
    144d:	55                   	push   %rbp
    144e:	48 83 3d a2 3b 00 00 	cmpq   $0x0,0x3ba2(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    1455:	00 
    1456:	48 89 e5             	mov    %rsp,%rbp
    1459:	74 0c                	je     1467 <__do_global_dtors_aux+0x27>
    145b:	48 8b 3d a6 3b 00 00 	mov    0x3ba6(%rip),%rdi        # 5008 <__dso_handle>
    1462:	e8 79 fd ff ff       	callq  11e0 <__cxa_finalize@plt>
    1467:	e8 64 ff ff ff       	callq  13d0 <deregister_tm_clones>
    146c:	c6 05 35 42 00 00 01 	movb   $0x1,0x4235(%rip)        # 56a8 <completed.8061>
    1473:	5d                   	pop    %rbp
    1474:	c3                   	retq   
    1475:	0f 1f 00             	nopl   (%rax)
    1478:	c3                   	retq   
    1479:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001480 <frame_dummy>:
    1480:	f3 0f 1e fa          	endbr64 
    1484:	e9 77 ff ff ff       	jmpq   1400 <register_tm_clones>

0000000000001489 <main>:
    1489:	f3 0f 1e fa          	endbr64 
    148d:	53                   	push   %rbx
    148e:	83 ff 01             	cmp    $0x1,%edi
    1491:	0f 84 f8 00 00 00    	je     158f <main+0x106>
    1497:	48 89 f3             	mov    %rsi,%rbx
    149a:	83 ff 02             	cmp    $0x2,%edi
    149d:	0f 85 21 01 00 00    	jne    15c4 <main+0x13b>
    14a3:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    14a7:	48 8d 35 56 1b 00 00 	lea    0x1b56(%rip),%rsi        # 3004 <_IO_stdin_used+0x4>
    14ae:	e8 5d fe ff ff       	callq  1310 <fopen@plt>
    14b3:	48 89 05 f6 41 00 00 	mov    %rax,0x41f6(%rip)        # 56b0 <infile>
    14ba:	48 85 c0             	test   %rax,%rax
    14bd:	0f 84 df 00 00 00    	je     15a2 <main+0x119>
    14c3:	e8 b8 06 00 00       	callq  1b80 <initialize_bomb>
    14c8:	48 8d 3d b9 1b 00 00 	lea    0x1bb9(%rip),%rdi        # 3088 <_IO_stdin_used+0x88>
    14cf:	e8 5c fd ff ff       	callq  1230 <puts@plt>
    14d4:	48 8d 3d ed 1b 00 00 	lea    0x1bed(%rip),%rdi        # 30c8 <_IO_stdin_used+0xc8>
    14db:	e8 50 fd ff ff       	callq  1230 <puts@plt>
    14e0:	e8 b2 09 00 00       	callq  1e97 <read_line>
    14e5:	48 89 c7             	mov    %rax,%rdi
    14e8:	e8 fa 00 00 00       	callq  15e7 <phase_1>
    14ed:	e8 ed 0a 00 00       	callq  1fdf <phase_defused>
    14f2:	48 8d 3d ff 1b 00 00 	lea    0x1bff(%rip),%rdi        # 30f8 <_IO_stdin_used+0xf8>
    14f9:	e8 32 fd ff ff       	callq  1230 <puts@plt>
    14fe:	e8 94 09 00 00       	callq  1e97 <read_line>
    1503:	48 89 c7             	mov    %rax,%rdi
    1506:	e8 00 01 00 00       	callq  160b <phase_2>
    150b:	e8 cf 0a 00 00       	callq  1fdf <phase_defused>
    1510:	48 8d 3d 26 1b 00 00 	lea    0x1b26(%rip),%rdi        # 303d <_IO_stdin_used+0x3d>
    1517:	e8 14 fd ff ff       	callq  1230 <puts@plt>
    151c:	e8 76 09 00 00       	callq  1e97 <read_line>
    1521:	48 89 c7             	mov    %rax,%rdi
    1524:	e8 50 01 00 00       	callq  1679 <phase_3>
    1529:	e8 b1 0a 00 00       	callq  1fdf <phase_defused>
    152e:	48 8d 3d 26 1b 00 00 	lea    0x1b26(%rip),%rdi        # 305b <_IO_stdin_used+0x5b>
    1535:	e8 f6 fc ff ff       	callq  1230 <puts@plt>
    153a:	e8 58 09 00 00       	callq  1e97 <read_line>
    153f:	48 89 c7             	mov    %rax,%rdi
    1542:	e8 59 02 00 00       	callq  17a0 <phase_4>
    1547:	e8 93 0a 00 00       	callq  1fdf <phase_defused>
    154c:	48 8d 3d d5 1b 00 00 	lea    0x1bd5(%rip),%rdi        # 3128 <_IO_stdin_used+0x128>
    1553:	e8 d8 fc ff ff       	callq  1230 <puts@plt>
    1558:	e8 3a 09 00 00       	callq  1e97 <read_line>
    155d:	48 89 c7             	mov    %rax,%rdi
    1560:	e8 ae 02 00 00       	callq  1813 <phase_5>
    1565:	e8 75 0a 00 00       	callq  1fdf <phase_defused>
    156a:	48 8d 3d f9 1a 00 00 	lea    0x1af9(%rip),%rdi        # 306a <_IO_stdin_used+0x6a>
    1571:	e8 ba fc ff ff       	callq  1230 <puts@plt>
    1576:	e8 1c 09 00 00       	callq  1e97 <read_line>
    157b:	48 89 c7             	mov    %rax,%rdi
    157e:	e8 27 03 00 00       	callq  18aa <phase_6>
    1583:	e8 57 0a 00 00       	callq  1fdf <phase_defused>
    1588:	b8 00 00 00 00       	mov    $0x0,%eax
    158d:	5b                   	pop    %rbx
    158e:	c3                   	retq   
    158f:	48 8b 05 fa 40 00 00 	mov    0x40fa(%rip),%rax        # 5690 <stdin@@GLIBC_2.2.5>
    1596:	48 89 05 13 41 00 00 	mov    %rax,0x4113(%rip)        # 56b0 <infile>
    159d:	e9 21 ff ff ff       	jmpq   14c3 <main+0x3a>
    15a2:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    15a6:	48 8b 13             	mov    (%rbx),%rdx
    15a9:	48 8d 35 56 1a 00 00 	lea    0x1a56(%rip),%rsi        # 3006 <_IO_stdin_used+0x6>
    15b0:	bf 01 00 00 00       	mov    $0x1,%edi
    15b5:	e8 46 fd ff ff       	callq  1300 <__printf_chk@plt>
    15ba:	bf 08 00 00 00       	mov    $0x8,%edi
    15bf:	e8 6c fd ff ff       	callq  1330 <exit@plt>
    15c4:	48 8b 16             	mov    (%rsi),%rdx
    15c7:	48 8d 35 55 1a 00 00 	lea    0x1a55(%rip),%rsi        # 3023 <_IO_stdin_used+0x23>
    15ce:	bf 01 00 00 00       	mov    $0x1,%edi
    15d3:	b8 00 00 00 00       	mov    $0x0,%eax
    15d8:	e8 23 fd ff ff       	callq  1300 <__printf_chk@plt>
    15dd:	bf 08 00 00 00       	mov    $0x8,%edi
    15e2:	e8 49 fd ff ff       	callq  1330 <exit@plt>

00000000000015e7 <phase_1>:
    15e7:	f3 0f 1e fa          	endbr64 
    15eb:	48 83 ec 08          	sub    $0x8,%rsp
    15ef:	48 8d 35 5a 1b 00 00 	lea    0x1b5a(%rip),%rsi        # 3150 <_IO_stdin_used+0x150>
    15f6:	e8 25 05 00 00       	callq  1b20 <strings_not_equal>
    15fb:	85 c0                	test   %eax,%eax
    15fd:	75 05                	jne    1604 <phase_1+0x1d>
    15ff:	48 83 c4 08          	add    $0x8,%rsp
    1603:	c3                   	retq   
    1604:	e8 07 08 00 00       	callq  1e10 <explode_bomb>
    1609:	eb f4                	jmp    15ff <phase_1+0x18>

000000000000160b <phase_2>:
    160b:	f3 0f 1e fa          	endbr64 
    160f:	55                   	push   %rbp
    1610:	53                   	push   %rbx
    1611:	48 83 ec 28          	sub    $0x28,%rsp
    1615:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    161c:	00 00 
    161e:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    1623:	31 c0                	xor    %eax,%eax
    1625:	48 89 e6             	mov    %rsp,%rsi
    1628:	e8 25 08 00 00       	callq  1e52 <read_six_numbers>
    162d:	83 3c 24 01          	cmpl   $0x1,(%rsp)
    1631:	75 0a                	jne    163d <phase_2+0x32>
    1633:	48 89 e3             	mov    %rsp,%rbx
    1636:	48 8d 6c 24 14       	lea    0x14(%rsp),%rbp
    163b:	eb 15                	jmp    1652 <phase_2+0x47>
    163d:	e8 ce 07 00 00       	callq  1e10 <explode_bomb>
    1642:	eb ef                	jmp    1633 <phase_2+0x28>
    1644:	e8 c7 07 00 00       	callq  1e10 <explode_bomb>
    1649:	48 83 c3 04          	add    $0x4,%rbx
    164d:	48 39 eb             	cmp    %rbp,%rbx
    1650:	74 0b                	je     165d <phase_2+0x52>
    1652:	8b 03                	mov    (%rbx),%eax
    1654:	01 c0                	add    %eax,%eax
    1656:	39 43 04             	cmp    %eax,0x4(%rbx)
    1659:	74 ee                	je     1649 <phase_2+0x3e>
    165b:	eb e7                	jmp    1644 <phase_2+0x39>
    165d:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    1662:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1669:	00 00 
    166b:	75 07                	jne    1674 <phase_2+0x69>
    166d:	48 83 c4 28          	add    $0x28,%rsp
    1671:	5b                   	pop    %rbx
    1672:	5d                   	pop    %rbp
    1673:	c3                   	retq   
    1674:	e8 d7 fb ff ff       	callq  1250 <__stack_chk_fail@plt>

0000000000001679 <phase_3>:
    1679:	f3 0f 1e fa          	endbr64 
    167d:	48 83 ec 18          	sub    $0x18,%rsp
    1681:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1688:	00 00 
    168a:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    168f:	31 c0                	xor    %eax,%eax
    1691:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    1696:	48 89 e2             	mov    %rsp,%rdx
    1699:	48 8d 35 85 1d 00 00 	lea    0x1d85(%rip),%rsi        # 3425 <array.3473+0x265>
    16a0:	e8 4b fc ff ff       	callq  12f0 <__isoc99_sscanf@plt>
    16a5:	83 f8 01             	cmp    $0x1,%eax
    16a8:	7e 1e                	jle    16c8 <phase_3+0x4f>
    16aa:	83 3c 24 07          	cmpl   $0x7,(%rsp)
    16ae:	0f 87 9a 00 00 00    	ja     174e <phase_3+0xd5>
    16b4:	8b 04 24             	mov    (%rsp),%eax
    16b7:	48 8d 15 e2 1a 00 00 	lea    0x1ae2(%rip),%rdx        # 31a0 <_IO_stdin_used+0x1a0>
    16be:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    16c2:	48 01 d0             	add    %rdx,%rax
    16c5:	3e ff e0             	notrack jmpq *%rax
    16c8:	e8 43 07 00 00       	callq  1e10 <explode_bomb>
    16cd:	eb db                	jmp    16aa <phase_3+0x31>
    16cf:	b8 04 01 00 00       	mov    $0x104,%eax
    16d4:	2d f0 00 00 00       	sub    $0xf0,%eax
    16d9:	05 1a 03 00 00       	add    $0x31a,%eax
    16de:	2d 92 03 00 00       	sub    $0x392,%eax
    16e3:	05 92 03 00 00       	add    $0x392,%eax
    16e8:	2d 92 03 00 00       	sub    $0x392,%eax
    16ed:	05 92 03 00 00       	add    $0x392,%eax
    16f2:	2d 92 03 00 00       	sub    $0x392,%eax
    16f7:	83 3c 24 05          	cmpl   $0x5,(%rsp)
    16fb:	7f 06                	jg     1703 <phase_3+0x8a>
    16fd:	39 44 24 04          	cmp    %eax,0x4(%rsp)
    1701:	74 05                	je     1708 <phase_3+0x8f>
    1703:	e8 08 07 00 00       	callq  1e10 <explode_bomb>
    1708:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    170d:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1714:	00 00 
    1716:	75 42                	jne    175a <phase_3+0xe1>
    1718:	48 83 c4 18          	add    $0x18,%rsp
    171c:	c3                   	retq   
    171d:	b8 00 00 00 00       	mov    $0x0,%eax
    1722:	eb b0                	jmp    16d4 <phase_3+0x5b>
    1724:	b8 00 00 00 00       	mov    $0x0,%eax
    1729:	eb ae                	jmp    16d9 <phase_3+0x60>
    172b:	b8 00 00 00 00       	mov    $0x0,%eax
    1730:	eb ac                	jmp    16de <phase_3+0x65>
    1732:	b8 00 00 00 00       	mov    $0x0,%eax
    1737:	eb aa                	jmp    16e3 <phase_3+0x6a>
    1739:	b8 00 00 00 00       	mov    $0x0,%eax
    173e:	eb a8                	jmp    16e8 <phase_3+0x6f>
    1740:	b8 00 00 00 00       	mov    $0x0,%eax
    1745:	eb a6                	jmp    16ed <phase_3+0x74>
    1747:	b8 00 00 00 00       	mov    $0x0,%eax
    174c:	eb a4                	jmp    16f2 <phase_3+0x79>
    174e:	e8 bd 06 00 00       	callq  1e10 <explode_bomb>
    1753:	b8 00 00 00 00       	mov    $0x0,%eax
    1758:	eb 9d                	jmp    16f7 <phase_3+0x7e>
    175a:	e8 f1 fa ff ff       	callq  1250 <__stack_chk_fail@plt>

000000000000175f <func4>:
    175f:	f3 0f 1e fa          	endbr64 
    1763:	48 83 ec 08          	sub    $0x8,%rsp
    1767:	89 d0                	mov    %edx,%eax
    1769:	29 f0                	sub    %esi,%eax
    176b:	89 c1                	mov    %eax,%ecx
    176d:	c1 e9 1f             	shr    $0x1f,%ecx
    1770:	01 c1                	add    %eax,%ecx
    1772:	d1 f9                	sar    %ecx
    1774:	01 f1                	add    %esi,%ecx
    1776:	39 f9                	cmp    %edi,%ecx
    1778:	7f 0c                	jg     1786 <func4+0x27>
    177a:	b8 00 00 00 00       	mov    $0x0,%eax
    177f:	7c 11                	jl     1792 <func4+0x33>
    1781:	48 83 c4 08          	add    $0x8,%rsp
    1785:	c3                   	retq   
    1786:	8d 51 ff             	lea    -0x1(%rcx),%edx
    1789:	e8 d1 ff ff ff       	callq  175f <func4>
    178e:	01 c0                	add    %eax,%eax
    1790:	eb ef                	jmp    1781 <func4+0x22>
    1792:	8d 71 01             	lea    0x1(%rcx),%esi
    1795:	e8 c5 ff ff ff       	callq  175f <func4>
    179a:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    179e:	eb e1                	jmp    1781 <func4+0x22>

00000000000017a0 <phase_4>:
    17a0:	f3 0f 1e fa          	endbr64 
    17a4:	48 83 ec 18          	sub    $0x18,%rsp
    17a8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    17af:	00 00 
    17b1:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    17b6:	31 c0                	xor    %eax,%eax
    17b8:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    17bd:	48 89 e2             	mov    %rsp,%rdx
    17c0:	48 8d 35 5e 1c 00 00 	lea    0x1c5e(%rip),%rsi        # 3425 <array.3473+0x265>
    17c7:	e8 24 fb ff ff       	callq  12f0 <__isoc99_sscanf@plt>
    17cc:	83 f8 02             	cmp    $0x2,%eax
    17cf:	75 06                	jne    17d7 <phase_4+0x37>
    17d1:	83 3c 24 0e          	cmpl   $0xe,(%rsp)
    17d5:	76 05                	jbe    17dc <phase_4+0x3c>
    17d7:	e8 34 06 00 00       	callq  1e10 <explode_bomb>
    17dc:	ba 0e 00 00 00       	mov    $0xe,%edx
    17e1:	be 00 00 00 00       	mov    $0x0,%esi
    17e6:	8b 3c 24             	mov    (%rsp),%edi
    17e9:	e8 71 ff ff ff       	callq  175f <func4>
    17ee:	0b 44 24 04          	or     0x4(%rsp),%eax
    17f2:	74 05                	je     17f9 <phase_4+0x59>
    17f4:	e8 17 06 00 00       	callq  1e10 <explode_bomb>
    17f9:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    17fe:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1805:	00 00 
    1807:	75 05                	jne    180e <phase_4+0x6e>
    1809:	48 83 c4 18          	add    $0x18,%rsp
    180d:	c3                   	retq   
    180e:	e8 3d fa ff ff       	callq  1250 <__stack_chk_fail@plt>

0000000000001813 <phase_5>:
    1813:	f3 0f 1e fa          	endbr64 
    1817:	48 83 ec 18          	sub    $0x18,%rsp
    181b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1822:	00 00 
    1824:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1829:	31 c0                	xor    %eax,%eax
    182b:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    1830:	48 89 e2             	mov    %rsp,%rdx
    1833:	48 8d 35 eb 1b 00 00 	lea    0x1beb(%rip),%rsi        # 3425 <array.3473+0x265>
    183a:	e8 b1 fa ff ff       	callq  12f0 <__isoc99_sscanf@plt>
    183f:	83 f8 01             	cmp    $0x1,%eax
    1842:	7e 5a                	jle    189e <phase_5+0x8b>
    1844:	8b 04 24             	mov    (%rsp),%eax
    1847:	83 e0 0f             	and    $0xf,%eax
    184a:	89 04 24             	mov    %eax,(%rsp)
    184d:	83 f8 0f             	cmp    $0xf,%eax
    1850:	74 32                	je     1884 <phase_5+0x71>
    1852:	b9 00 00 00 00       	mov    $0x0,%ecx
    1857:	ba 00 00 00 00       	mov    $0x0,%edx
    185c:	48 8d 35 5d 19 00 00 	lea    0x195d(%rip),%rsi        # 31c0 <array.3473>
    1863:	83 c2 01             	add    $0x1,%edx
    1866:	48 98                	cltq   
    1868:	8b 04 86             	mov    (%rsi,%rax,4),%eax
    186b:	01 c1                	add    %eax,%ecx
    186d:	83 f8 0f             	cmp    $0xf,%eax
    1870:	75 f1                	jne    1863 <phase_5+0x50>
    1872:	c7 04 24 0f 00 00 00 	movl   $0xf,(%rsp)
    1879:	83 fa 0f             	cmp    $0xf,%edx
    187c:	75 06                	jne    1884 <phase_5+0x71>
    187e:	39 4c 24 04          	cmp    %ecx,0x4(%rsp)
    1882:	74 05                	je     1889 <phase_5+0x76>
    1884:	e8 87 05 00 00       	callq  1e10 <explode_bomb>
    1889:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    188e:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1895:	00 00 
    1897:	75 0c                	jne    18a5 <phase_5+0x92>
    1899:	48 83 c4 18          	add    $0x18,%rsp
    189d:	c3                   	retq   
    189e:	e8 6d 05 00 00       	callq  1e10 <explode_bomb>
    18a3:	eb 9f                	jmp    1844 <phase_5+0x31>
    18a5:	e8 a6 f9 ff ff       	callq  1250 <__stack_chk_fail@plt>

00000000000018aa <phase_6>:
    18aa:	f3 0f 1e fa          	endbr64 
    18ae:	41 56                	push   %r14
    18b0:	41 55                	push   %r13
    18b2:	41 54                	push   %r12
    18b4:	55                   	push   %rbp
    18b5:	53                   	push   %rbx
    18b6:	48 83 ec 60          	sub    $0x60,%rsp
    18ba:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    18c1:	00 00 
    18c3:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    18c8:	31 c0                	xor    %eax,%eax
    18ca:	49 89 e5             	mov    %rsp,%r13
    18cd:	4c 89 ee             	mov    %r13,%rsi
    18d0:	e8 7d 05 00 00       	callq  1e52 <read_six_numbers>
    18d5:	41 be 01 00 00 00    	mov    $0x1,%r14d
    18db:	49 89 e4             	mov    %rsp,%r12
    18de:	eb 28                	jmp    1908 <phase_6+0x5e>
    18e0:	e8 2b 05 00 00       	callq  1e10 <explode_bomb>
    18e5:	eb 30                	jmp    1917 <phase_6+0x6d>
    18e7:	48 83 c3 01          	add    $0x1,%rbx
    18eb:	83 fb 05             	cmp    $0x5,%ebx
    18ee:	7f 10                	jg     1900 <phase_6+0x56>
    18f0:	41 8b 04 9c          	mov    (%r12,%rbx,4),%eax
    18f4:	39 45 00             	cmp    %eax,0x0(%rbp)
    18f7:	75 ee                	jne    18e7 <phase_6+0x3d>
    18f9:	e8 12 05 00 00       	callq  1e10 <explode_bomb>
    18fe:	eb e7                	jmp    18e7 <phase_6+0x3d>
    1900:	49 83 c6 01          	add    $0x1,%r14
    1904:	49 83 c5 04          	add    $0x4,%r13
    1908:	4c 89 ed             	mov    %r13,%rbp
    190b:	41 8b 45 00          	mov    0x0(%r13),%eax
    190f:	83 e8 01             	sub    $0x1,%eax
    1912:	83 f8 05             	cmp    $0x5,%eax
    1915:	77 c9                	ja     18e0 <phase_6+0x36>
    1917:	41 83 fe 05          	cmp    $0x5,%r14d
    191b:	7f 05                	jg     1922 <phase_6+0x78>
    191d:	4c 89 f3             	mov    %r14,%rbx
    1920:	eb ce                	jmp    18f0 <phase_6+0x46>
    1922:	be 00 00 00 00       	mov    $0x0,%esi
    1927:	8b 0c b4             	mov    (%rsp,%rsi,4),%ecx
    192a:	b8 01 00 00 00       	mov    $0x1,%eax
    192f:	48 8d 15 ea 38 00 00 	lea    0x38ea(%rip),%rdx        # 5220 <node1>
    1936:	83 f9 01             	cmp    $0x1,%ecx
    1939:	7e 0b                	jle    1946 <phase_6+0x9c>
    193b:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    193f:	83 c0 01             	add    $0x1,%eax
    1942:	39 c8                	cmp    %ecx,%eax
    1944:	75 f5                	jne    193b <phase_6+0x91>
    1946:	48 89 54 f4 20       	mov    %rdx,0x20(%rsp,%rsi,8)
    194b:	48 83 c6 01          	add    $0x1,%rsi
    194f:	48 83 fe 06          	cmp    $0x6,%rsi
    1953:	75 d2                	jne    1927 <phase_6+0x7d>
    1955:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
    195a:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    195f:	48 89 43 08          	mov    %rax,0x8(%rbx)
    1963:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
    1968:	48 89 50 08          	mov    %rdx,0x8(%rax)
    196c:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
    1971:	48 89 42 08          	mov    %rax,0x8(%rdx)
    1975:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
    197a:	48 89 50 08          	mov    %rdx,0x8(%rax)
    197e:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
    1983:	48 89 42 08          	mov    %rax,0x8(%rdx)
    1987:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    198e:	00 
    198f:	bd 05 00 00 00       	mov    $0x5,%ebp
    1994:	eb 09                	jmp    199f <phase_6+0xf5>
    1996:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    199a:	83 ed 01             	sub    $0x1,%ebp
    199d:	74 11                	je     19b0 <phase_6+0x106>
    199f:	48 8b 43 08          	mov    0x8(%rbx),%rax
    19a3:	8b 00                	mov    (%rax),%eax
    19a5:	39 03                	cmp    %eax,(%rbx)
    19a7:	7e ed                	jle    1996 <phase_6+0xec>
    19a9:	e8 62 04 00 00       	callq  1e10 <explode_bomb>
    19ae:	eb e6                	jmp    1996 <phase_6+0xec>
    19b0:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    19b5:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    19bc:	00 00 
    19be:	75 0d                	jne    19cd <phase_6+0x123>
    19c0:	48 83 c4 60          	add    $0x60,%rsp
    19c4:	5b                   	pop    %rbx
    19c5:	5d                   	pop    %rbp
    19c6:	41 5c                	pop    %r12
    19c8:	41 5d                	pop    %r13
    19ca:	41 5e                	pop    %r14
    19cc:	c3                   	retq   
    19cd:	e8 7e f8 ff ff       	callq  1250 <__stack_chk_fail@plt>

00000000000019d2 <fun7>:
    19d2:	f3 0f 1e fa          	endbr64 
    19d6:	48 85 ff             	test   %rdi,%rdi
    19d9:	74 32                	je     1a0d <fun7+0x3b>
    19db:	48 83 ec 08          	sub    $0x8,%rsp
    19df:	8b 17                	mov    (%rdi),%edx
    19e1:	39 f2                	cmp    %esi,%edx
    19e3:	7f 0c                	jg     19f1 <fun7+0x1f>
    19e5:	b8 00 00 00 00       	mov    $0x0,%eax
    19ea:	75 12                	jne    19fe <fun7+0x2c>
    19ec:	48 83 c4 08          	add    $0x8,%rsp
    19f0:	c3                   	retq   
    19f1:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
    19f5:	e8 d8 ff ff ff       	callq  19d2 <fun7>
    19fa:	01 c0                	add    %eax,%eax
    19fc:	eb ee                	jmp    19ec <fun7+0x1a>
    19fe:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
    1a02:	e8 cb ff ff ff       	callq  19d2 <fun7>
    1a07:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    1a0b:	eb df                	jmp    19ec <fun7+0x1a>
    1a0d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1a12:	c3                   	retq   

0000000000001a13 <secret_phase>:
    1a13:	f3 0f 1e fa          	endbr64 
    1a17:	53                   	push   %rbx
    1a18:	e8 7a 04 00 00       	callq  1e97 <read_line>
    1a1d:	48 89 c7             	mov    %rax,%rdi
    1a20:	ba 0a 00 00 00       	mov    $0xa,%edx
    1a25:	be 00 00 00 00       	mov    $0x0,%esi
    1a2a:	e8 a1 f8 ff ff       	callq  12d0 <strtol@plt>
    1a2f:	48 89 c3             	mov    %rax,%rbx
    1a32:	8d 40 ff             	lea    -0x1(%rax),%eax
    1a35:	3d e8 03 00 00       	cmp    $0x3e8,%eax
    1a3a:	77 26                	ja     1a62 <secret_phase+0x4f>
    1a3c:	89 de                	mov    %ebx,%esi
    1a3e:	48 8d 3d fb 36 00 00 	lea    0x36fb(%rip),%rdi        # 5140 <n1>
    1a45:	e8 88 ff ff ff       	callq  19d2 <fun7>
    1a4a:	83 f8 02             	cmp    $0x2,%eax
    1a4d:	75 1a                	jne    1a69 <secret_phase+0x56>
    1a4f:	48 8d 3d 22 17 00 00 	lea    0x1722(%rip),%rdi        # 3178 <_IO_stdin_used+0x178>
    1a56:	e8 d5 f7 ff ff       	callq  1230 <puts@plt>
    1a5b:	e8 7f 05 00 00       	callq  1fdf <phase_defused>
    1a60:	5b                   	pop    %rbx
    1a61:	c3                   	retq   
    1a62:	e8 a9 03 00 00       	callq  1e10 <explode_bomb>
    1a67:	eb d3                	jmp    1a3c <secret_phase+0x29>
    1a69:	e8 a2 03 00 00       	callq  1e10 <explode_bomb>
    1a6e:	eb df                	jmp    1a4f <secret_phase+0x3c>

0000000000001a70 <sig_handler>:
    1a70:	f3 0f 1e fa          	endbr64 
    1a74:	50                   	push   %rax
    1a75:	58                   	pop    %rax
    1a76:	48 83 ec 08          	sub    $0x8,%rsp
    1a7a:	48 8d 3d 7f 17 00 00 	lea    0x177f(%rip),%rdi        # 3200 <array.3473+0x40>
    1a81:	e8 aa f7 ff ff       	callq  1230 <puts@plt>
    1a86:	bf 03 00 00 00       	mov    $0x3,%edi
    1a8b:	e8 d0 f8 ff ff       	callq  1360 <sleep@plt>
    1a90:	48 8d 35 0a 19 00 00 	lea    0x190a(%rip),%rsi        # 33a1 <array.3473+0x1e1>
    1a97:	bf 01 00 00 00       	mov    $0x1,%edi
    1a9c:	b8 00 00 00 00       	mov    $0x0,%eax
    1aa1:	e8 5a f8 ff ff       	callq  1300 <__printf_chk@plt>
    1aa6:	48 8b 3d d3 3b 00 00 	mov    0x3bd3(%rip),%rdi        # 5680 <stdout@@GLIBC_2.2.5>
    1aad:	e8 2e f8 ff ff       	callq  12e0 <fflush@plt>
    1ab2:	bf 01 00 00 00       	mov    $0x1,%edi
    1ab7:	e8 a4 f8 ff ff       	callq  1360 <sleep@plt>
    1abc:	48 8d 3d e6 18 00 00 	lea    0x18e6(%rip),%rdi        # 33a9 <array.3473+0x1e9>
    1ac3:	e8 68 f7 ff ff       	callq  1230 <puts@plt>
    1ac8:	bf 10 00 00 00       	mov    $0x10,%edi
    1acd:	e8 5e f8 ff ff       	callq  1330 <exit@plt>

0000000000001ad2 <invalid_phase>:
    1ad2:	f3 0f 1e fa          	endbr64 
    1ad6:	50                   	push   %rax
    1ad7:	58                   	pop    %rax
    1ad8:	48 83 ec 08          	sub    $0x8,%rsp
    1adc:	48 89 fa             	mov    %rdi,%rdx
    1adf:	48 8d 35 cb 18 00 00 	lea    0x18cb(%rip),%rsi        # 33b1 <array.3473+0x1f1>
    1ae6:	bf 01 00 00 00       	mov    $0x1,%edi
    1aeb:	b8 00 00 00 00       	mov    $0x0,%eax
    1af0:	e8 0b f8 ff ff       	callq  1300 <__printf_chk@plt>
    1af5:	bf 08 00 00 00       	mov    $0x8,%edi
    1afa:	e8 31 f8 ff ff       	callq  1330 <exit@plt>

0000000000001aff <string_length>:
    1aff:	f3 0f 1e fa          	endbr64 
    1b03:	80 3f 00             	cmpb   $0x0,(%rdi)
    1b06:	74 12                	je     1b1a <string_length+0x1b>
    1b08:	b8 00 00 00 00       	mov    $0x0,%eax
    1b0d:	48 83 c7 01          	add    $0x1,%rdi
    1b11:	83 c0 01             	add    $0x1,%eax
    1b14:	80 3f 00             	cmpb   $0x0,(%rdi)
    1b17:	75 f4                	jne    1b0d <string_length+0xe>
    1b19:	c3                   	retq   
    1b1a:	b8 00 00 00 00       	mov    $0x0,%eax
    1b1f:	c3                   	retq   

0000000000001b20 <strings_not_equal>:
    1b20:	f3 0f 1e fa          	endbr64 
    1b24:	41 54                	push   %r12
    1b26:	55                   	push   %rbp
    1b27:	53                   	push   %rbx
    1b28:	48 89 fb             	mov    %rdi,%rbx
    1b2b:	48 89 f5             	mov    %rsi,%rbp
    1b2e:	e8 cc ff ff ff       	callq  1aff <string_length>
    1b33:	41 89 c4             	mov    %eax,%r12d
    1b36:	48 89 ef             	mov    %rbp,%rdi
    1b39:	e8 c1 ff ff ff       	callq  1aff <string_length>
    1b3e:	89 c2                	mov    %eax,%edx
    1b40:	b8 01 00 00 00       	mov    $0x1,%eax
    1b45:	41 39 d4             	cmp    %edx,%r12d
    1b48:	75 31                	jne    1b7b <strings_not_equal+0x5b>
    1b4a:	0f b6 13             	movzbl (%rbx),%edx
    1b4d:	84 d2                	test   %dl,%dl
    1b4f:	74 1e                	je     1b6f <strings_not_equal+0x4f>
    1b51:	b8 00 00 00 00       	mov    $0x0,%eax
    1b56:	38 54 05 00          	cmp    %dl,0x0(%rbp,%rax,1)
    1b5a:	75 1a                	jne    1b76 <strings_not_equal+0x56>
    1b5c:	48 83 c0 01          	add    $0x1,%rax
    1b60:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
    1b64:	84 d2                	test   %dl,%dl
    1b66:	75 ee                	jne    1b56 <strings_not_equal+0x36>
    1b68:	b8 00 00 00 00       	mov    $0x0,%eax
    1b6d:	eb 0c                	jmp    1b7b <strings_not_equal+0x5b>
    1b6f:	b8 00 00 00 00       	mov    $0x0,%eax
    1b74:	eb 05                	jmp    1b7b <strings_not_equal+0x5b>
    1b76:	b8 01 00 00 00       	mov    $0x1,%eax
    1b7b:	5b                   	pop    %rbx
    1b7c:	5d                   	pop    %rbp
    1b7d:	41 5c                	pop    %r12
    1b7f:	c3                   	retq   

0000000000001b80 <initialize_bomb>:
    1b80:	f3 0f 1e fa          	endbr64 
    1b84:	55                   	push   %rbp
    1b85:	53                   	push   %rbx
    1b86:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1b8d:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1b92:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1b99:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1b9e:	48 83 ec 58          	sub    $0x58,%rsp
    1ba2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1ba9:	00 00 
    1bab:	48 89 84 24 48 20 00 	mov    %rax,0x2048(%rsp)
    1bb2:	00 
    1bb3:	31 c0                	xor    %eax,%eax
    1bb5:	48 8d 35 b4 fe ff ff 	lea    -0x14c(%rip),%rsi        # 1a70 <sig_handler>
    1bbc:	bf 02 00 00 00       	mov    $0x2,%edi
    1bc1:	e8 da f6 ff ff       	callq  12a0 <signal@plt>
    1bc6:	48 89 e7             	mov    %rsp,%rdi
    1bc9:	be 40 00 00 00       	mov    $0x40,%esi
    1bce:	e8 4d f7 ff ff       	callq  1320 <gethostname@plt>
    1bd3:	85 c0                	test   %eax,%eax
    1bd5:	75 45                	jne    1c1c <initialize_bomb+0x9c>
    1bd7:	48 8b 3d a2 36 00 00 	mov    0x36a2(%rip),%rdi        # 5280 <host_table>
    1bde:	48 8d 1d a3 36 00 00 	lea    0x36a3(%rip),%rbx        # 5288 <host_table+0x8>
    1be5:	48 89 e5             	mov    %rsp,%rbp
    1be8:	48 85 ff             	test   %rdi,%rdi
    1beb:	74 19                	je     1c06 <initialize_bomb+0x86>
    1bed:	48 89 ee             	mov    %rbp,%rsi
    1bf0:	e8 0b f6 ff ff       	callq  1200 <strcasecmp@plt>
    1bf5:	85 c0                	test   %eax,%eax
    1bf7:	74 5e                	je     1c57 <initialize_bomb+0xd7>
    1bf9:	48 83 c3 08          	add    $0x8,%rbx
    1bfd:	48 8b 7b f8          	mov    -0x8(%rbx),%rdi
    1c01:	48 85 ff             	test   %rdi,%rdi
    1c04:	75 e7                	jne    1bed <initialize_bomb+0x6d>
    1c06:	48 8d 3d 63 16 00 00 	lea    0x1663(%rip),%rdi        # 3270 <array.3473+0xb0>
    1c0d:	e8 1e f6 ff ff       	callq  1230 <puts@plt>
    1c12:	bf 08 00 00 00       	mov    $0x8,%edi
    1c17:	e8 14 f7 ff ff       	callq  1330 <exit@plt>
    1c1c:	48 8d 3d 15 16 00 00 	lea    0x1615(%rip),%rdi        # 3238 <array.3473+0x78>
    1c23:	e8 08 f6 ff ff       	callq  1230 <puts@plt>
    1c28:	bf 08 00 00 00       	mov    $0x8,%edi
    1c2d:	e8 fe f6 ff ff       	callq  1330 <exit@plt>
    1c32:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
    1c37:	48 8d 35 84 17 00 00 	lea    0x1784(%rip),%rsi        # 33c2 <array.3473+0x202>
    1c3e:	bf 01 00 00 00       	mov    $0x1,%edi
    1c43:	b8 00 00 00 00       	mov    $0x0,%eax
    1c48:	e8 b3 f6 ff ff       	callq  1300 <__printf_chk@plt>
    1c4d:	bf 08 00 00 00       	mov    $0x8,%edi
    1c52:	e8 d9 f6 ff ff       	callq  1330 <exit@plt>
    1c57:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    1c5c:	e8 a2 0d 00 00       	callq  2a03 <init_driver>
    1c61:	85 c0                	test   %eax,%eax
    1c63:	78 cd                	js     1c32 <initialize_bomb+0xb2>
    1c65:	48 8b 84 24 48 20 00 	mov    0x2048(%rsp),%rax
    1c6c:	00 
    1c6d:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1c74:	00 00 
    1c76:	75 0a                	jne    1c82 <initialize_bomb+0x102>
    1c78:	48 81 c4 58 20 00 00 	add    $0x2058,%rsp
    1c7f:	5b                   	pop    %rbx
    1c80:	5d                   	pop    %rbp
    1c81:	c3                   	retq   
    1c82:	e8 c9 f5 ff ff       	callq  1250 <__stack_chk_fail@plt>

0000000000001c87 <initialize_bomb_solve>:
    1c87:	f3 0f 1e fa          	endbr64 
    1c8b:	c3                   	retq   

0000000000001c8c <blank_line>:
    1c8c:	f3 0f 1e fa          	endbr64 
    1c90:	55                   	push   %rbp
    1c91:	53                   	push   %rbx
    1c92:	48 83 ec 08          	sub    $0x8,%rsp
    1c96:	48 89 fd             	mov    %rdi,%rbp
    1c99:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    1c9d:	84 db                	test   %bl,%bl
    1c9f:	74 1e                	je     1cbf <blank_line+0x33>
    1ca1:	e8 ca f6 ff ff       	callq  1370 <__ctype_b_loc@plt>
    1ca6:	48 83 c5 01          	add    $0x1,%rbp
    1caa:	48 0f be db          	movsbq %bl,%rbx
    1cae:	48 8b 00             	mov    (%rax),%rax
    1cb1:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    1cb6:	75 e1                	jne    1c99 <blank_line+0xd>
    1cb8:	b8 00 00 00 00       	mov    $0x0,%eax
    1cbd:	eb 05                	jmp    1cc4 <blank_line+0x38>
    1cbf:	b8 01 00 00 00       	mov    $0x1,%eax
    1cc4:	48 83 c4 08          	add    $0x8,%rsp
    1cc8:	5b                   	pop    %rbx
    1cc9:	5d                   	pop    %rbp
    1cca:	c3                   	retq   

0000000000001ccb <skip>:
    1ccb:	f3 0f 1e fa          	endbr64 
    1ccf:	55                   	push   %rbp
    1cd0:	53                   	push   %rbx
    1cd1:	48 83 ec 08          	sub    $0x8,%rsp
    1cd5:	48 8d 2d e4 39 00 00 	lea    0x39e4(%rip),%rbp        # 56c0 <input_strings>
    1cdc:	48 63 05 c9 39 00 00 	movslq 0x39c9(%rip),%rax        # 56ac <num_input_strings>
    1ce3:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
    1ce7:	48 c1 e7 04          	shl    $0x4,%rdi
    1ceb:	48 01 ef             	add    %rbp,%rdi
    1cee:	48 8b 15 bb 39 00 00 	mov    0x39bb(%rip),%rdx        # 56b0 <infile>
    1cf5:	be 50 00 00 00       	mov    $0x50,%esi
    1cfa:	e8 91 f5 ff ff       	callq  1290 <fgets@plt>
    1cff:	48 89 c3             	mov    %rax,%rbx
    1d02:	48 85 c0             	test   %rax,%rax
    1d05:	74 0c                	je     1d13 <skip+0x48>
    1d07:	48 89 c7             	mov    %rax,%rdi
    1d0a:	e8 7d ff ff ff       	callq  1c8c <blank_line>
    1d0f:	85 c0                	test   %eax,%eax
    1d11:	75 c9                	jne    1cdc <skip+0x11>
    1d13:	48 89 d8             	mov    %rbx,%rax
    1d16:	48 83 c4 08          	add    $0x8,%rsp
    1d1a:	5b                   	pop    %rbx
    1d1b:	5d                   	pop    %rbp
    1d1c:	c3                   	retq   

0000000000001d1d <send_msg>:
    1d1d:	f3 0f 1e fa          	endbr64 
    1d21:	53                   	push   %rbx
    1d22:	4c 8d 9c 24 00 c0 ff 	lea    -0x4000(%rsp),%r11
    1d29:	ff 
    1d2a:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1d31:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1d36:	4c 39 dc             	cmp    %r11,%rsp
    1d39:	75 ef                	jne    1d2a <send_msg+0xd>
    1d3b:	48 83 ec 10          	sub    $0x10,%rsp
    1d3f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1d46:	00 00 
    1d48:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
    1d4f:	00 
    1d50:	31 c0                	xor    %eax,%eax
    1d52:	8b 15 54 39 00 00    	mov    0x3954(%rip),%edx        # 56ac <num_input_strings>
    1d58:	8d 42 ff             	lea    -0x1(%rdx),%eax
    1d5b:	48 98                	cltq   
    1d5d:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    1d61:	48 c1 e0 04          	shl    $0x4,%rax
    1d65:	48 8d 0d 54 39 00 00 	lea    0x3954(%rip),%rcx        # 56c0 <input_strings>
    1d6c:	48 01 c8             	add    %rcx,%rax
    1d6f:	85 ff                	test   %edi,%edi
    1d71:	4c 8d 0d 64 16 00 00 	lea    0x1664(%rip),%r9        # 33dc <array.3473+0x21c>
    1d78:	48 8d 0d 65 16 00 00 	lea    0x1665(%rip),%rcx        # 33e4 <array.3473+0x224>
    1d7f:	4c 0f 44 c9          	cmove  %rcx,%r9
    1d83:	48 89 e3             	mov    %rsp,%rbx
    1d86:	50                   	push   %rax
    1d87:	52                   	push   %rdx
    1d88:	44 8b 05 ad 33 00 00 	mov    0x33ad(%rip),%r8d        # 513c <bomb_id>
    1d8f:	48 8d 0d 57 16 00 00 	lea    0x1657(%rip),%rcx        # 33ed <array.3473+0x22d>
    1d96:	ba 00 20 00 00       	mov    $0x2000,%edx
    1d9b:	be 01 00 00 00       	mov    $0x1,%esi
    1da0:	48 89 df             	mov    %rbx,%rdi
    1da3:	b8 00 00 00 00       	mov    $0x0,%eax
    1da8:	e8 d3 f5 ff ff       	callq  1380 <__sprintf_chk@plt>
    1dad:	4c 8d 84 24 10 20 00 	lea    0x2010(%rsp),%r8
    1db4:	00 
    1db5:	b9 00 00 00 00       	mov    $0x0,%ecx
    1dba:	48 89 da             	mov    %rbx,%rdx
    1dbd:	48 8d 35 5c 33 00 00 	lea    0x335c(%rip),%rsi        # 5120 <user_password>
    1dc4:	48 8d 3d 6a 33 00 00 	lea    0x336a(%rip),%rdi        # 5135 <userid>
    1dcb:	e8 28 0e 00 00       	callq  2bf8 <driver_post>
    1dd0:	48 83 c4 10          	add    $0x10,%rsp
    1dd4:	85 c0                	test   %eax,%eax
    1dd6:	78 1c                	js     1df4 <send_msg+0xd7>
    1dd8:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
    1ddf:	00 
    1de0:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1de7:	00 00 
    1de9:	75 20                	jne    1e0b <send_msg+0xee>
    1deb:	48 81 c4 10 40 00 00 	add    $0x4010,%rsp
    1df2:	5b                   	pop    %rbx
    1df3:	c3                   	retq   
    1df4:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
    1dfb:	00 
    1dfc:	e8 2f f4 ff ff       	callq  1230 <puts@plt>
    1e01:	bf 00 00 00 00       	mov    $0x0,%edi
    1e06:	e8 25 f5 ff ff       	callq  1330 <exit@plt>
    1e0b:	e8 40 f4 ff ff       	callq  1250 <__stack_chk_fail@plt>

0000000000001e10 <explode_bomb>:
    1e10:	f3 0f 1e fa          	endbr64 
    1e14:	50                   	push   %rax
    1e15:	58                   	pop    %rax
    1e16:	48 83 ec 08          	sub    $0x8,%rsp
    1e1a:	48 8d 3d d8 15 00 00 	lea    0x15d8(%rip),%rdi        # 33f9 <array.3473+0x239>
    1e21:	e8 0a f4 ff ff       	callq  1230 <puts@plt>
    1e26:	48 8d 3d d5 15 00 00 	lea    0x15d5(%rip),%rdi        # 3402 <array.3473+0x242>
    1e2d:	e8 fe f3 ff ff       	callq  1230 <puts@plt>
    1e32:	bf 00 00 00 00       	mov    $0x0,%edi
    1e37:	e8 e1 fe ff ff       	callq  1d1d <send_msg>
    1e3c:	48 8d 3d 65 14 00 00 	lea    0x1465(%rip),%rdi        # 32a8 <array.3473+0xe8>
    1e43:	e8 e8 f3 ff ff       	callq  1230 <puts@plt>
    1e48:	bf 08 00 00 00       	mov    $0x8,%edi
    1e4d:	e8 de f4 ff ff       	callq  1330 <exit@plt>

0000000000001e52 <read_six_numbers>:
    1e52:	f3 0f 1e fa          	endbr64 
    1e56:	48 83 ec 08          	sub    $0x8,%rsp
    1e5a:	48 89 f2             	mov    %rsi,%rdx
    1e5d:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    1e61:	48 8d 46 14          	lea    0x14(%rsi),%rax
    1e65:	50                   	push   %rax
    1e66:	48 8d 46 10          	lea    0x10(%rsi),%rax
    1e6a:	50                   	push   %rax
    1e6b:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    1e6f:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    1e73:	48 8d 35 9f 15 00 00 	lea    0x159f(%rip),%rsi        # 3419 <array.3473+0x259>
    1e7a:	b8 00 00 00 00       	mov    $0x0,%eax
    1e7f:	e8 6c f4 ff ff       	callq  12f0 <__isoc99_sscanf@plt>
    1e84:	48 83 c4 10          	add    $0x10,%rsp
    1e88:	83 f8 05             	cmp    $0x5,%eax
    1e8b:	7e 05                	jle    1e92 <read_six_numbers+0x40>
    1e8d:	48 83 c4 08          	add    $0x8,%rsp
    1e91:	c3                   	retq   
    1e92:	e8 79 ff ff ff       	callq  1e10 <explode_bomb>

0000000000001e97 <read_line>:
    1e97:	f3 0f 1e fa          	endbr64 
    1e9b:	48 83 ec 08          	sub    $0x8,%rsp
    1e9f:	b8 00 00 00 00       	mov    $0x0,%eax
    1ea4:	e8 22 fe ff ff       	callq  1ccb <skip>
    1ea9:	48 85 c0             	test   %rax,%rax
    1eac:	74 6f                	je     1f1d <read_line+0x86>
    1eae:	8b 35 f8 37 00 00    	mov    0x37f8(%rip),%esi        # 56ac <num_input_strings>
    1eb4:	48 63 c6             	movslq %esi,%rax
    1eb7:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
    1ebb:	48 c1 e2 04          	shl    $0x4,%rdx
    1ebf:	48 8d 05 fa 37 00 00 	lea    0x37fa(%rip),%rax        # 56c0 <input_strings>
    1ec6:	48 01 c2             	add    %rax,%rdx
    1ec9:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    1ed0:	b8 00 00 00 00       	mov    $0x0,%eax
    1ed5:	48 89 d7             	mov    %rdx,%rdi
    1ed8:	f2 ae                	repnz scas %es:(%rdi),%al
    1eda:	48 f7 d1             	not    %rcx
    1edd:	48 83 e9 01          	sub    $0x1,%rcx
    1ee1:	83 f9 4e             	cmp    $0x4e,%ecx
    1ee4:	0f 8f ab 00 00 00    	jg     1f95 <read_line+0xfe>
    1eea:	83 e9 01             	sub    $0x1,%ecx
    1eed:	48 63 c9             	movslq %ecx,%rcx
    1ef0:	48 63 c6             	movslq %esi,%rax
    1ef3:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    1ef7:	48 c1 e0 04          	shl    $0x4,%rax
    1efb:	48 89 c7             	mov    %rax,%rdi
    1efe:	48 8d 05 bb 37 00 00 	lea    0x37bb(%rip),%rax        # 56c0 <input_strings>
    1f05:	48 01 f8             	add    %rdi,%rax
    1f08:	c6 04 08 00          	movb   $0x0,(%rax,%rcx,1)
    1f0c:	83 c6 01             	add    $0x1,%esi
    1f0f:	89 35 97 37 00 00    	mov    %esi,0x3797(%rip)        # 56ac <num_input_strings>
    1f15:	48 89 d0             	mov    %rdx,%rax
    1f18:	48 83 c4 08          	add    $0x8,%rsp
    1f1c:	c3                   	retq   
    1f1d:	48 8b 05 6c 37 00 00 	mov    0x376c(%rip),%rax        # 5690 <stdin@@GLIBC_2.2.5>
    1f24:	48 39 05 85 37 00 00 	cmp    %rax,0x3785(%rip)        # 56b0 <infile>
    1f2b:	74 1b                	je     1f48 <read_line+0xb1>
    1f2d:	48 8d 3d 15 15 00 00 	lea    0x1515(%rip),%rdi        # 3449 <array.3473+0x289>
    1f34:	e8 b7 f2 ff ff       	callq  11f0 <getenv@plt>
    1f39:	48 85 c0             	test   %rax,%rax
    1f3c:	74 20                	je     1f5e <read_line+0xc7>
    1f3e:	bf 00 00 00 00       	mov    $0x0,%edi
    1f43:	e8 e8 f3 ff ff       	callq  1330 <exit@plt>
    1f48:	48 8d 3d dc 14 00 00 	lea    0x14dc(%rip),%rdi        # 342b <array.3473+0x26b>
    1f4f:	e8 dc f2 ff ff       	callq  1230 <puts@plt>
    1f54:	bf 08 00 00 00       	mov    $0x8,%edi
    1f59:	e8 d2 f3 ff ff       	callq  1330 <exit@plt>
    1f5e:	48 8b 05 2b 37 00 00 	mov    0x372b(%rip),%rax        # 5690 <stdin@@GLIBC_2.2.5>
    1f65:	48 89 05 44 37 00 00 	mov    %rax,0x3744(%rip)        # 56b0 <infile>
    1f6c:	b8 00 00 00 00       	mov    $0x0,%eax
    1f71:	e8 55 fd ff ff       	callq  1ccb <skip>
    1f76:	48 85 c0             	test   %rax,%rax
    1f79:	0f 85 2f ff ff ff    	jne    1eae <read_line+0x17>
    1f7f:	48 8d 3d a5 14 00 00 	lea    0x14a5(%rip),%rdi        # 342b <array.3473+0x26b>
    1f86:	e8 a5 f2 ff ff       	callq  1230 <puts@plt>
    1f8b:	bf 00 00 00 00       	mov    $0x0,%edi
    1f90:	e8 9b f3 ff ff       	callq  1330 <exit@plt>
    1f95:	48 8d 3d b8 14 00 00 	lea    0x14b8(%rip),%rdi        # 3454 <array.3473+0x294>
    1f9c:	e8 8f f2 ff ff       	callq  1230 <puts@plt>
    1fa1:	8b 05 05 37 00 00    	mov    0x3705(%rip),%eax        # 56ac <num_input_strings>
    1fa7:	8d 50 01             	lea    0x1(%rax),%edx
    1faa:	89 15 fc 36 00 00    	mov    %edx,0x36fc(%rip)        # 56ac <num_input_strings>
    1fb0:	48 98                	cltq   
    1fb2:	48 6b c0 50          	imul   $0x50,%rax,%rax
    1fb6:	48 8d 15 03 37 00 00 	lea    0x3703(%rip),%rdx        # 56c0 <input_strings>
    1fbd:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    1fc4:	75 6e 63 
    1fc7:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    1fce:	2a 2a 00 
    1fd1:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    1fd5:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    1fda:	e8 31 fe ff ff       	callq  1e10 <explode_bomb>

0000000000001fdf <phase_defused>:
    1fdf:	f3 0f 1e fa          	endbr64 
    1fe3:	48 83 ec 78          	sub    $0x78,%rsp
    1fe7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1fee:	00 00 
    1ff0:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    1ff5:	31 c0                	xor    %eax,%eax
    1ff7:	bf 01 00 00 00       	mov    $0x1,%edi
    1ffc:	e8 1c fd ff ff       	callq  1d1d <send_msg>
    2001:	83 3d a4 36 00 00 06 	cmpl   $0x6,0x36a4(%rip)        # 56ac <num_input_strings>
    2008:	74 19                	je     2023 <phase_defused+0x44>
    200a:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
    200f:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    2016:	00 00 
    2018:	0f 85 84 00 00 00    	jne    20a2 <phase_defused+0xc3>
    201e:	48 83 c4 78          	add    $0x78,%rsp
    2022:	c3                   	retq   
    2023:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
    2028:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    202d:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    2032:	48 8d 35 36 14 00 00 	lea    0x1436(%rip),%rsi        # 346f <array.3473+0x2af>
    2039:	48 8d 3d 70 37 00 00 	lea    0x3770(%rip),%rdi        # 57b0 <input_strings+0xf0>
    2040:	b8 00 00 00 00       	mov    $0x0,%eax
    2045:	e8 a6 f2 ff ff       	callq  12f0 <__isoc99_sscanf@plt>
    204a:	83 f8 03             	cmp    $0x3,%eax
    204d:	74 1a                	je     2069 <phase_defused+0x8a>
    204f:	48 8d 3d da 12 00 00 	lea    0x12da(%rip),%rdi        # 3330 <array.3473+0x170>
    2056:	e8 d5 f1 ff ff       	callq  1230 <puts@plt>
    205b:	48 8d 3d fe 12 00 00 	lea    0x12fe(%rip),%rdi        # 3360 <array.3473+0x1a0>
    2062:	e8 c9 f1 ff ff       	callq  1230 <puts@plt>
    2067:	eb a1                	jmp    200a <phase_defused+0x2b>
    2069:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    206e:	48 8d 35 03 14 00 00 	lea    0x1403(%rip),%rsi        # 3478 <array.3473+0x2b8>
    2075:	e8 a6 fa ff ff       	callq  1b20 <strings_not_equal>
    207a:	85 c0                	test   %eax,%eax
    207c:	75 d1                	jne    204f <phase_defused+0x70>
    207e:	48 8d 3d 4b 12 00 00 	lea    0x124b(%rip),%rdi        # 32d0 <array.3473+0x110>
    2085:	e8 a6 f1 ff ff       	callq  1230 <puts@plt>
    208a:	48 8d 3d 67 12 00 00 	lea    0x1267(%rip),%rdi        # 32f8 <array.3473+0x138>
    2091:	e8 9a f1 ff ff       	callq  1230 <puts@plt>
    2096:	b8 00 00 00 00       	mov    $0x0,%eax
    209b:	e8 73 f9 ff ff       	callq  1a13 <secret_phase>
    20a0:	eb ad                	jmp    204f <phase_defused+0x70>
    20a2:	e8 a9 f1 ff ff       	callq  1250 <__stack_chk_fail@plt>

00000000000020a7 <sigalrm_handler>:
    20a7:	f3 0f 1e fa          	endbr64 
    20ab:	50                   	push   %rax
    20ac:	58                   	pop    %rax
    20ad:	48 83 ec 08          	sub    $0x8,%rsp
    20b1:	b9 00 00 00 00       	mov    $0x0,%ecx
    20b6:	48 8d 15 2b 14 00 00 	lea    0x142b(%rip),%rdx        # 34e8 <array.3473+0x328>
    20bd:	be 01 00 00 00       	mov    $0x1,%esi
    20c2:	48 8b 3d d7 35 00 00 	mov    0x35d7(%rip),%rdi        # 56a0 <stderr@@GLIBC_2.2.5>
    20c9:	b8 00 00 00 00       	mov    $0x0,%eax
    20ce:	e8 7d f2 ff ff       	callq  1350 <__fprintf_chk@plt>
    20d3:	bf 01 00 00 00       	mov    $0x1,%edi
    20d8:	e8 53 f2 ff ff       	callq  1330 <exit@plt>

00000000000020dd <rio_readlineb>:
    20dd:	41 56                	push   %r14
    20df:	41 55                	push   %r13
    20e1:	41 54                	push   %r12
    20e3:	55                   	push   %rbp
    20e4:	53                   	push   %rbx
    20e5:	48 89 f5             	mov    %rsi,%rbp
    20e8:	48 83 fa 01          	cmp    $0x1,%rdx
    20ec:	0f 86 90 00 00 00    	jbe    2182 <rio_readlineb+0xa5>
    20f2:	48 89 fb             	mov    %rdi,%rbx
    20f5:	4c 8d 74 16 ff       	lea    -0x1(%rsi,%rdx,1),%r14
    20fa:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    2100:	4c 8d 67 10          	lea    0x10(%rdi),%r12
    2104:	eb 54                	jmp    215a <rio_readlineb+0x7d>
    2106:	e8 05 f1 ff ff       	callq  1210 <__errno_location@plt>
    210b:	83 38 04             	cmpl   $0x4,(%rax)
    210e:	75 53                	jne    2163 <rio_readlineb+0x86>
    2110:	ba 00 20 00 00       	mov    $0x2000,%edx
    2115:	4c 89 e6             	mov    %r12,%rsi
    2118:	8b 3b                	mov    (%rbx),%edi
    211a:	e8 61 f1 ff ff       	callq  1280 <read@plt>
    211f:	89 c2                	mov    %eax,%edx
    2121:	89 43 04             	mov    %eax,0x4(%rbx)
    2124:	85 c0                	test   %eax,%eax
    2126:	78 de                	js     2106 <rio_readlineb+0x29>
    2128:	85 c0                	test   %eax,%eax
    212a:	74 40                	je     216c <rio_readlineb+0x8f>
    212c:	4c 89 63 08          	mov    %r12,0x8(%rbx)
    2130:	48 8b 43 08          	mov    0x8(%rbx),%rax
    2134:	0f b6 08             	movzbl (%rax),%ecx
    2137:	48 83 c0 01          	add    $0x1,%rax
    213b:	48 89 43 08          	mov    %rax,0x8(%rbx)
    213f:	83 ea 01             	sub    $0x1,%edx
    2142:	89 53 04             	mov    %edx,0x4(%rbx)
    2145:	48 83 c5 01          	add    $0x1,%rbp
    2149:	88 4d ff             	mov    %cl,-0x1(%rbp)
    214c:	80 f9 0a             	cmp    $0xa,%cl
    214f:	74 3c                	je     218d <rio_readlineb+0xb0>
    2151:	41 83 c5 01          	add    $0x1,%r13d
    2155:	4c 39 f5             	cmp    %r14,%rbp
    2158:	74 30                	je     218a <rio_readlineb+0xad>
    215a:	8b 53 04             	mov    0x4(%rbx),%edx
    215d:	85 d2                	test   %edx,%edx
    215f:	7e af                	jle    2110 <rio_readlineb+0x33>
    2161:	eb cd                	jmp    2130 <rio_readlineb+0x53>
    2163:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    216a:	eb 05                	jmp    2171 <rio_readlineb+0x94>
    216c:	b8 00 00 00 00       	mov    $0x0,%eax
    2171:	85 c0                	test   %eax,%eax
    2173:	75 28                	jne    219d <rio_readlineb+0xc0>
    2175:	b8 00 00 00 00       	mov    $0x0,%eax
    217a:	41 83 fd 01          	cmp    $0x1,%r13d
    217e:	75 0d                	jne    218d <rio_readlineb+0xb0>
    2180:	eb 12                	jmp    2194 <rio_readlineb+0xb7>
    2182:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    2188:	eb 03                	jmp    218d <rio_readlineb+0xb0>
    218a:	4c 89 f5             	mov    %r14,%rbp
    218d:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
    2191:	49 63 c5             	movslq %r13d,%rax
    2194:	5b                   	pop    %rbx
    2195:	5d                   	pop    %rbp
    2196:	41 5c                	pop    %r12
    2198:	41 5d                	pop    %r13
    219a:	41 5e                	pop    %r14
    219c:	c3                   	retq   
    219d:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    21a4:	eb ee                	jmp    2194 <rio_readlineb+0xb7>

00000000000021a6 <submitr>:
    21a6:	f3 0f 1e fa          	endbr64 
    21aa:	41 57                	push   %r15
    21ac:	41 56                	push   %r14
    21ae:	41 55                	push   %r13
    21b0:	41 54                	push   %r12
    21b2:	55                   	push   %rbp
    21b3:	53                   	push   %rbx
    21b4:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
    21bb:	ff 
    21bc:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    21c3:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    21c8:	4c 39 dc             	cmp    %r11,%rsp
    21cb:	75 ef                	jne    21bc <submitr+0x16>
    21cd:	48 83 ec 68          	sub    $0x68,%rsp
    21d1:	49 89 fd             	mov    %rdi,%r13
    21d4:	89 f5                	mov    %esi,%ebp
    21d6:	48 89 14 24          	mov    %rdx,(%rsp)
    21da:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    21df:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
    21e4:	4c 89 4c 24 10       	mov    %r9,0x10(%rsp)
    21e9:	48 8b 9c 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbx
    21f0:	00 
    21f1:	4c 8b bc 24 a8 a0 00 	mov    0xa0a8(%rsp),%r15
    21f8:	00 
    21f9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2200:	00 00 
    2202:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
    2209:	00 
    220a:	31 c0                	xor    %eax,%eax
    220c:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
    2213:	00 
    2214:	ba 00 00 00 00       	mov    $0x0,%edx
    2219:	be 01 00 00 00       	mov    $0x1,%esi
    221e:	bf 02 00 00 00       	mov    $0x2,%edi
    2223:	e8 68 f1 ff ff       	callq  1390 <socket@plt>
    2228:	85 c0                	test   %eax,%eax
    222a:	0f 88 17 01 00 00    	js     2347 <submitr+0x1a1>
    2230:	41 89 c4             	mov    %eax,%r12d
    2233:	4c 89 ef             	mov    %r13,%rdi
    2236:	e8 75 f0 ff ff       	callq  12b0 <gethostbyname@plt>
    223b:	48 85 c0             	test   %rax,%rax
    223e:	0f 84 53 01 00 00    	je     2397 <submitr+0x1f1>
    2244:	4c 8d 6c 24 30       	lea    0x30(%rsp),%r13
    2249:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
    2250:	00 00 
    2252:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
    2259:	00 00 
    225b:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
    2262:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2266:	48 8b 40 18          	mov    0x18(%rax),%rax
    226a:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
    226f:	b9 0c 00 00 00       	mov    $0xc,%ecx
    2274:	48 8b 30             	mov    (%rax),%rsi
    2277:	e8 44 f0 ff ff       	callq  12c0 <__memmove_chk@plt>
    227c:	66 c1 c5 08          	rol    $0x8,%bp
    2280:	66 89 6c 24 32       	mov    %bp,0x32(%rsp)
    2285:	ba 10 00 00 00       	mov    $0x10,%edx
    228a:	4c 89 ee             	mov    %r13,%rsi
    228d:	44 89 e7             	mov    %r12d,%edi
    2290:	e8 ab f0 ff ff       	callq  1340 <connect@plt>
    2295:	85 c0                	test   %eax,%eax
    2297:	0f 88 65 01 00 00    	js     2402 <submitr+0x25c>
    229d:	49 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%r9
    22a4:	b8 00 00 00 00       	mov    $0x0,%eax
    22a9:	4c 89 c9             	mov    %r9,%rcx
    22ac:	48 89 df             	mov    %rbx,%rdi
    22af:	f2 ae                	repnz scas %es:(%rdi),%al
    22b1:	48 f7 d1             	not    %rcx
    22b4:	48 89 ce             	mov    %rcx,%rsi
    22b7:	4c 89 c9             	mov    %r9,%rcx
    22ba:	48 8b 3c 24          	mov    (%rsp),%rdi
    22be:	f2 ae                	repnz scas %es:(%rdi),%al
    22c0:	49 89 c8             	mov    %rcx,%r8
    22c3:	4c 89 c9             	mov    %r9,%rcx
    22c6:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    22cb:	f2 ae                	repnz scas %es:(%rdi),%al
    22cd:	48 89 ca             	mov    %rcx,%rdx
    22d0:	48 f7 d2             	not    %rdx
    22d3:	4c 89 c9             	mov    %r9,%rcx
    22d6:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    22db:	f2 ae                	repnz scas %es:(%rdi),%al
    22dd:	4c 29 c2             	sub    %r8,%rdx
    22e0:	48 29 ca             	sub    %rcx,%rdx
    22e3:	48 8d 44 76 fd       	lea    -0x3(%rsi,%rsi,2),%rax
    22e8:	48 8d 44 02 7b       	lea    0x7b(%rdx,%rax,1),%rax
    22ed:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    22f3:	0f 87 66 01 00 00    	ja     245f <submitr+0x2b9>
    22f9:	48 8d 94 24 50 40 00 	lea    0x4050(%rsp),%rdx
    2300:	00 
    2301:	b9 00 04 00 00       	mov    $0x400,%ecx
    2306:	b8 00 00 00 00       	mov    $0x0,%eax
    230b:	48 89 d7             	mov    %rdx,%rdi
    230e:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    2311:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    2318:	48 89 df             	mov    %rbx,%rdi
    231b:	f2 ae                	repnz scas %es:(%rdi),%al
    231d:	48 f7 d1             	not    %rcx
    2320:	48 8d 41 ff          	lea    -0x1(%rcx),%rax
    2324:	83 f9 01             	cmp    $0x1,%ecx
    2327:	0f 84 08 05 00 00    	je     2835 <submitr+0x68f>
    232d:	8d 40 ff             	lea    -0x1(%rax),%eax
    2330:	4c 8d 74 03 01       	lea    0x1(%rbx,%rax,1),%r14
    2335:	48 89 d5             	mov    %rdx,%rbp
    2338:	49 bd d9 ff 00 00 00 	movabs $0x2000000000ffd9,%r13
    233f:	00 20 00 
    2342:	e9 a6 01 00 00       	jmpq   24ed <submitr+0x347>
    2347:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    234e:	3a 20 43 
    2351:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2358:	20 75 6e 
    235b:	49 89 07             	mov    %rax,(%r15)
    235e:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2362:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2369:	74 6f 20 
    236c:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2373:	65 20 73 
    2376:	49 89 47 10          	mov    %rax,0x10(%r15)
    237a:	49 89 57 18          	mov    %rdx,0x18(%r15)
    237e:	41 c7 47 20 6f 63 6b 	movl   $0x656b636f,0x20(%r15)
    2385:	65 
    2386:	66 41 c7 47 24 74 00 	movw   $0x74,0x24(%r15)
    238d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2392:	e9 16 03 00 00       	jmpq   26ad <submitr+0x507>
    2397:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    239e:	3a 20 44 
    23a1:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    23a8:	20 75 6e 
    23ab:	49 89 07             	mov    %rax,(%r15)
    23ae:	49 89 57 08          	mov    %rdx,0x8(%r15)
    23b2:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    23b9:	74 6f 20 
    23bc:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    23c3:	76 65 20 
    23c6:	49 89 47 10          	mov    %rax,0x10(%r15)
    23ca:	49 89 57 18          	mov    %rdx,0x18(%r15)
    23ce:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    23d5:	72 20 61 
    23d8:	49 89 47 20          	mov    %rax,0x20(%r15)
    23dc:	41 c7 47 28 64 64 72 	movl   $0x65726464,0x28(%r15)
    23e3:	65 
    23e4:	66 41 c7 47 2c 73 73 	movw   $0x7373,0x2c(%r15)
    23eb:	41 c6 47 2e 00       	movb   $0x0,0x2e(%r15)
    23f0:	44 89 e7             	mov    %r12d,%edi
    23f3:	e8 78 ee ff ff       	callq  1270 <close@plt>
    23f8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    23fd:	e9 ab 02 00 00       	jmpq   26ad <submitr+0x507>
    2402:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    2409:	3a 20 55 
    240c:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    2413:	20 74 6f 
    2416:	49 89 07             	mov    %rax,(%r15)
    2419:	49 89 57 08          	mov    %rdx,0x8(%r15)
    241d:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    2424:	65 63 74 
    2427:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    242e:	68 65 20 
    2431:	49 89 47 10          	mov    %rax,0x10(%r15)
    2435:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2439:	41 c7 47 20 73 65 72 	movl   $0x76726573,0x20(%r15)
    2440:	76 
    2441:	66 41 c7 47 24 65 72 	movw   $0x7265,0x24(%r15)
    2448:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
    244d:	44 89 e7             	mov    %r12d,%edi
    2450:	e8 1b ee ff ff       	callq  1270 <close@plt>
    2455:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    245a:	e9 4e 02 00 00       	jmpq   26ad <submitr+0x507>
    245f:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2466:	3a 20 52 
    2469:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    2470:	20 73 74 
    2473:	49 89 07             	mov    %rax,(%r15)
    2476:	49 89 57 08          	mov    %rdx,0x8(%r15)
    247a:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    2481:	74 6f 6f 
    2484:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    248b:	65 2e 20 
    248e:	49 89 47 10          	mov    %rax,0x10(%r15)
    2492:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2496:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    249d:	61 73 65 
    24a0:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    24a7:	49 54 52 
    24aa:	49 89 47 20          	mov    %rax,0x20(%r15)
    24ae:	49 89 57 28          	mov    %rdx,0x28(%r15)
    24b2:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    24b9:	55 46 00 
    24bc:	49 89 47 30          	mov    %rax,0x30(%r15)
    24c0:	44 89 e7             	mov    %r12d,%edi
    24c3:	e8 a8 ed ff ff       	callq  1270 <close@plt>
    24c8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    24cd:	e9 db 01 00 00       	jmpq   26ad <submitr+0x507>
    24d2:	49 0f a3 c5          	bt     %rax,%r13
    24d6:	73 21                	jae    24f9 <submitr+0x353>
    24d8:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    24dc:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    24e0:	48 83 c3 01          	add    $0x1,%rbx
    24e4:	4c 39 f3             	cmp    %r14,%rbx
    24e7:	0f 84 48 03 00 00    	je     2835 <submitr+0x68f>
    24ed:	44 0f b6 03          	movzbl (%rbx),%r8d
    24f1:	41 8d 40 d6          	lea    -0x2a(%r8),%eax
    24f5:	3c 35                	cmp    $0x35,%al
    24f7:	76 d9                	jbe    24d2 <submitr+0x32c>
    24f9:	44 89 c0             	mov    %r8d,%eax
    24fc:	83 e0 df             	and    $0xffffffdf,%eax
    24ff:	83 e8 41             	sub    $0x41,%eax
    2502:	3c 19                	cmp    $0x19,%al
    2504:	76 d2                	jbe    24d8 <submitr+0x332>
    2506:	41 80 f8 20          	cmp    $0x20,%r8b
    250a:	74 63                	je     256f <submitr+0x3c9>
    250c:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    2510:	3c 5f                	cmp    $0x5f,%al
    2512:	76 0a                	jbe    251e <submitr+0x378>
    2514:	41 80 f8 09          	cmp    $0x9,%r8b
    2518:	0f 85 8a 02 00 00    	jne    27a8 <submitr+0x602>
    251e:	48 8d bc 24 50 80 00 	lea    0x8050(%rsp),%rdi
    2525:	00 
    2526:	45 0f b6 c0          	movzbl %r8b,%r8d
    252a:	48 8d 0d 8d 10 00 00 	lea    0x108d(%rip),%rcx        # 35be <array.3473+0x3fe>
    2531:	ba 08 00 00 00       	mov    $0x8,%edx
    2536:	be 01 00 00 00       	mov    $0x1,%esi
    253b:	b8 00 00 00 00       	mov    $0x0,%eax
    2540:	e8 3b ee ff ff       	callq  1380 <__sprintf_chk@plt>
    2545:	0f b6 84 24 50 80 00 	movzbl 0x8050(%rsp),%eax
    254c:	00 
    254d:	88 45 00             	mov    %al,0x0(%rbp)
    2550:	0f b6 84 24 51 80 00 	movzbl 0x8051(%rsp),%eax
    2557:	00 
    2558:	88 45 01             	mov    %al,0x1(%rbp)
    255b:	0f b6 84 24 52 80 00 	movzbl 0x8052(%rsp),%eax
    2562:	00 
    2563:	88 45 02             	mov    %al,0x2(%rbp)
    2566:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    256a:	e9 71 ff ff ff       	jmpq   24e0 <submitr+0x33a>
    256f:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    2573:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    2577:	e9 64 ff ff ff       	jmpq   24e0 <submitr+0x33a>
    257c:	48 01 c5             	add    %rax,%rbp
    257f:	48 29 c3             	sub    %rax,%rbx
    2582:	0f 84 25 03 00 00    	je     28ad <submitr+0x707>
    2588:	48 89 da             	mov    %rbx,%rdx
    258b:	48 89 ee             	mov    %rbp,%rsi
    258e:	44 89 e7             	mov    %r12d,%edi
    2591:	e8 aa ec ff ff       	callq  1240 <write@plt>
    2596:	48 85 c0             	test   %rax,%rax
    2599:	7f e1                	jg     257c <submitr+0x3d6>
    259b:	e8 70 ec ff ff       	callq  1210 <__errno_location@plt>
    25a0:	83 38 04             	cmpl   $0x4,(%rax)
    25a3:	0f 85 a0 01 00 00    	jne    2749 <submitr+0x5a3>
    25a9:	4c 89 e8             	mov    %r13,%rax
    25ac:	eb ce                	jmp    257c <submitr+0x3d6>
    25ae:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    25b5:	3a 20 43 
    25b8:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    25bf:	20 75 6e 
    25c2:	49 89 07             	mov    %rax,(%r15)
    25c5:	49 89 57 08          	mov    %rdx,0x8(%r15)
    25c9:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    25d0:	74 6f 20 
    25d3:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    25da:	66 69 72 
    25dd:	49 89 47 10          	mov    %rax,0x10(%r15)
    25e1:	49 89 57 18          	mov    %rdx,0x18(%r15)
    25e5:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    25ec:	61 64 65 
    25ef:	48 ba 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rdx
    25f6:	6d 20 73 
    25f9:	49 89 47 20          	mov    %rax,0x20(%r15)
    25fd:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2601:	41 c7 47 30 65 72 76 	movl   $0x65767265,0x30(%r15)
    2608:	65 
    2609:	66 41 c7 47 34 72 00 	movw   $0x72,0x34(%r15)
    2610:	44 89 e7             	mov    %r12d,%edi
    2613:	e8 58 ec ff ff       	callq  1270 <close@plt>
    2618:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    261d:	e9 8b 00 00 00       	jmpq   26ad <submitr+0x507>
    2622:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
    2629:	00 
    262a:	48 8d 0d df 0e 00 00 	lea    0xedf(%rip),%rcx        # 3510 <array.3473+0x350>
    2631:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    2638:	be 01 00 00 00       	mov    $0x1,%esi
    263d:	4c 89 ff             	mov    %r15,%rdi
    2640:	b8 00 00 00 00       	mov    $0x0,%eax
    2645:	e8 36 ed ff ff       	callq  1380 <__sprintf_chk@plt>
    264a:	44 89 e7             	mov    %r12d,%edi
    264d:	e8 1e ec ff ff       	callq  1270 <close@plt>
    2652:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2657:	eb 54                	jmp    26ad <submitr+0x507>
    2659:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2660:	00 
    2661:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    2666:	ba 00 20 00 00       	mov    $0x2000,%edx
    266b:	e8 6d fa ff ff       	callq  20dd <rio_readlineb>
    2670:	48 85 c0             	test   %rax,%rax
    2673:	7e 61                	jle    26d6 <submitr+0x530>
    2675:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    267c:	00 
    267d:	4c 89 ff             	mov    %r15,%rdi
    2680:	e8 9b eb ff ff       	callq  1220 <strcpy@plt>
    2685:	44 89 e7             	mov    %r12d,%edi
    2688:	e8 e3 eb ff ff       	callq  1270 <close@plt>
    268d:	b9 03 00 00 00       	mov    $0x3,%ecx
    2692:	48 8d 3d 40 0f 00 00 	lea    0xf40(%rip),%rdi        # 35d9 <array.3473+0x419>
    2699:	4c 89 fe             	mov    %r15,%rsi
    269c:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    269e:	0f 97 c0             	seta   %al
    26a1:	1c 00                	sbb    $0x0,%al
    26a3:	84 c0                	test   %al,%al
    26a5:	0f 95 c0             	setne  %al
    26a8:	0f b6 c0             	movzbl %al,%eax
    26ab:	f7 d8                	neg    %eax
    26ad:	48 8b 94 24 58 a0 00 	mov    0xa058(%rsp),%rdx
    26b4:	00 
    26b5:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
    26bc:	00 00 
    26be:	0f 85 0c 03 00 00    	jne    29d0 <submitr+0x82a>
    26c4:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
    26cb:	5b                   	pop    %rbx
    26cc:	5d                   	pop    %rbp
    26cd:	41 5c                	pop    %r12
    26cf:	41 5d                	pop    %r13
    26d1:	41 5e                	pop    %r14
    26d3:	41 5f                	pop    %r15
    26d5:	c3                   	retq   
    26d6:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    26dd:	3a 20 43 
    26e0:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    26e7:	20 75 6e 
    26ea:	49 89 07             	mov    %rax,(%r15)
    26ed:	49 89 57 08          	mov    %rdx,0x8(%r15)
    26f1:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    26f8:	74 6f 20 
    26fb:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    2702:	73 74 61 
    2705:	49 89 47 10          	mov    %rax,0x10(%r15)
    2709:	49 89 57 18          	mov    %rdx,0x18(%r15)
    270d:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    2714:	65 73 73 
    2717:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    271e:	72 6f 6d 
    2721:	49 89 47 20          	mov    %rax,0x20(%r15)
    2725:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2729:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
    2730:	65 72 00 
    2733:	49 89 47 30          	mov    %rax,0x30(%r15)
    2737:	44 89 e7             	mov    %r12d,%edi
    273a:	e8 31 eb ff ff       	callq  1270 <close@plt>
    273f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2744:	e9 64 ff ff ff       	jmpq   26ad <submitr+0x507>
    2749:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2750:	3a 20 43 
    2753:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    275a:	20 75 6e 
    275d:	49 89 07             	mov    %rax,(%r15)
    2760:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2764:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    276b:	74 6f 20 
    276e:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    2775:	20 74 6f 
    2778:	49 89 47 10          	mov    %rax,0x10(%r15)
    277c:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2780:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
    2787:	73 65 72 
    278a:	49 89 47 20          	mov    %rax,0x20(%r15)
    278e:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
    2795:	00 
    2796:	44 89 e7             	mov    %r12d,%edi
    2799:	e8 d2 ea ff ff       	callq  1270 <close@plt>
    279e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    27a3:	e9 05 ff ff ff       	jmpq   26ad <submitr+0x507>
    27a8:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    27af:	3a 20 52 
    27b2:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    27b9:	20 73 74 
    27bc:	49 89 07             	mov    %rax,(%r15)
    27bf:	49 89 57 08          	mov    %rdx,0x8(%r15)
    27c3:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    27ca:	63 6f 6e 
    27cd:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    27d4:	20 61 6e 
    27d7:	49 89 47 10          	mov    %rax,0x10(%r15)
    27db:	49 89 57 18          	mov    %rdx,0x18(%r15)
    27df:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    27e6:	67 61 6c 
    27e9:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    27f0:	6e 70 72 
    27f3:	49 89 47 20          	mov    %rax,0x20(%r15)
    27f7:	49 89 57 28          	mov    %rdx,0x28(%r15)
    27fb:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    2802:	6c 65 20 
    2805:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    280c:	63 74 65 
    280f:	49 89 47 30          	mov    %rax,0x30(%r15)
    2813:	49 89 57 38          	mov    %rdx,0x38(%r15)
    2817:	66 41 c7 47 40 72 2e 	movw   $0x2e72,0x40(%r15)
    281e:	41 c6 47 42 00       	movb   $0x0,0x42(%r15)
    2823:	44 89 e7             	mov    %r12d,%edi
    2826:	e8 45 ea ff ff       	callq  1270 <close@plt>
    282b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2830:	e9 78 fe ff ff       	jmpq   26ad <submitr+0x507>
    2835:	48 8d 9c 24 50 20 00 	lea    0x2050(%rsp),%rbx
    283c:	00 
    283d:	48 83 ec 08          	sub    $0x8,%rsp
    2841:	48 8d 84 24 58 40 00 	lea    0x4058(%rsp),%rax
    2848:	00 
    2849:	50                   	push   %rax
    284a:	ff 74 24 20          	pushq  0x20(%rsp)
    284e:	ff 74 24 30          	pushq  0x30(%rsp)
    2852:	4c 8b 4c 24 28       	mov    0x28(%rsp),%r9
    2857:	4c 8b 44 24 20       	mov    0x20(%rsp),%r8
    285c:	48 8d 0d dd 0c 00 00 	lea    0xcdd(%rip),%rcx        # 3540 <array.3473+0x380>
    2863:	ba 00 20 00 00       	mov    $0x2000,%edx
    2868:	be 01 00 00 00       	mov    $0x1,%esi
    286d:	48 89 df             	mov    %rbx,%rdi
    2870:	b8 00 00 00 00       	mov    $0x0,%eax
    2875:	e8 06 eb ff ff       	callq  1380 <__sprintf_chk@plt>
    287a:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    2881:	b8 00 00 00 00       	mov    $0x0,%eax
    2886:	48 89 df             	mov    %rbx,%rdi
    2889:	f2 ae                	repnz scas %es:(%rdi),%al
    288b:	48 f7 d1             	not    %rcx
    288e:	48 83 c4 20          	add    $0x20,%rsp
    2892:	48 8d ac 24 50 20 00 	lea    0x2050(%rsp),%rbp
    2899:	00 
    289a:	41 bd 00 00 00 00    	mov    $0x0,%r13d
    28a0:	48 89 cb             	mov    %rcx,%rbx
    28a3:	48 83 eb 01          	sub    $0x1,%rbx
    28a7:	0f 85 db fc ff ff    	jne    2588 <submitr+0x3e2>
    28ad:	44 89 64 24 40       	mov    %r12d,0x40(%rsp)
    28b2:	c7 44 24 44 00 00 00 	movl   $0x0,0x44(%rsp)
    28b9:	00 
    28ba:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    28bf:	48 8d 44 24 50       	lea    0x50(%rsp),%rax
    28c4:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
    28c9:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    28d0:	00 
    28d1:	ba 00 20 00 00       	mov    $0x2000,%edx
    28d6:	e8 02 f8 ff ff       	callq  20dd <rio_readlineb>
    28db:	48 85 c0             	test   %rax,%rax
    28de:	0f 8e ca fc ff ff    	jle    25ae <submitr+0x408>
    28e4:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
    28e9:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
    28f0:	00 
    28f1:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
    28f8:	00 
    28f9:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
    2900:	00 
    2901:	48 8d 35 bd 0c 00 00 	lea    0xcbd(%rip),%rsi        # 35c5 <array.3473+0x405>
    2908:	b8 00 00 00 00       	mov    $0x0,%eax
    290d:	e8 de e9 ff ff       	callq  12f0 <__isoc99_sscanf@plt>
    2912:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
    2917:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    291e:	0f 85 fe fc ff ff    	jne    2622 <submitr+0x47c>
    2924:	48 8d 1d ab 0c 00 00 	lea    0xcab(%rip),%rbx        # 35d6 <array.3473+0x416>
    292b:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2932:	00 
    2933:	b9 03 00 00 00       	mov    $0x3,%ecx
    2938:	48 89 df             	mov    %rbx,%rdi
    293b:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    293d:	0f 97 c0             	seta   %al
    2940:	1c 00                	sbb    $0x0,%al
    2942:	84 c0                	test   %al,%al
    2944:	0f 84 0f fd ff ff    	je     2659 <submitr+0x4b3>
    294a:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2951:	00 
    2952:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    2957:	ba 00 20 00 00       	mov    $0x2000,%edx
    295c:	e8 7c f7 ff ff       	callq  20dd <rio_readlineb>
    2961:	48 85 c0             	test   %rax,%rax
    2964:	7f c5                	jg     292b <submitr+0x785>
    2966:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    296d:	3a 20 43 
    2970:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2977:	20 75 6e 
    297a:	49 89 07             	mov    %rax,(%r15)
    297d:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2981:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2988:	74 6f 20 
    298b:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    2992:	68 65 61 
    2995:	49 89 47 10          	mov    %rax,0x10(%r15)
    2999:	49 89 57 18          	mov    %rdx,0x18(%r15)
    299d:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    29a4:	66 72 6f 
    29a7:	48 ba 6d 20 73 65 72 	movabs $0x726576726573206d,%rdx
    29ae:	76 65 72 
    29b1:	49 89 47 20          	mov    %rax,0x20(%r15)
    29b5:	49 89 57 28          	mov    %rdx,0x28(%r15)
    29b9:	41 c6 47 30 00       	movb   $0x0,0x30(%r15)
    29be:	44 89 e7             	mov    %r12d,%edi
    29c1:	e8 aa e8 ff ff       	callq  1270 <close@plt>
    29c6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    29cb:	e9 dd fc ff ff       	jmpq   26ad <submitr+0x507>
    29d0:	e8 7b e8 ff ff       	callq  1250 <__stack_chk_fail@plt>

00000000000029d5 <init_timeout>:
    29d5:	f3 0f 1e fa          	endbr64 
    29d9:	85 ff                	test   %edi,%edi
    29db:	75 01                	jne    29de <init_timeout+0x9>
    29dd:	c3                   	retq   
    29de:	53                   	push   %rbx
    29df:	89 fb                	mov    %edi,%ebx
    29e1:	48 8d 35 bf f6 ff ff 	lea    -0x941(%rip),%rsi        # 20a7 <sigalrm_handler>
    29e8:	bf 0e 00 00 00       	mov    $0xe,%edi
    29ed:	e8 ae e8 ff ff       	callq  12a0 <signal@plt>
    29f2:	85 db                	test   %ebx,%ebx
    29f4:	bf 00 00 00 00       	mov    $0x0,%edi
    29f9:	0f 49 fb             	cmovns %ebx,%edi
    29fc:	e8 5f e8 ff ff       	callq  1260 <alarm@plt>
    2a01:	5b                   	pop    %rbx
    2a02:	c3                   	retq   

0000000000002a03 <init_driver>:
    2a03:	f3 0f 1e fa          	endbr64 
    2a07:	41 54                	push   %r12
    2a09:	55                   	push   %rbp
    2a0a:	53                   	push   %rbx
    2a0b:	48 83 ec 20          	sub    $0x20,%rsp
    2a0f:	48 89 fd             	mov    %rdi,%rbp
    2a12:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2a19:	00 00 
    2a1b:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    2a20:	31 c0                	xor    %eax,%eax
    2a22:	be 01 00 00 00       	mov    $0x1,%esi
    2a27:	bf 0d 00 00 00       	mov    $0xd,%edi
    2a2c:	e8 6f e8 ff ff       	callq  12a0 <signal@plt>
    2a31:	be 01 00 00 00       	mov    $0x1,%esi
    2a36:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2a3b:	e8 60 e8 ff ff       	callq  12a0 <signal@plt>
    2a40:	be 01 00 00 00       	mov    $0x1,%esi
    2a45:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2a4a:	e8 51 e8 ff ff       	callq  12a0 <signal@plt>
    2a4f:	ba 00 00 00 00       	mov    $0x0,%edx
    2a54:	be 01 00 00 00       	mov    $0x1,%esi
    2a59:	bf 02 00 00 00       	mov    $0x2,%edi
    2a5e:	e8 2d e9 ff ff       	callq  1390 <socket@plt>
    2a63:	85 c0                	test   %eax,%eax
    2a65:	0f 88 9c 00 00 00    	js     2b07 <init_driver+0x104>
    2a6b:	89 c3                	mov    %eax,%ebx
    2a6d:	48 8d 3d 4a 0a 00 00 	lea    0xa4a(%rip),%rdi        # 34be <array.3473+0x2fe>
    2a74:	e8 37 e8 ff ff       	callq  12b0 <gethostbyname@plt>
    2a79:	48 85 c0             	test   %rax,%rax
    2a7c:	0f 84 d1 00 00 00    	je     2b53 <init_driver+0x150>
    2a82:	49 89 e4             	mov    %rsp,%r12
    2a85:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    2a8c:	00 
    2a8d:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    2a94:	00 00 
    2a96:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    2a9c:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2aa0:	48 8b 40 18          	mov    0x18(%rax),%rax
    2aa4:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    2aa9:	b9 0c 00 00 00       	mov    $0xc,%ecx
    2aae:	48 8b 30             	mov    (%rax),%rsi
    2ab1:	e8 0a e8 ff ff       	callq  12c0 <__memmove_chk@plt>
    2ab6:	66 c7 44 24 02 5a ac 	movw   $0xac5a,0x2(%rsp)
    2abd:	ba 10 00 00 00       	mov    $0x10,%edx
    2ac2:	4c 89 e6             	mov    %r12,%rsi
    2ac5:	89 df                	mov    %ebx,%edi
    2ac7:	e8 74 e8 ff ff       	callq  1340 <connect@plt>
    2acc:	85 c0                	test   %eax,%eax
    2ace:	0f 88 e7 00 00 00    	js     2bbb <init_driver+0x1b8>
    2ad4:	89 df                	mov    %ebx,%edi
    2ad6:	e8 95 e7 ff ff       	callq  1270 <close@plt>
    2adb:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
    2ae1:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
    2ae5:	b8 00 00 00 00       	mov    $0x0,%eax
    2aea:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    2aef:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    2af6:	00 00 
    2af8:	0f 85 f5 00 00 00    	jne    2bf3 <init_driver+0x1f0>
    2afe:	48 83 c4 20          	add    $0x20,%rsp
    2b02:	5b                   	pop    %rbx
    2b03:	5d                   	pop    %rbp
    2b04:	41 5c                	pop    %r12
    2b06:	c3                   	retq   
    2b07:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2b0e:	3a 20 43 
    2b11:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2b18:	20 75 6e 
    2b1b:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2b1f:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2b23:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2b2a:	74 6f 20 
    2b2d:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2b34:	65 20 73 
    2b37:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2b3b:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2b3f:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    2b46:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    2b4c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2b51:	eb 97                	jmp    2aea <init_driver+0xe7>
    2b53:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2b5a:	3a 20 44 
    2b5d:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2b64:	20 75 6e 
    2b67:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2b6b:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2b6f:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2b76:	74 6f 20 
    2b79:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2b80:	76 65 20 
    2b83:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2b87:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2b8b:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    2b92:	72 20 61 
    2b95:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2b99:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
    2ba0:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
    2ba6:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    2baa:	89 df                	mov    %ebx,%edi
    2bac:	e8 bf e6 ff ff       	callq  1270 <close@plt>
    2bb1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2bb6:	e9 2f ff ff ff       	jmpq   2aea <init_driver+0xe7>
    2bbb:	4c 8d 05 fc 08 00 00 	lea    0x8fc(%rip),%r8        # 34be <array.3473+0x2fe>
    2bc2:	48 8d 0d cf 09 00 00 	lea    0x9cf(%rip),%rcx        # 3598 <array.3473+0x3d8>
    2bc9:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    2bd0:	be 01 00 00 00       	mov    $0x1,%esi
    2bd5:	48 89 ef             	mov    %rbp,%rdi
    2bd8:	b8 00 00 00 00       	mov    $0x0,%eax
    2bdd:	e8 9e e7 ff ff       	callq  1380 <__sprintf_chk@plt>
    2be2:	89 df                	mov    %ebx,%edi
    2be4:	e8 87 e6 ff ff       	callq  1270 <close@plt>
    2be9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2bee:	e9 f7 fe ff ff       	jmpq   2aea <init_driver+0xe7>
    2bf3:	e8 58 e6 ff ff       	callq  1250 <__stack_chk_fail@plt>

0000000000002bf8 <driver_post>:
    2bf8:	f3 0f 1e fa          	endbr64 
    2bfc:	53                   	push   %rbx
    2bfd:	4c 89 c3             	mov    %r8,%rbx
    2c00:	85 c9                	test   %ecx,%ecx
    2c02:	75 17                	jne    2c1b <driver_post+0x23>
    2c04:	48 85 ff             	test   %rdi,%rdi
    2c07:	74 05                	je     2c0e <driver_post+0x16>
    2c09:	80 3f 00             	cmpb   $0x0,(%rdi)
    2c0c:	75 33                	jne    2c41 <driver_post+0x49>
    2c0e:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2c13:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2c17:	89 c8                	mov    %ecx,%eax
    2c19:	5b                   	pop    %rbx
    2c1a:	c3                   	retq   
    2c1b:	48 8d 35 ba 09 00 00 	lea    0x9ba(%rip),%rsi        # 35dc <array.3473+0x41c>
    2c22:	bf 01 00 00 00       	mov    $0x1,%edi
    2c27:	b8 00 00 00 00       	mov    $0x0,%eax
    2c2c:	e8 cf e6 ff ff       	callq  1300 <__printf_chk@plt>
    2c31:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2c36:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2c3a:	b8 00 00 00 00       	mov    $0x0,%eax
    2c3f:	eb d8                	jmp    2c19 <driver_post+0x21>
    2c41:	41 50                	push   %r8
    2c43:	52                   	push   %rdx
    2c44:	4c 8d 0d a8 09 00 00 	lea    0x9a8(%rip),%r9        # 35f3 <array.3473+0x433>
    2c4b:	49 89 f0             	mov    %rsi,%r8
    2c4e:	48 89 f9             	mov    %rdi,%rcx
    2c51:	48 8d 15 a7 09 00 00 	lea    0x9a7(%rip),%rdx        # 35ff <array.3473+0x43f>
    2c58:	be ac 5a 00 00       	mov    $0x5aac,%esi
    2c5d:	48 8d 3d 5a 08 00 00 	lea    0x85a(%rip),%rdi        # 34be <array.3473+0x2fe>
    2c64:	e8 3d f5 ff ff       	callq  21a6 <submitr>
    2c69:	48 83 c4 10          	add    $0x10,%rsp
    2c6d:	eb aa                	jmp    2c19 <driver_post+0x21>
    2c6f:	90                   	nop

0000000000002c70 <__libc_csu_init>:
    2c70:	f3 0f 1e fa          	endbr64 
    2c74:	41 57                	push   %r15
    2c76:	4c 8d 3d 6b 20 00 00 	lea    0x206b(%rip),%r15        # 4ce8 <__frame_dummy_init_array_entry>
    2c7d:	41 56                	push   %r14
    2c7f:	49 89 d6             	mov    %rdx,%r14
    2c82:	41 55                	push   %r13
    2c84:	49 89 f5             	mov    %rsi,%r13
    2c87:	41 54                	push   %r12
    2c89:	41 89 fc             	mov    %edi,%r12d
    2c8c:	55                   	push   %rbp
    2c8d:	48 8d 2d 5c 20 00 00 	lea    0x205c(%rip),%rbp        # 4cf0 <__do_global_dtors_aux_fini_array_entry>
    2c94:	53                   	push   %rbx
    2c95:	4c 29 fd             	sub    %r15,%rbp
    2c98:	48 83 ec 08          	sub    $0x8,%rsp
    2c9c:	e8 5f e3 ff ff       	callq  1000 <_init>
    2ca1:	48 c1 fd 03          	sar    $0x3,%rbp
    2ca5:	74 1f                	je     2cc6 <__libc_csu_init+0x56>
    2ca7:	31 db                	xor    %ebx,%ebx
    2ca9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2cb0:	4c 89 f2             	mov    %r14,%rdx
    2cb3:	4c 89 ee             	mov    %r13,%rsi
    2cb6:	44 89 e7             	mov    %r12d,%edi
    2cb9:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    2cbd:	48 83 c3 01          	add    $0x1,%rbx
    2cc1:	48 39 dd             	cmp    %rbx,%rbp
    2cc4:	75 ea                	jne    2cb0 <__libc_csu_init+0x40>
    2cc6:	48 83 c4 08          	add    $0x8,%rsp
    2cca:	5b                   	pop    %rbx
    2ccb:	5d                   	pop    %rbp
    2ccc:	41 5c                	pop    %r12
    2cce:	41 5d                	pop    %r13
    2cd0:	41 5e                	pop    %r14
    2cd2:	41 5f                	pop    %r15
    2cd4:	c3                   	retq   
    2cd5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    2cdc:	00 00 00 00 

0000000000002ce0 <__libc_csu_fini>:
    2ce0:	f3 0f 1e fa          	endbr64 
    2ce4:	c3                   	retq   

Disassembly of section .fini:

0000000000002ce8 <_fini>:
    2ce8:	f3 0f 1e fa          	endbr64 
    2cec:	48 83 ec 08          	sub    $0x8,%rsp
    2cf0:	48 83 c4 08          	add    $0x8,%rsp
    2cf4:	c3                   	retq   
