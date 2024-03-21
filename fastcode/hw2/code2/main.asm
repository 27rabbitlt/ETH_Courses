
main:     file format elf64-x86-64


Disassembly of section .interp:

0000000000000318 <.interp>:
 318:	2f                   	(bad)  
 319:	6c                   	insb   (%dx),%es:(%rdi)
 31a:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
 321:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
 326:	78 2d                	js     355 <_init-0xcab>
 328:	78 38                	js     362 <_init-0xc9e>
 32a:	36 2d 36 34 2e 73    	ss sub $0x732e3436,%eax
 330:	6f                   	outsl  %ds:(%rsi),(%dx)
 331:	2e 32 00             	xor    %cs:(%rax),%al

Disassembly of section .note.gnu.property:

0000000000000338 <.note.gnu.property>:
 338:	04 00                	add    $0x0,%al
 33a:	00 00                	add    %al,(%rax)
 33c:	10 00                	adc    %al,(%rax)
 33e:	00 00                	add    %al,(%rax)
 340:	05 00 00 00 47       	add    $0x47000000,%eax
 345:	4e 55                	rex.WRX push %rbp
 347:	00 02                	add    %al,(%rdx)
 349:	00 00                	add    %al,(%rax)
 34b:	c0 04 00 00          	rolb   $0x0,(%rax,%rax,1)
 34f:	00 03                	add    %al,(%rbx)
 351:	00 00                	add    %al,(%rax)
 353:	00 00                	add    %al,(%rax)
 355:	00 00                	add    %al,(%rax)
	...

Disassembly of section .note.gnu.build-id:

0000000000000358 <.note.gnu.build-id>:
 358:	04 00                	add    $0x0,%al
 35a:	00 00                	add    %al,(%rax)
 35c:	14 00                	adc    $0x0,%al
 35e:	00 00                	add    %al,(%rax)
 360:	03 00                	add    (%rax),%eax
 362:	00 00                	add    %al,(%rax)
 364:	47                   	rex.RXB
 365:	4e 55                	rex.WRX push %rbp
 367:	00 f9                	add    %bh,%cl
 369:	32 45 07             	xor    0x7(%rbp),%al
 36c:	8a f8                	mov    %al,%bh
 36e:	01 f4                	add    %esi,%esp
 370:	c3                   	retq   
 371:	b4 bf                	mov    $0xbf,%ah
 373:	2f                   	(bad)  
 374:	61                   	(bad)  
 375:	0c 80                	or     $0x80,%al
 377:	3b                   	.byte 0x3b
 378:	b2 8a                	mov    $0x8a,%dl
 37a:	66                   	data16
 37b:	f6                   	.byte 0xf6

Disassembly of section .note.ABI-tag:

000000000000037c <.note.ABI-tag>:
 37c:	04 00                	add    $0x0,%al
 37e:	00 00                	add    %al,(%rax)
 380:	10 00                	adc    %al,(%rax)
 382:	00 00                	add    %al,(%rax)
 384:	01 00                	add    %eax,(%rax)
 386:	00 00                	add    %al,(%rax)
 388:	47                   	rex.RXB
 389:	4e 55                	rex.WRX push %rbp
 38b:	00 00                	add    %al,(%rax)
 38d:	00 00                	add    %al,(%rax)
 38f:	00 03                	add    %al,(%rbx)
 391:	00 00                	add    %al,(%rax)
 393:	00 02                	add    %al,(%rdx)
 395:	00 00                	add    %al,(%rax)
 397:	00 00                	add    %al,(%rax)
 399:	00 00                	add    %al,(%rax)
	...

Disassembly of section .gnu.hash:

00000000000003a0 <.gnu.hash>:
 3a0:	03 00                	add    (%rax),%eax
 3a2:	00 00                	add    %al,(%rax)
 3a4:	15 00 00 00 01       	adc    $0x1000000,%eax
 3a9:	00 00                	add    %al,(%rax)
 3ab:	00 06                	add    %al,(%rsi)
 3ad:	00 00                	add    %al,(%rax)
 3af:	00 00                	add    %al,(%rax)
 3b1:	00 b1 00 01 00 04    	add    %dh,0x4000100(%rcx)
 3b7:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 3bd <_init-0xc43>
 3bd:	00 00                	add    %al,(%rax)
 3bf:	00 16                	add    %dl,(%rsi)
 3c1:	00 00                	add    %al,(%rax)
 3c3:	00 d1                	add    %dl,%cl
 3c5:	65 ce                	gs (bad) 
 3c7:	6d                   	insl   (%dx),%es:(%rdi)
 3c8:	72 85                	jb     34f <_init-0xcb1>
 3ca:	4c                   	rex.WR
 3cb:	1b                   	.byte 0x1b
 3cc:	15                   	.byte 0x15
 3cd:	98                   	cwtl   
 3ce:	0c 43                	or     $0x43,%al

Disassembly of section .dynsym:

00000000000003d0 <.dynsym>:
	...
 3e8:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 3e9:	01 00                	add    %eax,(%rax)
 3eb:	00 12                	add    %dl,(%rdx)
	...
 3fd:	00 00                	add    %al,(%rax)
 3ff:	00 49 02             	add    %cl,0x2(%rcx)
 402:	00 00                	add    %al,(%rax)
 404:	12 00                	adc    (%rax),%al
	...
 416:	00 00                	add    %al,(%rax)
 418:	55                   	push   %rbp
 419:	00 00                	add    %al,(%rax)
 41b:	00 12                	add    %dl,(%rdx)
	...
 42d:	00 00                	add    %al,(%rax)
 42f:	00 d4                	add    %dl,%ah
 431:	01 00                	add    %eax,(%rax)
 433:	00 12                	add    %dl,(%rdx)
	...
 445:	00 00                	add    %al,(%rax)
 447:	00 3c 02             	add    %bh,(%rdx,%rax,1)
 44a:	00 00                	add    %al,(%rax)
 44c:	12 00                	adc    (%rax),%al
	...
 45e:	00 00                	add    %al,(%rax)
 460:	25 01 00 00 12       	and    $0x12000001,%eax
	...
 475:	00 00                	add    %al,(%rax)
 477:	00 2b                	add    %ch,(%rbx)
 479:	02 00                	add    (%rax),%al
 47b:	00 12                	add    %dl,(%rdx)
	...
 48d:	00 00                	add    %al,(%rax)
 48f:	00 59 01             	add    %bl,0x1(%rcx)
 492:	00 00                	add    %al,(%rax)
 494:	12 00                	adc    (%rax),%al
	...
 4a6:	00 00                	add    %al,(%rax)
 4a8:	b3 01                	mov    $0x1,%bl
 4aa:	00 00                	add    %al,(%rax)
 4ac:	12 00                	adc    (%rax),%al
	...
 4be:	00 00                	add    %al,(%rax)
 4c0:	2c 01                	sub    $0x1,%al
 4c2:	00 00                	add    %al,(%rax)
 4c4:	12 00                	adc    (%rax),%al
	...
 4d6:	00 00                	add    %al,(%rax)
 4d8:	e2 01                	loop   4db <_init-0xb25>
 4da:	00 00                	add    %al,(%rax)
 4dc:	12 00                	adc    (%rax),%al
	...
 4ee:	00 00                	add    %al,(%rax)
 4f0:	dc 00                	faddl  (%rax)
 4f2:	00 00                	add    %al,(%rax)
 4f4:	12 00                	adc    (%rax),%al
	...
 506:	00 00                	add    %al,(%rax)
 508:	90                   	nop
 509:	00 00                	add    %al,(%rax)
 50b:	00 12                	add    %dl,(%rdx)
	...
 51d:	00 00                	add    %al,(%rax)
 51f:	00 44 01 00          	add    %al,0x0(%rcx,%rax,1)
 523:	00 12                	add    %dl,(%rdx)
	...
 535:	00 00                	add    %al,(%rax)
 537:	00 1f                	add    %bl,(%rdi)
 539:	00 00                	add    %al,(%rax)
 53b:	00 20                	add    %ah,(%rax)
	...
 54d:	00 00                	add    %al,(%rax)
 54f:	00 12                	add    %dl,(%rdx)
 551:	02 00                	add    (%rax),%al
 553:	00 12                	add    %dl,(%rdx)
	...
 565:	00 00                	add    %al,(%rax)
 567:	00 5d 02             	add    %bl,0x2(%rbp)
 56a:	00 00                	add    %al,(%rax)
 56c:	12 00                	adc    (%rax),%al
	...
 57e:	00 00                	add    %al,(%rax)
 580:	10 00                	adc    %al,(%rax)
 582:	00 00                	add    %al,(%rax)
 584:	20 00                	and    %al,(%rax)
	...
 596:	00 00                	add    %al,(%rax)
 598:	3b 00                	cmp    (%rax),%eax
 59a:	00 00                	add    %al,(%rax)
 59c:	20 00                	and    %al,(%rax)
	...
 5ae:	00 00                	add    %al,(%rax)
 5b0:	c4                   	(bad)  
 5b1:	00 00                	add    %al,(%rax)
 5b3:	00 12                	add    %dl,(%rdx)
	...
 5c5:	00 00                	add    %al,(%rax)
 5c7:	00 4e 02             	add    %cl,0x2(%rsi)
 5ca:	00 00                	add    %al,(%rax)
 5cc:	22 00                	and    (%rax),%al
	...
 5de:	00 00                	add    %al,(%rax)
 5e0:	a9 00 00 00 22       	test   $0x22000000,%eax
 5e5:	00 10                	add    %dl,(%rax)
 5e7:	00 b0 17 00 00 00    	add    %dh,0x17(%rax)
 5ed:	00 00                	add    %al,(%rax)
 5ef:	00 07                	add    %al,(%rdi)
 5f1:	00 00                	add    %al,(%rax)
 5f3:	00 00                	add    %al,(%rax)
 5f5:	00 00                	add    %al,(%rax)
 5f7:	00 fa                	add    %bh,%dl
 5f9:	01 00                	add    %eax,(%rax)
 5fb:	00 11                	add    %dl,(%rcx)
 5fd:	00 1b                	add    %bl,(%rbx)
 5ff:	00 40 40             	add    %al,0x40(%rax)
 602:	00 00                	add    %al,(%rax)
 604:	00 00                	add    %al,(%rax)
 606:	00 00                	add    %al,(%rax)
 608:	10 01                	adc    %al,(%rcx)
 60a:	00 00                	add    %al,(%rax)
 60c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynstr:

0000000000000610 <.dynstr>:
 610:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
 614:	73 74                	jae    68a <_init-0x976>
 616:	64 63 2b             	movslq %fs:(%rbx),%ebp
 619:	2b 2e                	sub    (%rsi),%ebp
 61b:	73 6f                	jae    68c <_init-0x974>
 61d:	2e 36 00 5f 5f       	cs add %bl,%ss:0x5f(%rdi)
 622:	67 6d                	insl   (%dx),%es:(%edi)
 624:	6f                   	outsl  %ds:(%rsi),(%dx)
 625:	6e                   	outsb  %ds:(%rsi),(%dx)
 626:	5f                   	pop    %rdi
 627:	73 74                	jae    69d <_init-0x963>
 629:	61                   	(bad)  
 62a:	72 74                	jb     6a0 <_init-0x960>
 62c:	5f                   	pop    %rdi
 62d:	5f                   	pop    %rdi
 62e:	00 5f 49             	add    %bl,0x49(%rdi)
 631:	54                   	push   %rsp
 632:	4d 5f                	rex.WRB pop %r15
 634:	64 65 72 65          	fs gs jb 69d <_init-0x963>
 638:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 63f:	4d 
 640:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 642:	6f                   	outsl  %ds:(%rsi),(%dx)
 643:	6e                   	outsb  %ds:(%rsi),(%dx)
 644:	65 54                	gs push %rsp
 646:	61                   	(bad)  
 647:	62                   	(bad)  
 648:	6c                   	insb   (%dx),%es:(%rdi)
 649:	65 00 5f 49          	add    %bl,%gs:0x49(%rdi)
 64d:	54                   	push   %rsp
 64e:	4d 5f                	rex.WRB pop %r15
 650:	72 65                	jb     6b7 <_init-0x949>
 652:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 659:	4d 
 65a:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 65c:	6f                   	outsl  %ds:(%rsi),(%dx)
 65d:	6e                   	outsb  %ds:(%rsi),(%dx)
 65e:	65 54                	gs push %rsp
 660:	61                   	(bad)  
 661:	62                   	(bad)  
 662:	6c                   	insb   (%dx),%es:(%rdi)
 663:	65 00 5f 5a          	add    %bl,%gs:0x5a(%rdi)
 667:	53                   	push   %rbx
 668:	74 34                	je     69e <_init-0x962>
 66a:	65 6e                	outsb  %gs:(%rsi),(%dx)
 66c:	64 6c                	fs insb (%dx),%es:(%rdi)
 66e:	49 63 53 74          	movslq 0x74(%r11),%rdx
 672:	31 31                	xor    %esi,(%rcx)
 674:	63 68 61             	movslq 0x61(%rax),%ebp
 677:	72 5f                	jb     6d8 <_init-0x928>
 679:	74 72                	je     6ed <_init-0x913>
 67b:	61                   	(bad)  
 67c:	69 74 73 49 63 45 45 	imul   $0x52454563,0x49(%rbx,%rsi,2),%esi
 683:	52 
 684:	53                   	push   %rbx
 685:	74 31                	je     6b8 <_init-0x948>
 687:	33 62 61             	xor    0x61(%rdx),%esp
 68a:	73 69                	jae    6f5 <_init-0x90b>
 68c:	63 5f 6f             	movslq 0x6f(%rdi),%ebx
 68f:	73 74                	jae    705 <_init-0x8fb>
 691:	72 65                	jb     6f8 <_init-0x908>
 693:	61                   	(bad)  
 694:	6d                   	insl   (%dx),%es:(%rdi)
 695:	49 54                	rex.WB push %r12
 697:	5f                   	pop    %rdi
 698:	54                   	push   %rsp
 699:	30 5f 45             	xor    %bl,0x45(%rdi)
 69c:	53                   	push   %rbx
 69d:	36 5f                	ss pop %rdi
 69f:	00 5f 5a             	add    %bl,0x5a(%rdi)
 6a2:	4e 53                	rex.WRX push %rbx
 6a4:	6f                   	outsl  %ds:(%rsi),(%dx)
 6a5:	39 5f 4d             	cmp    %ebx,0x4d(%rdi)
 6a8:	5f                   	pop    %rdi
 6a9:	69 6e 73 65 72 74 49 	imul   $0x49747265,0x73(%rsi),%ebp
 6b0:	64 45                	fs rex.RB
 6b2:	45 52                	rex.RB push %r10
 6b4:	53                   	push   %rbx
 6b5:	6f                   	outsl  %ds:(%rsi),(%dx)
 6b6:	54                   	push   %rsp
 6b7:	5f                   	pop    %rdi
 6b8:	00 5f 5a             	add    %bl,0x5a(%rdi)
 6bb:	4e                   	rex.WRX
 6bc:	4b 53                	rex.WXB push %r11
 6be:	74 35                	je     6f5 <_init-0x90b>
 6c0:	63 74 79 70          	movslq 0x70(%rcx,%rdi,2),%esi
 6c4:	65 49 63 45 38       	movslq %gs:0x38(%r13),%rax
 6c9:	64 6f                	outsl  %fs:(%rsi),(%dx)
 6cb:	5f                   	pop    %rdi
 6cc:	77 69                	ja     737 <_init-0x8c9>
 6ce:	64 65 6e             	fs outsb %gs:(%rsi),(%dx)
 6d1:	45 63 00             	movslq (%r8),%r8d
 6d4:	5f                   	pop    %rdi
 6d5:	5a                   	pop    %rdx
 6d6:	4e 53                	rex.WRX push %rbx
 6d8:	74 38                	je     712 <_init-0x8ee>
 6da:	69 6f 73 5f 62 61 73 	imul   $0x7361625f,0x73(%rdi),%ebp
 6e1:	65 34 49             	gs xor $0x49,%al
 6e4:	6e                   	outsb  %ds:(%rsi),(%dx)
 6e5:	69 74 44 31 45 76 00 	imul   $0x5f007645,0x31(%rsp,%rax,2),%esi
 6ec:	5f 
 6ed:	5a                   	pop    %rdx
 6ee:	4e 53                	rex.WRX push %rbx
 6f0:	74 37                	je     729 <_init-0x8d7>
 6f2:	5f                   	pop    %rdi
 6f3:	5f                   	pop    %rdi
 6f4:	63 78 78             	movslq 0x78(%rax),%edi
 6f7:	31 31                	xor    %esi,(%rcx)
 6f9:	31 32                	xor    %esi,(%rdx)
 6fb:	62 61                	(bad)  
 6fd:	73 69                	jae    768 <_init-0x898>
 6ff:	63 5f 73             	movslq 0x73(%rdi),%ebx
 702:	74 72                	je     776 <_init-0x88a>
 704:	69 6e 67 49 63 53 74 	imul   $0x74536349,0x67(%rsi),%ebp
 70b:	31 31                	xor    %esi,(%rcx)
 70d:	63 68 61             	movslq 0x61(%rax),%ebp
 710:	72 5f                	jb     771 <_init-0x88f>
 712:	74 72                	je     786 <_init-0x87a>
 714:	61                   	(bad)  
 715:	69 74 73 49 63 45 53 	imul   $0x61534563,0x49(%rbx,%rsi,2),%esi
 71c:	61 
 71d:	49 63 45 45          	movslq 0x45(%r13),%rax
 721:	31 30                	xor    %esi,(%rax)
 723:	5f                   	pop    %rdi
 724:	4d 5f                	rex.WRB pop %r15
 726:	72 65                	jb     78d <_init-0x873>
 728:	70 6c                	jo     796 <_init-0x86a>
 72a:	61                   	(bad)  
 72b:	63 65 45             	movslq 0x45(%rbp),%esp
 72e:	6d                   	insl   (%dx),%es:(%rdi)
 72f:	6d                   	insl   (%dx),%es:(%rdi)
 730:	50                   	push   %rax
 731:	4b 63 6d 00          	rex.WXB movslq 0x0(%r13),%rbp
 735:	5f                   	pop    %rdi
 736:	5a                   	pop    %rdx
 737:	64 6c                	fs insb (%dx),%es:(%rdi)
 739:	50                   	push   %rax
 73a:	76 00                	jbe    73c <_init-0x8c4>
 73c:	5f                   	pop    %rdi
 73d:	5a                   	pop    %rdx
 73e:	53                   	push   %rbx
 73f:	74 31                	je     772 <_init-0x88e>
 741:	36 5f                	ss pop %rdi
 743:	5f                   	pop    %rdi
 744:	74 68                	je     7ae <_init-0x852>
 746:	72 6f                	jb     7b7 <_init-0x849>
 748:	77 5f                	ja     7a9 <_init-0x857>
 74a:	62 61 64 5f 63       	(bad)
 74f:	61                   	(bad)  
 750:	73 74                	jae    7c6 <_init-0x83a>
 752:	76 00                	jbe    754 <_init-0x8ac>
 754:	5f                   	pop    %rdi
 755:	5f                   	pop    %rdi
 756:	67 78 78             	addr32 js 7d1 <_init-0x82f>
 759:	5f                   	pop    %rdi
 75a:	70 65                	jo     7c1 <_init-0x83f>
 75c:	72 73                	jb     7d1 <_init-0x82f>
 75e:	6f                   	outsl  %ds:(%rsi),(%dx)
 75f:	6e                   	outsb  %ds:(%rsi),(%dx)
 760:	61                   	(bad)  
 761:	6c                   	insb   (%dx),%es:(%rdi)
 762:	69 74 79 5f 76 30 00 	imul   $0x5f003076,0x5f(%rcx,%rdi,2),%esi
 769:	5f 
 76a:	5a                   	pop    %rdx
 76b:	53                   	push   %rbx
 76c:	74 31                	je     79f <_init-0x861>
 76e:	36 5f                	ss pop %rdi
 770:	5f                   	pop    %rdi
 771:	6f                   	outsl  %ds:(%rsi),(%dx)
 772:	73 74                	jae    7e8 <_init-0x818>
 774:	72 65                	jb     7db <_init-0x825>
 776:	61                   	(bad)  
 777:	6d                   	insl   (%dx),%es:(%rdi)
 778:	5f                   	pop    %rdi
 779:	69 6e 73 65 72 74 49 	imul   $0x49747265,0x73(%rsi),%ebp
 780:	63 53 74             	movslq 0x74(%rbx),%edx
 783:	31 31                	xor    %esi,(%rcx)
 785:	63 68 61             	movslq 0x61(%rax),%ebp
 788:	72 5f                	jb     7e9 <_init-0x817>
 78a:	74 72                	je     7fe <_init-0x802>
 78c:	61                   	(bad)  
 78d:	69 74 73 49 63 45 45 	imul   $0x52454563,0x49(%rbx,%rsi,2),%esi
 794:	52 
 795:	53                   	push   %rbx
 796:	74 31                	je     7c9 <_init-0x837>
 798:	33 62 61             	xor    0x61(%rdx),%esp
 79b:	73 69                	jae    806 <_init-0x7fa>
 79d:	63 5f 6f             	movslq 0x6f(%rdi),%ebx
 7a0:	73 74                	jae    816 <_init-0x7ea>
 7a2:	72 65                	jb     809 <_init-0x7f7>
 7a4:	61                   	(bad)  
 7a5:	6d                   	insl   (%dx),%es:(%rdi)
 7a6:	49 54                	rex.WB push %r12
 7a8:	5f                   	pop    %rdi
 7a9:	54                   	push   %rsp
 7aa:	30 5f 45             	xor    %bl,0x45(%rdi)
 7ad:	53                   	push   %rbx
 7ae:	36 5f                	ss pop %rdi
 7b0:	50                   	push   %rax
 7b1:	4b 53                	rex.WXB push %r11
 7b3:	33 5f 6c             	xor    0x6c(%rdi),%ebx
 7b6:	00 5f 5a             	add    %bl,0x5a(%rdi)
 7b9:	4e 53                	rex.WRX push %rbx
 7bb:	6f                   	outsl  %ds:(%rsi),(%dx)
 7bc:	33 70 75             	xor    0x75(%rax),%esi
 7bf:	74 45                	je     806 <_init-0x7fa>
 7c1:	63 00                	movslq (%rax),%eax
 7c3:	5f                   	pop    %rdi
 7c4:	5a                   	pop    %rdx
 7c5:	4e                   	rex.WRX
 7c6:	4b 53                	rex.WXB push %r11
 7c8:	74 35                	je     7ff <_init-0x801>
 7ca:	63 74 79 70          	movslq 0x70(%rcx,%rdi,2),%esi
 7ce:	65 49 63 45 31       	movslq %gs:0x31(%r13),%rax
 7d3:	33 5f 4d             	xor    0x4d(%rdi),%ebx
 7d6:	5f                   	pop    %rdi
 7d7:	77 69                	ja     842 <_init-0x7be>
 7d9:	64 65 6e             	fs outsb %gs:(%rsi),(%dx)
 7dc:	5f                   	pop    %rdi
 7dd:	69 6e 69 74 45 76 00 	imul   $0x764574,0x69(%rsi),%ebp
 7e4:	5f                   	pop    %rdi
 7e5:	5a                   	pop    %rdx
 7e6:	4e 53                	rex.WRX push %rbx
 7e8:	6f                   	outsl  %ds:(%rsi),(%dx)
 7e9:	35 66 6c 75 73       	xor    $0x73756c66,%eax
 7ee:	68 45 76 00 5f       	pushq  $0x5f007645
 7f3:	5a                   	pop    %rdx
 7f4:	4e 53                	rex.WRX push %rbx
 7f6:	74 38                	je     830 <_init-0x7d0>
 7f8:	69 6f 73 5f 62 61 73 	imul   $0x7361625f,0x73(%rdi),%ebp
 7ff:	65 34 49             	gs xor $0x49,%al
 802:	6e                   	outsb  %ds:(%rsi),(%dx)
 803:	69 74 43 31 45 76 00 	imul   $0x5f007645,0x31(%rbx,%rax,2),%esi
 80a:	5f 
 80b:	5a                   	pop    %rdx
 80c:	53                   	push   %rbx
 80d:	74 34                	je     843 <_init-0x7bd>
 80f:	63 6f 75             	movslq 0x75(%rdi),%ebp
 812:	74 00                	je     814 <_init-0x7ec>
 814:	6c                   	insb   (%dx),%es:(%rdi)
 815:	69 62 67 63 63 5f 73 	imul   $0x735f6363,0x67(%rdx),%esp
 81c:	2e 73 6f             	jae,pn 88e <_init-0x772>
 81f:	2e 31 00             	xor    %eax,%cs:(%rax)
 822:	5f                   	pop    %rdi
 823:	55                   	push   %rbp
 824:	6e                   	outsb  %ds:(%rsi),(%dx)
 825:	77 69                	ja     890 <_init-0x770>
 827:	6e                   	outsb  %ds:(%rsi),(%dx)
 828:	64 5f                	fs pop %rdi
 82a:	52                   	push   %rdx
 82b:	65 73 75             	gs jae 8a3 <_init-0x75d>
 82e:	6d                   	insl   (%dx),%es:(%rdi)
 82f:	65 00 6c 69 62       	add    %ch,%gs:0x62(%rcx,%rbp,2)
 834:	63 2e                	movslq (%rsi),%ebp
 836:	73 6f                	jae    8a7 <_init-0x759>
 838:	2e 36 00 5f 5f       	cs add %bl,%ss:0x5f(%rdi)
 83d:	73 74                	jae    8b3 <_init-0x74d>
 83f:	61                   	(bad)  
 840:	63 6b 5f             	movslq 0x5f(%rbx),%ebp
 843:	63 68 6b             	movslq 0x6b(%rax),%ebp
 846:	5f                   	pop    %rdi
 847:	66 61                	data16 (bad) 
 849:	69 6c 00 5f 5f 63 78 	imul   $0x6178635f,0x5f(%rax,%rax,1),%ebp
 850:	61 
 851:	5f                   	pop    %rdi
 852:	61                   	(bad)  
 853:	74 65                	je     8ba <_init-0x746>
 855:	78 69                	js     8c0 <_init-0x740>
 857:	74 00                	je     859 <_init-0x7a7>
 859:	72 61                	jb     8bc <_init-0x744>
 85b:	6e                   	outsb  %ds:(%rsi),(%dx)
 85c:	64 00 5f 5f          	add    %bl,%fs:0x5f(%rdi)
 860:	63 78 61             	movslq 0x61(%rax),%edi
 863:	5f                   	pop    %rdi
 864:	66 69 6e 61 6c 69    	imul   $0x696c,0x61(%rsi),%bp
 86a:	7a 65                	jp     8d1 <_init-0x72f>
 86c:	00 5f 5f             	add    %bl,0x5f(%rdi)
 86f:	6c                   	insb   (%dx),%es:(%rdi)
 870:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
 877:	72 74                	jb     8ed <_init-0x713>
 879:	5f                   	pop    %rdi
 87a:	6d                   	insl   (%dx),%es:(%rdi)
 87b:	61                   	(bad)  
 87c:	69 6e 00 47 43 43 5f 	imul   $0x5f434347,0x0(%rsi),%ebp
 883:	33 2e                	xor    (%rsi),%ebp
 885:	30 00                	xor    %al,(%rax)
 887:	47                   	rex.RXB
 888:	4c                   	rex.WR
 889:	49                   	rex.WB
 88a:	42                   	rex.X
 88b:	43 5f                	rex.XB pop %r15
 88d:	32 2e                	xor    (%rsi),%ch
 88f:	34 00                	xor    $0x0,%al
 891:	47                   	rex.RXB
 892:	4c                   	rex.WR
 893:	49                   	rex.WB
 894:	42                   	rex.X
 895:	43 5f                	rex.XB pop %r15
 897:	32 2e                	xor    (%rsi),%ch
 899:	32 2e                	xor    (%rsi),%ch
 89b:	35 00 43 58 58       	xor    $0x58584300,%eax
 8a0:	41                   	rex.B
 8a1:	42                   	rex.X
 8a2:	49 5f                	rex.WB pop %r15
 8a4:	31 2e                	xor    %ebp,(%rsi)
 8a6:	33 00                	xor    (%rax),%eax
 8a8:	47                   	rex.RXB
 8a9:	4c                   	rex.WR
 8aa:	49                   	rex.WB
 8ab:	42                   	rex.X
 8ac:	43 58                	rex.XB pop %r8
 8ae:	58                   	pop    %rax
 8af:	5f                   	pop    %rdi
 8b0:	33 2e                	xor    (%rsi),%ebp
 8b2:	34 2e                	xor    $0x2e,%al
 8b4:	32 31                	xor    (%rcx),%dh
 8b6:	00 47 4c             	add    %al,0x4c(%rdi)
 8b9:	49                   	rex.WB
 8ba:	42                   	rex.X
 8bb:	43 58                	rex.XB pop %r8
 8bd:	58                   	pop    %rax
 8be:	5f                   	pop    %rdi
 8bf:	33 2e                	xor    (%rsi),%ebp
 8c1:	34 2e                	xor    $0x2e,%al
 8c3:	31 31                	xor    %esi,(%rcx)
 8c5:	00 47 4c             	add    %al,0x4c(%rdi)
 8c8:	49                   	rex.WB
 8c9:	42                   	rex.X
 8ca:	43 58                	rex.XB pop %r8
 8cc:	58                   	pop    %rax
 8cd:	5f                   	pop    %rdi
 8ce:	33 2e                	xor    (%rsi),%ebp
 8d0:	34 2e                	xor    $0x2e,%al
 8d2:	39 00                	cmp    %eax,(%rax)
 8d4:	47                   	rex.RXB
 8d5:	4c                   	rex.WR
 8d6:	49                   	rex.WB
 8d7:	42                   	rex.X
 8d8:	43 58                	rex.XB pop %r8
 8da:	58                   	pop    %rax
 8db:	5f                   	pop    %rdi
 8dc:	33 2e                	xor    (%rsi),%ebp
 8de:	34 00                	xor    $0x0,%al

Disassembly of section .gnu.version:

00000000000008e0 <.gnu.version>:
 8e0:	00 00                	add    %al,(%rax)
 8e2:	02 00                	add    (%rax),%al
 8e4:	03 00                	add    (%rax),%eax
 8e6:	02 00                	add    (%rax),%al
 8e8:	02 00                	add    (%rax),%al
 8ea:	03 00                	add    (%rax),%eax
 8ec:	02 00                	add    (%rax),%al
 8ee:	04 00                	add    $0x0,%al
 8f0:	05 00 06 00 02       	add    $0x2000600,%eax
 8f5:	00 02                	add    %al,(%rdx)
 8f7:	00 07                	add    %al,(%rdi)
 8f9:	00 05 00 08 00 00    	add    %al,0x800(%rip)        # 10ff <.plt+0xdf>
 8ff:	00 09                	add    %cl,(%rcx)
 901:	00 03                	add    %al,(%rbx)
 903:	00 00                	add    %al,(%rax)
 905:	00 00                	add    %al,(%rax)
 907:	00 02                	add    %al,(%rdx)
 909:	00 03                	add    %al,(%rbx)
 90b:	00 01                	add    %al,(%rcx)
 90d:	00 02                	add    %al,(%rdx)
	...

Disassembly of section .gnu.version_r:

0000000000000910 <.gnu.version_r>:
 910:	01 00                	add    %eax,(%rax)
 912:	01 00                	add    %eax,(%rax)
 914:	04 02                	add    $0x2,%al
 916:	00 00                	add    %al,(%rax)
 918:	10 00                	adc    %al,(%rax)
 91a:	00 00                	add    %al,(%rax)
 91c:	20 00                	and    %al,(%rax)
 91e:	00 00                	add    %al,(%rax)
 920:	50                   	push   %rax
 921:	26 79 0b             	es jns 92f <_init-0x6d1>
 924:	00 00                	add    %al,(%rax)
 926:	09 00                	or     %eax,(%rax)
 928:	6f                   	outsl  %ds:(%rsi),(%dx)
 929:	02 00                	add    (%rax),%al
 92b:	00 00                	add    %al,(%rax)
 92d:	00 00                	add    %al,(%rax)
 92f:	00 01                	add    %al,(%rcx)
 931:	00 02                	add    %al,(%rdx)
 933:	00 21                	add    %ah,(%rcx)
 935:	02 00                	add    (%rax),%al
 937:	00 10                	add    %dl,(%rax)
 939:	00 00                	add    %al,(%rax)
 93b:	00 30                	add    %dh,(%rax)
 93d:	00 00                	add    %al,(%rax)
 93f:	00 14 69             	add    %dl,(%rcx,%rbp,2)
 942:	69 0d 00 00 04 00 77 	imul   $0x277,0x40000(%rip),%ecx        # 4094c <arr_s+0x3c70c>
 949:	02 00 00 
 94c:	10 00                	adc    %al,(%rax)
 94e:	00 00                	add    %al,(%rax)
 950:	75 1a                	jne    96c <_init-0x694>
 952:	69 09 00 00 03 00    	imul   $0x30000,(%rcx),%ecx
 958:	81 02 00 00 00 00    	addl   $0x0,(%rdx)
 95e:	00 00                	add    %al,(%rax)
 960:	01 00                	add    %eax,(%rax)
 962:	05 00 01 00 00       	add    $0x100,%eax
 967:	00 10                	add    %dl,(%rax)
 969:	00 00                	add    %al,(%rax)
 96b:	00 00                	add    %al,(%rax)
 96d:	00 00                	add    %al,(%rax)
 96f:	00 d3                	add    %dl,%bl
 971:	af                   	scas   %es:(%rdi),%eax
 972:	6b 05 00 00 08 00 8d 	imul   $0xffffff8d,0x80000(%rip),%eax        # 80979 <arr_s+0x7c739>
 979:	02 00                	add    (%rax),%al
 97b:	00 10                	add    %dl,(%rax)
 97d:	00 00                	add    %al,(%rax)
 97f:	00 71 f8             	add    %dh,-0x8(%rcx)
 982:	97                   	xchg   %eax,%edi
 983:	02 00                	add    (%rax),%al
 985:	00 07                	add    %al,(%rdi)
 987:	00 98 02 00 00 10    	add    %bl,0x10000002(%rax)
 98d:	00 00                	add    %al,(%rax)
 98f:	00 61 f8             	add    %ah,-0x8(%rcx)
 992:	97                   	xchg   %eax,%edi
 993:	02 00                	add    (%rax),%al
 995:	00 06                	add    %al,(%rsi)
 997:	00 a7 02 00 00 10    	add    %ah,0x10000002(%rdi)
 99d:	00 00                	add    %al,(%rax)
 99f:	00 89 7f 29 02 00    	add    %cl,0x2297f(%rcx)
 9a5:	00 05 00 b6 02 00    	add    %al,0x2b600(%rip)        # 2bfab <arr_s+0x27d6b>
 9ab:	00 10                	add    %dl,(%rax)
 9ad:	00 00                	add    %al,(%rax)
 9af:	00 74 29 92          	add    %dh,-0x6e(%rcx,%rbp,1)
 9b3:	08 00                	or     %al,(%rax)
 9b5:	00 02                	add    %al,(%rdx)
 9b7:	00 c4                	add    %al,%ah
 9b9:	02 00                	add    (%rax),%al
 9bb:	00 00                	add    %al,(%rax)
 9bd:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

00000000000009c0 <.rela.dyn>:
 9c0:	20 3d 00 00 00 00    	and    %bh,0x0(%rip)        # 9c6 <_init-0x63a>
 9c6:	00 00                	add    %al,(%rax)
 9c8:	08 00                	or     %al,(%rax)
 9ca:	00 00                	add    %al,(%rax)
 9cc:	00 00                	add    %al,(%rax)
 9ce:	00 00                	add    %al,(%rax)
 9d0:	90                   	nop
 9d1:	13 00                	adc    (%rax),%eax
 9d3:	00 00                	add    %al,(%rax)
 9d5:	00 00                	add    %al,(%rax)
 9d7:	00 28                	add    %ch,(%rax)
 9d9:	3d 00 00 00 00       	cmp    $0x0,%eax
 9de:	00 00                	add    %al,(%rax)
 9e0:	08 00                	or     %al,(%rax)
 9e2:	00 00                	add    %al,(%rax)
 9e4:	00 00                	add    %al,(%rax)
 9e6:	00 00                	add    %al,(%rax)
 9e8:	70 12                	jo     9fc <_init-0x604>
 9ea:	00 00                	add    %al,(%rax)
 9ec:	00 00                	add    %al,(%rax)
 9ee:	00 00                	add    %al,(%rax)
 9f0:	30 3d 00 00 00 00    	xor    %bh,0x0(%rip)        # 9f6 <_init-0x60a>
 9f6:	00 00                	add    %al,(%rax)
 9f8:	08 00                	or     %al,(%rax)
 9fa:	00 00                	add    %al,(%rax)
 9fc:	00 00                	add    %al,(%rax)
 9fe:	00 00                	add    %al,(%rax)
 a00:	50                   	push   %rax
 a01:	13 00                	adc    (%rax),%eax
 a03:	00 00                	add    %al,(%rax)
 a05:	00 00                	add    %al,(%rax)
 a07:	00 08                	add    %cl,(%rax)
 a09:	40 00 00             	add    %al,(%rax)
 a0c:	00 00                	add    %al,(%rax)
 a0e:	00 00                	add    %al,(%rax)
 a10:	08 00                	or     %al,(%rax)
 a12:	00 00                	add    %al,(%rax)
 a14:	00 00                	add    %al,(%rax)
 a16:	00 00                	add    %al,(%rax)
 a18:	08 40 00             	or     %al,0x0(%rax)
 a1b:	00 00                	add    %al,(%rax)
 a1d:	00 00                	add    %al,(%rax)
 a1f:	00 d0                	add    %dl,%al
 a21:	3f                   	(bad)  
 a22:	00 00                	add    %al,(%rax)
 a24:	00 00                	add    %al,(%rax)
 a26:	00 00                	add    %al,(%rax)
 a28:	06                   	(bad)  
 a29:	00 00                	add    %al,(%rax)
 a2b:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # a31 <_init-0x5cf>
 a31:	00 00                	add    %al,(%rax)
 a33:	00 00                	add    %al,(%rax)
 a35:	00 00                	add    %al,(%rax)
 a37:	00 d8                	add    %bl,%al
 a39:	3f                   	(bad)  
 a3a:	00 00                	add    %al,(%rax)
 a3c:	00 00                	add    %al,(%rax)
 a3e:	00 00                	add    %al,(%rax)
 a40:	06                   	(bad)  
 a41:	00 00                	add    %al,(%rax)
 a43:	00 0f                	add    %cl,(%rdi)
	...
 a4d:	00 00                	add    %al,(%rax)
 a4f:	00 e0                	add    %ah,%al
 a51:	3f                   	(bad)  
 a52:	00 00                	add    %al,(%rax)
 a54:	00 00                	add    %al,(%rax)
 a56:	00 00                	add    %al,(%rax)
 a58:	06                   	(bad)  
 a59:	00 00                	add    %al,(%rax)
 a5b:	00 11                	add    %dl,(%rcx)
	...
 a65:	00 00                	add    %al,(%rax)
 a67:	00 e8                	add    %ch,%al
 a69:	3f                   	(bad)  
 a6a:	00 00                	add    %al,(%rax)
 a6c:	00 00                	add    %al,(%rax)
 a6e:	00 00                	add    %al,(%rax)
 a70:	06                   	(bad)  
 a71:	00 00                	add    %al,(%rax)
 a73:	00 12                	add    %dl,(%rdx)
	...
 a7d:	00 00                	add    %al,(%rax)
 a7f:	00 f0                	add    %dh,%al
 a81:	3f                   	(bad)  
 a82:	00 00                	add    %al,(%rax)
 a84:	00 00                	add    %al,(%rax)
 a86:	00 00                	add    %al,(%rax)
 a88:	06                   	(bad)  
 a89:	00 00                	add    %al,(%rax)
 a8b:	00 13                	add    %dl,(%rbx)
	...
 a95:	00 00                	add    %al,(%rax)
 a97:	00 f8                	add    %bh,%al
 a99:	3f                   	(bad)  
 a9a:	00 00                	add    %al,(%rax)
 a9c:	00 00                	add    %al,(%rax)
 a9e:	00 00                	add    %al,(%rax)
 aa0:	06                   	(bad)  
 aa1:	00 00                	add    %al,(%rax)
 aa3:	00 14 00             	add    %dl,(%rax,%rax,1)
	...
 aae:	00 00                	add    %al,(%rax)
 ab0:	10 40 00             	adc    %al,0x0(%rax)
 ab3:	00 00                	add    %al,(%rax)
 ab5:	00 00                	add    %al,(%rax)
 ab7:	00 01                	add    %al,(%rcx)
 ab9:	00 00                	add    %al,(%rax)
 abb:	00 0e                	add    %cl,(%rsi)
	...
 ac5:	00 00                	add    %al,(%rax)
 ac7:	00 40 40             	add    %al,0x40(%rax)
 aca:	00 00                	add    %al,(%rax)
 acc:	00 00                	add    %al,(%rax)
 ace:	00 00                	add    %al,(%rax)
 ad0:	05 00 00 00 17       	add    $0x17000000,%eax
	...

Disassembly of section .rela.plt:

0000000000000ae0 <.rela.plt>:
 ae0:	60                   	(bad)  
 ae1:	3f                   	(bad)  
 ae2:	00 00                	add    %al,(%rax)
 ae4:	00 00                	add    %al,(%rax)
 ae6:	00 00                	add    %al,(%rax)
 ae8:	07                   	(bad)  
 ae9:	00 00                	add    %al,(%rax)
 aeb:	00 01                	add    %al,(%rcx)
	...
 af5:	00 00                	add    %al,(%rax)
 af7:	00 68 3f             	add    %ch,0x3f(%rax)
 afa:	00 00                	add    %al,(%rax)
 afc:	00 00                	add    %al,(%rax)
 afe:	00 00                	add    %al,(%rax)
 b00:	07                   	(bad)  
 b01:	00 00                	add    %al,(%rax)
 b03:	00 02                	add    %al,(%rdx)
	...
 b0d:	00 00                	add    %al,(%rax)
 b0f:	00 70 3f             	add    %dh,0x3f(%rax)
 b12:	00 00                	add    %al,(%rax)
 b14:	00 00                	add    %al,(%rax)
 b16:	00 00                	add    %al,(%rax)
 b18:	07                   	(bad)  
 b19:	00 00                	add    %al,(%rax)
 b1b:	00 03                	add    %al,(%rbx)
	...
 b25:	00 00                	add    %al,(%rax)
 b27:	00 78 3f             	add    %bh,0x3f(%rax)
 b2a:	00 00                	add    %al,(%rax)
 b2c:	00 00                	add    %al,(%rax)
 b2e:	00 00                	add    %al,(%rax)
 b30:	07                   	(bad)  
 b31:	00 00                	add    %al,(%rax)
 b33:	00 04 00             	add    %al,(%rax,%rax,1)
	...
 b3e:	00 00                	add    %al,(%rax)
 b40:	80 3f 00             	cmpb   $0x0,(%rdi)
 b43:	00 00                	add    %al,(%rax)
 b45:	00 00                	add    %al,(%rax)
 b47:	00 07                	add    %al,(%rdi)
 b49:	00 00                	add    %al,(%rax)
 b4b:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # b51 <_init-0x4af>
 b51:	00 00                	add    %al,(%rax)
 b53:	00 00                	add    %al,(%rax)
 b55:	00 00                	add    %al,(%rax)
 b57:	00 88 3f 00 00 00    	add    %cl,0x3f(%rax)
 b5d:	00 00                	add    %al,(%rax)
 b5f:	00 07                	add    %al,(%rdi)
 b61:	00 00                	add    %al,(%rax)
 b63:	00 06                	add    %al,(%rsi)
	...
 b6d:	00 00                	add    %al,(%rax)
 b6f:	00 90 3f 00 00 00    	add    %dl,0x3f(%rax)
 b75:	00 00                	add    %al,(%rax)
 b77:	00 07                	add    %al,(%rdi)
 b79:	00 00                	add    %al,(%rax)
 b7b:	00 07                	add    %al,(%rdi)
	...
 b85:	00 00                	add    %al,(%rax)
 b87:	00 98 3f 00 00 00    	add    %bl,0x3f(%rax)
 b8d:	00 00                	add    %al,(%rax)
 b8f:	00 07                	add    %al,(%rdi)
 b91:	00 00                	add    %al,(%rax)
 b93:	00 08                	add    %cl,(%rax)
	...
 b9d:	00 00                	add    %al,(%rax)
 b9f:	00 a0 3f 00 00 00    	add    %ah,0x3f(%rax)
 ba5:	00 00                	add    %al,(%rax)
 ba7:	00 07                	add    %al,(%rdi)
 ba9:	00 00                	add    %al,(%rax)
 bab:	00 09                	add    %cl,(%rcx)
	...
 bb5:	00 00                	add    %al,(%rax)
 bb7:	00 a8 3f 00 00 00    	add    %ch,0x3f(%rax)
 bbd:	00 00                	add    %al,(%rax)
 bbf:	00 07                	add    %al,(%rdi)
 bc1:	00 00                	add    %al,(%rax)
 bc3:	00 0a                	add    %cl,(%rdx)
	...
 bcd:	00 00                	add    %al,(%rax)
 bcf:	00 b0 3f 00 00 00    	add    %dh,0x3f(%rax)
 bd5:	00 00                	add    %al,(%rax)
 bd7:	00 07                	add    %al,(%rdi)
 bd9:	00 00                	add    %al,(%rax)
 bdb:	00 0b                	add    %cl,(%rbx)
	...
 be5:	00 00                	add    %al,(%rax)
 be7:	00 b8 3f 00 00 00    	add    %bh,0x3f(%rax)
 bed:	00 00                	add    %al,(%rax)
 bef:	00 07                	add    %al,(%rdi)
 bf1:	00 00                	add    %al,(%rax)
 bf3:	00 0c 00             	add    %cl,(%rax,%rax,1)
	...
 bfe:	00 00                	add    %al,(%rax)
 c00:	c0 3f 00             	sarb   $0x0,(%rdi)
 c03:	00 00                	add    %al,(%rax)
 c05:	00 00                	add    %al,(%rax)
 c07:	00 07                	add    %al,(%rdi)
 c09:	00 00                	add    %al,(%rax)
 c0b:	00 0d 00 00 00 00    	add    %cl,0x0(%rip)        # c11 <_init-0x3ef>
 c11:	00 00                	add    %al,(%rax)
 c13:	00 00                	add    %al,(%rax)
 c15:	00 00                	add    %al,(%rax)
 c17:	00 c8                	add    %cl,%al
 c19:	3f                   	(bad)  
 c1a:	00 00                	add    %al,(%rax)
 c1c:	00 00                	add    %al,(%rax)
 c1e:	00 00                	add    %al,(%rax)
 c20:	07                   	(bad)  
 c21:	00 00                	add    %al,(%rax)
 c23:	00 10                	add    %dl,(%rax)
	...

Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	callq  *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	retq   

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 2a 2f 00 00    	pushq  0x2f2a(%rip)        # 3f50 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 2b 2f 00 00 	bnd jmpq *0x2f2b(%rip)        # 3f58 <_GLOBAL_OFFSET_TABLE_+0x10>
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

Disassembly of section .plt.got:

0000000000001110 <__cxa_finalize@plt>:
    1110:	f3 0f 1e fa          	endbr64 
    1114:	f2 ff 25 b5 2e 00 00 	bnd jmpq *0x2eb5(%rip)        # 3fd0 <__cxa_finalize@GLIBC_2.2.5>
    111b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001120 <_ZNSo3putEc@plt>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	f2 ff 25 35 2e 00 00 	bnd jmpq *0x2e35(%rip)        # 3f60 <_ZNSo3putEc@GLIBCXX_3.4>
    112b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001130 <rand@plt>:
    1130:	f3 0f 1e fa          	endbr64 
    1134:	f2 ff 25 2d 2e 00 00 	bnd jmpq *0x2e2d(%rip)        # 3f68 <rand@GLIBC_2.2.5>
    113b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001140 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>:
    1140:	f3 0f 1e fa          	endbr64 
    1144:	f2 ff 25 25 2e 00 00 	bnd jmpq *0x2e25(%rip)        # 3f70 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    114b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001150 <_ZNSo5flushEv@plt>:
    1150:	f3 0f 1e fa          	endbr64 
    1154:	f2 ff 25 1d 2e 00 00 	bnd jmpq *0x2e1d(%rip)        # 3f78 <_ZNSo5flushEv@GLIBCXX_3.4>
    115b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001160 <__cxa_atexit@plt>:
    1160:	f3 0f 1e fa          	endbr64 
    1164:	f2 ff 25 15 2e 00 00 	bnd jmpq *0x2e15(%rip)        # 3f80 <__cxa_atexit@GLIBC_2.2.5>
    116b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001170 <_ZdlPv@plt>:
    1170:	f3 0f 1e fa          	endbr64 
    1174:	f2 ff 25 0d 2e 00 00 	bnd jmpq *0x2e0d(%rip)        # 3f88 <_ZdlPv@GLIBCXX_3.4>
    117b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001180 <__stack_chk_fail@plt>:
    1180:	f3 0f 1e fa          	endbr64 
    1184:	f2 ff 25 05 2e 00 00 	bnd jmpq *0x2e05(%rip)        # 3f90 <__stack_chk_fail@GLIBC_2.4>
    118b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001190 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>:
    1190:	f3 0f 1e fa          	endbr64 
    1194:	f2 ff 25 fd 2d 00 00 	bnd jmpq *0x2dfd(%rip)        # 3f98 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@GLIBCXX_3.4.9>
    119b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011a0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>:
    11a0:	f3 0f 1e fa          	endbr64 
    11a4:	f2 ff 25 f5 2d 00 00 	bnd jmpq *0x2df5(%rip)        # 3fa0 <_ZNKSt5ctypeIcE13_M_widen_initEv@GLIBCXX_3.4.11>
    11ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011b0 <_ZSt16__throw_bad_castv@plt>:
    11b0:	f3 0f 1e fa          	endbr64 
    11b4:	f2 ff 25 ed 2d 00 00 	bnd jmpq *0x2ded(%rip)        # 3fa8 <_ZSt16__throw_bad_castv@GLIBCXX_3.4>
    11bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011c0 <_ZNSt8ios_base4InitC1Ev@plt>:
    11c0:	f3 0f 1e fa          	endbr64 
    11c4:	f2 ff 25 e5 2d 00 00 	bnd jmpq *0x2de5(%rip)        # 3fb0 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
    11cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>:
    11d0:	f3 0f 1e fa          	endbr64 
    11d4:	f2 ff 25 dd 2d 00 00 	bnd jmpq *0x2ddd(%rip)        # 3fb8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@GLIBCXX_3.4.21>
    11db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011e0 <_ZNSo9_M_insertIdEERSoT_@plt>:
    11e0:	f3 0f 1e fa          	endbr64 
    11e4:	f2 ff 25 d5 2d 00 00 	bnd jmpq *0x2dd5(%rip)        # 3fc0 <_ZNSo9_M_insertIdEERSoT_@GLIBCXX_3.4.9>
    11eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011f0 <_Unwind_Resume@plt>:
    11f0:	f3 0f 1e fa          	endbr64 
    11f4:	f2 ff 25 cd 2d 00 00 	bnd jmpq *0x2dcd(%rip)        # 3fc8 <_Unwind_Resume@GCC_3.0>
    11fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001200 <_Z18run_microbenchmark21microbenchmark_mode_t.cold>:
    1200:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    1205:	48 39 df             	cmp    %rbx,%rdi
    1208:	74 05                	je     120f <_Z18run_microbenchmark21microbenchmark_mode_t.cold+0xf>
    120a:	e8 61 ff ff ff       	callq  1170 <_ZdlPv@plt>
    120f:	48 89 ef             	mov    %rbp,%rdi
    1212:	e8 d9 ff ff ff       	callq  11f0 <_Unwind_Resume@plt>
    1217:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    121e:	00 00 

0000000000001220 <main>:
    1220:	f3 0f 1e fa          	endbr64 
    1224:	53                   	push   %rbx
    1225:	31 db                	xor    %ebx,%ebx
    1227:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    122e:	00 00 
    1230:	89 df                	mov    %ebx,%edi
    1232:	83 c3 01             	add    $0x1,%ebx
    1235:	e8 66 01 00 00       	callq  13a0 <_Z18run_microbenchmark21microbenchmark_mode_t>
    123a:	83 fb 0a             	cmp    $0xa,%ebx
    123d:	75 f1                	jne    1230 <main+0x10>
    123f:	ba 10 00 00 00       	mov    $0x10,%edx
    1244:	48 8d 35 84 0e 00 00 	lea    0xe84(%rip),%rsi        # 20cf <_IO_stdin_used+0xcf>
    124b:	48 8d 3d ee 2d 00 00 	lea    0x2dee(%rip),%rdi        # 4040 <_ZSt4cout@@GLIBCXX_3.4>
    1252:	e8 39 ff ff ff       	callq  1190 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1257:	48 8d 3d e2 2d 00 00 	lea    0x2de2(%rip),%rdi        # 4040 <_ZSt4cout@@GLIBCXX_3.4>
    125e:	e8 dd fe ff ff       	callq  1140 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>
    1263:	31 c0                	xor    %eax,%eax
    1265:	5b                   	pop    %rbx
    1266:	c3                   	retq   
    1267:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    126e:	00 00 

0000000000001270 <_GLOBAL__sub_I__Z18run_microbenchmark21microbenchmark_mode_t>:
    1270:	f3 0f 1e fa          	endbr64 
    1274:	48 83 ec 08          	sub    $0x8,%rsp
    1278:	48 8d 3d d2 2e 00 00 	lea    0x2ed2(%rip),%rdi        # 4151 <_ZStL8__ioinit>
    127f:	e8 3c ff ff ff       	callq  11c0 <_ZNSt8ios_base4InitC1Ev@plt>
    1284:	48 8b 3d 6d 2d 00 00 	mov    0x2d6d(%rip),%rdi        # 3ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
    128b:	48 83 c4 08          	add    $0x8,%rsp
    128f:	48 8d 15 72 2d 00 00 	lea    0x2d72(%rip),%rdx        # 4008 <__dso_handle>
    1296:	48 8d 35 b4 2e 00 00 	lea    0x2eb4(%rip),%rsi        # 4151 <_ZStL8__ioinit>
    129d:	e9 be fe ff ff       	jmpq   1160 <__cxa_atexit@plt>
    12a2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    12a9:	00 00 00 
    12ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000012b0 <_start>:
    12b0:	f3 0f 1e fa          	endbr64 
    12b4:	31 ed                	xor    %ebp,%ebp
    12b6:	49 89 d1             	mov    %rdx,%r9
    12b9:	5e                   	pop    %rsi
    12ba:	48 89 e2             	mov    %rsp,%rdx
    12bd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    12c1:	50                   	push   %rax
    12c2:	54                   	push   %rsp
    12c3:	4c 8d 05 d6 0c 00 00 	lea    0xcd6(%rip),%r8        # 1fa0 <__libc_csu_fini>
    12ca:	48 8d 0d 5f 0c 00 00 	lea    0xc5f(%rip),%rcx        # 1f30 <__libc_csu_init>
    12d1:	48 8d 3d 48 ff ff ff 	lea    -0xb8(%rip),%rdi        # 1220 <main>
    12d8:	ff 15 02 2d 00 00    	callq  *0x2d02(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    12de:	f4                   	hlt    
    12df:	90                   	nop

00000000000012e0 <deregister_tm_clones>:
    12e0:	48 8d 3d 31 2d 00 00 	lea    0x2d31(%rip),%rdi        # 4018 <__TMC_END__>
    12e7:	48 8d 05 2a 2d 00 00 	lea    0x2d2a(%rip),%rax        # 4018 <__TMC_END__>
    12ee:	48 39 f8             	cmp    %rdi,%rax
    12f1:	74 15                	je     1308 <deregister_tm_clones+0x28>
    12f3:	48 8b 05 de 2c 00 00 	mov    0x2cde(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
    12fa:	48 85 c0             	test   %rax,%rax
    12fd:	74 09                	je     1308 <deregister_tm_clones+0x28>
    12ff:	ff e0                	jmpq   *%rax
    1301:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1308:	c3                   	retq   
    1309:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001310 <register_tm_clones>:
    1310:	48 8d 3d 01 2d 00 00 	lea    0x2d01(%rip),%rdi        # 4018 <__TMC_END__>
    1317:	48 8d 35 fa 2c 00 00 	lea    0x2cfa(%rip),%rsi        # 4018 <__TMC_END__>
    131e:	48 29 fe             	sub    %rdi,%rsi
    1321:	48 89 f0             	mov    %rsi,%rax
    1324:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1328:	48 c1 f8 03          	sar    $0x3,%rax
    132c:	48 01 c6             	add    %rax,%rsi
    132f:	48 d1 fe             	sar    %rsi
    1332:	74 14                	je     1348 <register_tm_clones+0x38>
    1334:	48 8b 05 b5 2c 00 00 	mov    0x2cb5(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
    133b:	48 85 c0             	test   %rax,%rax
    133e:	74 08                	je     1348 <register_tm_clones+0x38>
    1340:	ff e0                	jmpq   *%rax
    1342:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1348:	c3                   	retq   
    1349:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001350 <__do_global_dtors_aux>:
    1350:	f3 0f 1e fa          	endbr64 
    1354:	80 3d f5 2d 00 00 00 	cmpb   $0x0,0x2df5(%rip)        # 4150 <completed.8061>
    135b:	75 2b                	jne    1388 <__do_global_dtors_aux+0x38>
    135d:	55                   	push   %rbp
    135e:	48 83 3d 6a 2c 00 00 	cmpq   $0x0,0x2c6a(%rip)        # 3fd0 <__cxa_finalize@GLIBC_2.2.5>
    1365:	00 
    1366:	48 89 e5             	mov    %rsp,%rbp
    1369:	74 0c                	je     1377 <__do_global_dtors_aux+0x27>
    136b:	48 8b 3d 96 2c 00 00 	mov    0x2c96(%rip),%rdi        # 4008 <__dso_handle>
    1372:	e8 99 fd ff ff       	callq  1110 <__cxa_finalize@plt>
    1377:	e8 64 ff ff ff       	callq  12e0 <deregister_tm_clones>
    137c:	c6 05 cd 2d 00 00 01 	movb   $0x1,0x2dcd(%rip)        # 4150 <completed.8061>
    1383:	5d                   	pop    %rbp
    1384:	c3                   	retq   
    1385:	0f 1f 00             	nopl   (%rax)
    1388:	c3                   	retq   
    1389:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001390 <frame_dummy>:
    1390:	f3 0f 1e fa          	endbr64 
    1394:	e9 77 ff ff ff       	jmpq   1310 <register_tm_clones>
    1399:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000013a0 <_Z18run_microbenchmark21microbenchmark_mode_t>:
    13a0:	f3 0f 1e fa          	endbr64 
    13a4:	41 55                	push   %r13
    13a6:	41 54                	push   %r12
    13a8:	55                   	push   %rbp
    13a9:	53                   	push   %rbx
    13aa:	48 83 ec 48          	sub    $0x48,%rsp
    13ae:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    13b5:	00 00 
    13b7:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
    13bc:	31 c0                	xor    %eax,%eax
    13be:	48 8d 5c 24 20       	lea    0x20(%rsp),%rbx
    13c3:	c6 44 24 20 00       	movb   $0x0,0x20(%rsp)
    13c8:	48 89 5c 24 10       	mov    %rbx,0x10(%rsp)
    13cd:	48 c7 44 24 18 00 00 	movq   $0x0,0x18(%rsp)
    13d4:	00 00 
    13d6:	83 ff 09             	cmp    $0x9,%edi
    13d9:	0f 87 73 03 00 00    	ja     1752 <_Z18run_microbenchmark21microbenchmark_mode_t+0x3b2>
    13df:	89 fa                	mov    %edi,%edx
    13e1:	48 8d 0d 44 0d 00 00 	lea    0xd44(%rip),%rcx        # 212c <_IO_stdin_used+0x12c>
    13e8:	89 fd                	mov    %edi,%ebp
    13ea:	48 63 04 91          	movslq (%rcx,%rdx,4),%rax
    13ee:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    13f3:	48 01 c8             	add    %rcx,%rax
    13f6:	3e ff e0             	notrack jmpq *%rax
    13f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1400:	41 b8 12 00 00 00    	mov    $0x12,%r8d
    1406:	48 8d 0d 82 0c 00 00 	lea    0xc82(%rip),%rcx        # 208f <_IO_stdin_used+0x8f>
    140d:	31 d2                	xor    %edx,%edx
    140f:	31 f6                	xor    %esi,%esi
    1411:	e8 ba fd ff ff       	callq  11d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>
    1416:	4c 8d 2d f3 0a 00 00 	lea    0xaf3(%rip),%r13        # 1f10 <_Z30microbenchmark_get_foo_latencyv>
    141d:	41 bc 1f 00 00 00    	mov    $0x1f,%r12d
    1423:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1428:	89 ef                	mov    %ebp,%edi
    142a:	e8 e1 03 00 00       	callq  1810 <_Z30initialize_microbenchmark_data21microbenchmark_mode_t>
    142f:	41 ff d5             	callq  *%r13
    1432:	ba 09 00 00 00       	mov    $0x9,%edx
    1437:	48 8d 35 71 0c 00 00 	lea    0xc71(%rip),%rsi        # 20af <_IO_stdin_used+0xaf>
    143e:	48 8d 3d fb 2b 00 00 	lea    0x2bfb(%rip),%rdi        # 4040 <_ZSt4cout@@GLIBCXX_3.4>
    1445:	f2 0f 11 44 24 08    	movsd  %xmm0,0x8(%rsp)
    144b:	e8 40 fd ff ff       	callq  1190 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1450:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
    1455:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
    145a:	48 8d 3d df 2b 00 00 	lea    0x2bdf(%rip),%rdi        # 4040 <_ZSt4cout@@GLIBCXX_3.4>
    1461:	e8 2a fd ff ff       	callq  1190 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1466:	48 89 c7             	mov    %rax,%rdi
    1469:	ba 03 00 00 00       	mov    $0x3,%edx
    146e:	48 8d 35 44 0c 00 00 	lea    0xc44(%rip),%rsi        # 20b9 <_IO_stdin_used+0xb9>
    1475:	e8 16 fd ff ff       	callq  1190 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    147a:	ba 07 00 00 00       	mov    $0x7,%edx
    147f:	48 8d 35 37 0c 00 00 	lea    0xc37(%rip),%rsi        # 20bd <_IO_stdin_used+0xbd>
    1486:	48 8d 3d b3 2b 00 00 	lea    0x2bb3(%rip),%rdi        # 4040 <_ZSt4cout@@GLIBCXX_3.4>
    148d:	e8 fe fc ff ff       	callq  1190 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1492:	48 8b 05 a7 2b 00 00 	mov    0x2ba7(%rip),%rax        # 4040 <_ZSt4cout@@GLIBCXX_3.4>
    1499:	48 8d 2d a0 2b 00 00 	lea    0x2ba0(%rip),%rbp        # 4040 <_ZSt4cout@@GLIBCXX_3.4>
    14a0:	f2 0f 10 44 24 08    	movsd  0x8(%rsp),%xmm0
    14a6:	48 89 ef             	mov    %rbp,%rdi
    14a9:	48 8b 50 e8          	mov    -0x18(%rax),%rdx
    14ad:	4c 89 64 15 10       	mov    %r12,0x10(%rbp,%rdx,1)
    14b2:	48 8b 50 e8          	mov    -0x18(%rax),%rdx
    14b6:	48 01 ea             	add    %rbp,%rdx
    14b9:	8b 42 18             	mov    0x18(%rdx),%eax
    14bc:	48 c7 42 08 06 00 00 	movq   $0x6,0x8(%rdx)
    14c3:	00 
    14c4:	25 fb fe ff ff       	and    $0xfffffefb,%eax
    14c9:	83 c8 04             	or     $0x4,%eax
    14cc:	89 42 18             	mov    %eax,0x18(%rdx)
    14cf:	e8 0c fd ff ff       	callq  11e0 <_ZNSo9_M_insertIdEERSoT_@plt>
    14d4:	ba 04 00 00 00       	mov    $0x4,%edx
    14d9:	48 8d 35 e5 0b 00 00 	lea    0xbe5(%rip),%rsi        # 20c5 <_IO_stdin_used+0xc5>
    14e0:	48 89 c7             	mov    %rax,%rdi
    14e3:	49 89 c4             	mov    %rax,%r12
    14e6:	e8 a5 fc ff ff       	callq  1190 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    14eb:	ba 04 00 00 00       	mov    $0x4,%edx
    14f0:	48 8d 35 d3 0b 00 00 	lea    0xbd3(%rip),%rsi        # 20ca <_IO_stdin_used+0xca>
    14f7:	4c 89 e7             	mov    %r12,%rdi
    14fa:	e8 91 fc ff ff       	callq  1190 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    14ff:	48 8b 05 3a 2b 00 00 	mov    0x2b3a(%rip),%rax        # 4040 <_ZSt4cout@@GLIBCXX_3.4>
    1506:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    150a:	48 8b ac 05 f0 00 00 	mov    0xf0(%rbp,%rax,1),%rbp
    1511:	00 
    1512:	48 85 ed             	test   %rbp,%rbp
    1515:	0f 84 77 02 00 00    	je     1792 <_Z18run_microbenchmark21microbenchmark_mode_t+0x3f2>
    151b:	80 7d 38 00          	cmpb   $0x0,0x38(%rbp)
    151f:	0f 84 fb 01 00 00    	je     1720 <_Z18run_microbenchmark21microbenchmark_mode_t+0x380>
    1525:	0f be 75 43          	movsbl 0x43(%rbp),%esi
    1529:	48 8d 3d 10 2b 00 00 	lea    0x2b10(%rip),%rdi        # 4040 <_ZSt4cout@@GLIBCXX_3.4>
    1530:	e8 eb fb ff ff       	callq  1120 <_ZNSo3putEc@plt>
    1535:	48 89 c7             	mov    %rax,%rdi
    1538:	e8 13 fc ff ff       	callq  1150 <_ZNSo5flushEv@plt>
    153d:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    1542:	48 39 df             	cmp    %rbx,%rdi
    1545:	74 05                	je     154c <_Z18run_microbenchmark21microbenchmark_mode_t+0x1ac>
    1547:	e8 24 fc ff ff       	callq  1170 <_ZdlPv@plt>
    154c:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
    1551:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1558:	00 00 
    155a:	0f 85 37 02 00 00    	jne    1797 <_Z18run_microbenchmark21microbenchmark_mode_t+0x3f7>
    1560:	48 83 c4 48          	add    $0x48,%rsp
    1564:	5b                   	pop    %rbx
    1565:	5d                   	pop    %rbp
    1566:	41 5c                	pop    %r12
    1568:	41 5d                	pop    %r13
    156a:	c3                   	retq   
    156b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1570:	41 b8 20 00 00 00    	mov    $0x20,%r8d
    1576:	48 8d 0d 8b 0b 00 00 	lea    0xb8b(%rip),%rcx        # 2108 <_IO_stdin_used+0x108>
    157d:	31 d2                	xor    %edx,%edx
    157f:	31 f6                	xor    %esi,%esi
    1581:	e8 4a fc ff ff       	callq  11d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>
    1586:	4c 8d 2d 93 09 00 00 	lea    0x993(%rip),%r13        # 1f20 <_Z29microbenchmark_get_foo_rec_tpv>
    158d:	41 bc 11 00 00 00    	mov    $0x11,%r12d
    1593:	e9 90 fe ff ff       	jmpq   1428 <_Z18run_microbenchmark21microbenchmark_mode_t+0x88>
    1598:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    159f:	00 
    15a0:	41 b8 0c 00 00 00    	mov    $0xc,%r8d
    15a6:	48 8d 0d 57 0a 00 00 	lea    0xa57(%rip),%rcx        # 2004 <_IO_stdin_used+0x4>
    15ad:	31 d2                	xor    %edx,%edx
    15af:	31 f6                	xor    %esi,%esi
    15b1:	e8 1a fc ff ff       	callq  11d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>
    15b6:	4c 8d 2d 83 03 00 00 	lea    0x383(%rip),%r13        # 1940 <_Z30microbenchmark_get_add_latencyv>
    15bd:	41 bc 25 00 00 00    	mov    $0x25,%r12d
    15c3:	e9 60 fe ff ff       	jmpq   1428 <_Z18run_microbenchmark21microbenchmark_mode_t+0x88>
    15c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    15cf:	00 
    15d0:	41 b8 1a 00 00 00    	mov    $0x1a,%r8d
    15d6:	48 8d 0d 34 0a 00 00 	lea    0xa34(%rip),%rcx        # 2011 <_IO_stdin_used+0x11>
    15dd:	31 d2                	xor    %edx,%edx
    15df:	31 f6                	xor    %esi,%esi
    15e1:	e8 ea fb ff ff       	callq  11d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>
    15e6:	4c 8d 2d 43 04 00 00 	lea    0x443(%rip),%r13        # 1a30 <_Z29microbenchmark_get_add_rec_tpv>
    15ed:	41 bc 17 00 00 00    	mov    $0x17,%r12d
    15f3:	e9 30 fe ff ff       	jmpq   1428 <_Z18run_microbenchmark21microbenchmark_mode_t+0x88>
    15f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    15ff:	00 
    1600:	41 b8 0c 00 00 00    	mov    $0xc,%r8d
    1606:	48 8d 0d 1f 0a 00 00 	lea    0xa1f(%rip),%rcx        # 202c <_IO_stdin_used+0x2c>
    160d:	31 d2                	xor    %edx,%edx
    160f:	31 f6                	xor    %esi,%esi
    1611:	e8 ba fb ff ff       	callq  11d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>
    1616:	4c 8d 2d c3 06 00 00 	lea    0x6c3(%rip),%r13        # 1ce0 <_Z30microbenchmark_get_sqt_latencyv>
    161d:	41 bc 25 00 00 00    	mov    $0x25,%r12d
    1623:	e9 00 fe ff ff       	jmpq   1428 <_Z18run_microbenchmark21microbenchmark_mode_t+0x88>
    1628:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    162f:	00 
    1630:	41 b8 1a 00 00 00    	mov    $0x1a,%r8d
    1636:	48 8d 0d fc 09 00 00 	lea    0x9fc(%rip),%rcx        # 2039 <_IO_stdin_used+0x39>
    163d:	31 d2                	xor    %edx,%edx
    163f:	31 f6                	xor    %esi,%esi
    1641:	e8 8a fb ff ff       	callq  11d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>
    1646:	4c 8d 2d 53 07 00 00 	lea    0x753(%rip),%r13        # 1da0 <_Z29microbenchmark_get_sqt_rec_tpv>
    164d:	41 bc 17 00 00 00    	mov    $0x17,%r12d
    1653:	e9 d0 fd ff ff       	jmpq   1428 <_Z18run_microbenchmark21microbenchmark_mode_t+0x88>
    1658:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    165f:	00 
    1660:	41 b8 12 00 00 00    	mov    $0x12,%r8d
    1666:	48 8d 0d e7 09 00 00 	lea    0x9e7(%rip),%rcx        # 2054 <_IO_stdin_used+0x54>
    166d:	31 d2                	xor    %edx,%edx
    166f:	31 f6                	xor    %esi,%esi
    1671:	e8 5a fb ff ff       	callq  11d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>
    1676:	4c 8d 2d 63 06 00 00 	lea    0x663(%rip),%r13        # 1ce0 <_Z30microbenchmark_get_sqt_latencyv>
    167d:	41 bc 1f 00 00 00    	mov    $0x1f,%r12d
    1683:	e9 a0 fd ff ff       	jmpq   1428 <_Z18run_microbenchmark21microbenchmark_mode_t+0x88>
    1688:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    168f:	00 
    1690:	41 b8 20 00 00 00    	mov    $0x20,%r8d
    1696:	48 8d 0d 43 0a 00 00 	lea    0xa43(%rip),%rcx        # 20e0 <_IO_stdin_used+0xe0>
    169d:	31 d2                	xor    %edx,%edx
    169f:	31 f6                	xor    %esi,%esi
    16a1:	e8 2a fb ff ff       	callq  11d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>
    16a6:	4c 8d 2d f3 06 00 00 	lea    0x6f3(%rip),%r13        # 1da0 <_Z29microbenchmark_get_sqt_rec_tpv>
    16ad:	41 bc 11 00 00 00    	mov    $0x11,%r12d
    16b3:	e9 70 fd ff ff       	jmpq   1428 <_Z18run_microbenchmark21microbenchmark_mode_t+0x88>
    16b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    16bf:	00 
    16c0:	41 b8 0c 00 00 00    	mov    $0xc,%r8d
    16c6:	48 8d 0d 9a 09 00 00 	lea    0x99a(%rip),%rcx        # 2067 <_IO_stdin_used+0x67>
    16cd:	31 d2                	xor    %edx,%edx
    16cf:	31 f6                	xor    %esi,%esi
    16d1:	e8 fa fa ff ff       	callq  11d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>
    16d6:	4c 8d 2d 33 08 00 00 	lea    0x833(%rip),%r13        # 1f10 <_Z30microbenchmark_get_foo_latencyv>
    16dd:	41 bc 25 00 00 00    	mov    $0x25,%r12d
    16e3:	e9 40 fd ff ff       	jmpq   1428 <_Z18run_microbenchmark21microbenchmark_mode_t+0x88>
    16e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    16ef:	00 
    16f0:	41 b8 1a 00 00 00    	mov    $0x1a,%r8d
    16f6:	48 8d 0d 77 09 00 00 	lea    0x977(%rip),%rcx        # 2074 <_IO_stdin_used+0x74>
    16fd:	31 d2                	xor    %edx,%edx
    16ff:	31 f6                	xor    %esi,%esi
    1701:	e8 ca fa ff ff       	callq  11d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>
    1706:	4c 8d 2d 13 08 00 00 	lea    0x813(%rip),%r13        # 1f20 <_Z29microbenchmark_get_foo_rec_tpv>
    170d:	41 bc 17 00 00 00    	mov    $0x17,%r12d
    1713:	e9 10 fd ff ff       	jmpq   1428 <_Z18run_microbenchmark21microbenchmark_mode_t+0x88>
    1718:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    171f:	00 
    1720:	48 89 ef             	mov    %rbp,%rdi
    1723:	e8 78 fa ff ff       	callq  11a0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
    1728:	48 8b 45 00          	mov    0x0(%rbp),%rax
    172c:	48 8d 15 7d 00 00 00 	lea    0x7d(%rip),%rdx        # 17b0 <_ZNKSt5ctypeIcE8do_widenEc>
    1733:	be 0a 00 00 00       	mov    $0xa,%esi
    1738:	48 8b 40 30          	mov    0x30(%rax),%rax
    173c:	48 39 d0             	cmp    %rdx,%rax
    173f:	0f 84 e4 fd ff ff    	je     1529 <_Z18run_microbenchmark21microbenchmark_mode_t+0x189>
    1745:	48 89 ef             	mov    %rbp,%rdi
    1748:	ff d0                	callq  *%rax
    174a:	0f be f0             	movsbl %al,%esi
    174d:	e9 d7 fd ff ff       	jmpq   1529 <_Z18run_microbenchmark21microbenchmark_mode_t+0x189>
    1752:	ba 0c 00 00 00       	mov    $0xc,%edx
    1757:	48 8d 35 44 09 00 00 	lea    0x944(%rip),%rsi        # 20a2 <_IO_stdin_used+0xa2>
    175e:	48 8d 3d db 28 00 00 	lea    0x28db(%rip),%rdi        # 4040 <_ZSt4cout@@GLIBCXX_3.4>
    1765:	e8 26 fa ff ff       	callq  1190 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    176a:	48 8b 05 cf 28 00 00 	mov    0x28cf(%rip),%rax        # 4040 <_ZSt4cout@@GLIBCXX_3.4>
    1771:	48 8d 15 c8 28 00 00 	lea    0x28c8(%rip),%rdx        # 4040 <_ZSt4cout@@GLIBCXX_3.4>
    1778:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    177c:	48 8b ac 02 f0 00 00 	mov    0xf0(%rdx,%rax,1),%rbp
    1783:	00 
    1784:	48 85 ed             	test   %rbp,%rbp
    1787:	0f 85 8e fd ff ff    	jne    151b <_Z18run_microbenchmark21microbenchmark_mode_t+0x17b>
    178d:	e8 1e fa ff ff       	callq  11b0 <_ZSt16__throw_bad_castv@plt>
    1792:	e8 19 fa ff ff       	callq  11b0 <_ZSt16__throw_bad_castv@plt>
    1797:	e8 e4 f9 ff ff       	callq  1180 <__stack_chk_fail@plt>
    179c:	f3 0f 1e fa          	endbr64 
    17a0:	48 89 c5             	mov    %rax,%rbp
    17a3:	e9 58 fa ff ff       	jmpq   1200 <_Z18run_microbenchmark21microbenchmark_mode_t.cold>
    17a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    17af:	00 

00000000000017b0 <_ZNKSt5ctypeIcE8do_widenEc>:
    17b0:	f3 0f 1e fa          	endbr64 
    17b4:	89 f0                	mov    %esi,%eax
    17b6:	c3                   	retq   
    17b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    17be:	00 00 

00000000000017c0 <_Z8init_tscv>:
    17c0:	f3 0f 1e fa          	endbr64 
    17c4:	c3                   	retq   
    17c5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    17cc:	00 00 00 00 

00000000000017d0 <_Z9start_tscv>:
    17d0:	f3 0f 1e fa          	endbr64 
    17d4:	53                   	push   %rbx
    17d5:	31 c0                	xor    %eax,%eax
    17d7:	0f a2                	cpuid  
    17d9:	0f 31                	rdtsc  
    17db:	48 c1 e2 20          	shl    $0x20,%rdx
    17df:	89 c0                	mov    %eax,%eax
    17e1:	5b                   	pop    %rbx
    17e2:	48 09 d0             	or     %rdx,%rax
    17e5:	c3                   	retq   
    17e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    17ed:	00 00 00 

00000000000017f0 <_Z8stop_tscy>:
    17f0:	f3 0f 1e fa          	endbr64 
    17f4:	53                   	push   %rbx
    17f5:	0f 31                	rdtsc  
    17f7:	48 c1 e2 20          	shl    $0x20,%rdx
    17fb:	89 c6                	mov    %eax,%esi
    17fd:	31 c0                	xor    %eax,%eax
    17ff:	48 09 d6             	or     %rdx,%rsi
    1802:	0f a2                	cpuid  
    1804:	48 89 f0             	mov    %rsi,%rax
    1807:	5b                   	pop    %rbx
    1808:	48 29 f8             	sub    %rdi,%rax
    180b:	c3                   	retq   
    180c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001810 <_Z30initialize_microbenchmark_data21microbenchmark_mode_t>:
    1810:	f3 0f 1e fa          	endbr64 
    1814:	83 ff 04             	cmp    $0x4,%edi
    1817:	0f 84 94 00 00 00    	je     18b1 <_Z30initialize_microbenchmark_data21microbenchmark_mode_t+0xa1>
    181d:	77 61                	ja     1880 <_Z30initialize_microbenchmark_data21microbenchmark_mode_t+0x70>
    181f:	41 54                	push   %r12
    1821:	55                   	push   %rbp
    1822:	53                   	push   %rbx
    1823:	48 83 ec 10          	sub    $0x10,%rsp
    1827:	83 ff 03             	cmp    $0x3,%edi
    182a:	0f 84 b0 00 00 00    	je     18e0 <_Z30initialize_microbenchmark_data21microbenchmark_mode_t+0xd0>
    1830:	f2 0f 10 1d 20 09 00 	movsd  0x920(%rip),%xmm3        # 2158 <_IO_stdin_used+0x158>
    1837:	00 
    1838:	48 8d 1d 81 4e f4 00 	lea    0xf44e81(%rip),%rbx        # f466c0 <arr>
    183f:	48 8d ab 00 12 7a 00 	lea    0x7a1200(%rbx),%rbp
    1846:	f2 0f 11 5c 24 08    	movsd  %xmm3,0x8(%rsp)
    184c:	0f 1f 40 00          	nopl   0x0(%rax)
    1850:	e8 db f8 ff ff       	callq  1130 <rand@plt>
    1855:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1859:	48 83 c3 08          	add    $0x8,%rbx
    185d:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
    1861:	f2 0f 5e 44 24 08    	divsd  0x8(%rsp),%xmm0
    1867:	f2 0f 11 43 f8       	movsd  %xmm0,-0x8(%rbx)
    186c:	48 39 dd             	cmp    %rbx,%rbp
    186f:	75 df                	jne    1850 <_Z30initialize_microbenchmark_data21microbenchmark_mode_t+0x40>
    1871:	48 83 c4 10          	add    $0x10,%rsp
    1875:	5b                   	pop    %rbx
    1876:	5d                   	pop    %rbp
    1877:	41 5c                	pop    %r12
    1879:	c3                   	retq   
    187a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1880:	48 8d 05 39 4e f4 00 	lea    0xf44e39(%rip),%rax        # f466c0 <arr>
    1887:	f2 0f 10 05 d1 08 00 	movsd  0x8d1(%rip),%xmm0        # 2160 <_IO_stdin_used+0x160>
    188e:	00 
    188f:	48 8d 90 00 12 7a 00 	lea    0x7a1200(%rax),%rdx
    1896:	83 ff 05             	cmp    $0x5,%edi
    1899:	75 15                	jne    18b0 <_Z30initialize_microbenchmark_data21microbenchmark_mode_t+0xa0>
    189b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    18a0:	f2 0f 11 00          	movsd  %xmm0,(%rax)
    18a4:	48 83 c0 08          	add    $0x8,%rax
    18a8:	48 39 d0             	cmp    %rdx,%rax
    18ab:	75 f3                	jne    18a0 <_Z30initialize_microbenchmark_data21microbenchmark_mode_t+0x90>
    18ad:	c3                   	retq   
    18ae:	66 90                	xchg   %ax,%ax
    18b0:	c3                   	retq   
    18b1:	48 8d 05 08 4e f4 00 	lea    0xf44e08(%rip),%rax        # f466c0 <arr>
    18b8:	f2 0f 10 05 a0 08 00 	movsd  0x8a0(%rip),%xmm0        # 2160 <_IO_stdin_used+0x160>
    18bf:	00 
    18c0:	48 8d 90 00 12 7a 00 	lea    0x7a1200(%rax),%rdx
    18c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    18ce:	00 00 
    18d0:	f2 0f 11 00          	movsd  %xmm0,(%rax)
    18d4:	48 83 c0 08          	add    $0x8,%rax
    18d8:	48 39 d0             	cmp    %rdx,%rax
    18db:	75 f3                	jne    18d0 <_Z30initialize_microbenchmark_data21microbenchmark_mode_t+0xc0>
    18dd:	c3                   	retq   
    18de:	66 90                	xchg   %ax,%ax
    18e0:	f2 0f 10 25 70 08 00 	movsd  0x870(%rip),%xmm4        # 2158 <_IO_stdin_used+0x158>
    18e7:	00 
    18e8:	48 8d 1d d1 4d f4 00 	lea    0xf44dd1(%rip),%rbx        # f466c0 <arr>
    18ef:	48 8d 2d 8a 3b 7a 00 	lea    0x7a3b8a(%rip),%rbp        # 7a5480 <arr_t>
    18f6:	4c 8d a3 00 12 7a 00 	lea    0x7a1200(%rbx),%r12
    18fd:	f2 0f 11 64 24 08    	movsd  %xmm4,0x8(%rsp)
    1903:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1908:	e8 23 f8 ff ff       	callq  1130 <rand@plt>
    190d:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1911:	48 83 c3 08          	add    $0x8,%rbx
    1915:	48 83 c5 08          	add    $0x8,%rbp
    1919:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
    191d:	f2 0f 5e 44 24 08    	divsd  0x8(%rsp),%xmm0
    1923:	f2 0f 11 43 f8       	movsd  %xmm0,-0x8(%rbx)
    1928:	f2 0f 11 45 f8       	movsd  %xmm0,-0x8(%rbp)
    192d:	4c 39 e3             	cmp    %r12,%rbx
    1930:	75 d6                	jne    1908 <_Z30initialize_microbenchmark_data21microbenchmark_mode_t+0xf8>
    1932:	48 83 c4 10          	add    $0x10,%rsp
    1936:	5b                   	pop    %rbx
    1937:	5d                   	pop    %rbp
    1938:	41 5c                	pop    %r12
    193a:	c3                   	retq   
    193b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001940 <_Z30microbenchmark_get_add_latencyv>:
    1940:	f3 0f 1e fa          	endbr64 
    1944:	41 54                	push   %r12
    1946:	55                   	push   %rbp
    1947:	48 8d 2d 72 4d f4 00 	lea    0xf44d72(%rip),%rbp        # f466c0 <arr>
    194e:	53                   	push   %rbx
    194f:	4c 8d a5 00 12 7a 00 	lea    0x7a1200(%rbp),%r12
    1956:	48 89 eb             	mov    %rbp,%rbx
    1959:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1960:	e8 cb f7 ff ff       	callq  1130 <rand@plt>
    1965:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1969:	48 83 c3 08          	add    $0x8,%rbx
    196d:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
    1971:	f2 0f 5e 05 df 07 00 	divsd  0x7df(%rip),%xmm0        # 2158 <_IO_stdin_used+0x158>
    1978:	00 
    1979:	f2 0f 11 43 f8       	movsd  %xmm0,-0x8(%rbx)
    197e:	4c 39 e3             	cmp    %r12,%rbx
    1981:	75 dd                	jne    1960 <_Z30microbenchmark_get_add_latencyv+0x20>
    1983:	45 31 c0             	xor    %r8d,%r8d
    1986:	44 89 c0             	mov    %r8d,%eax
    1989:	0f a2                	cpuid  
    198b:	0f 31                	rdtsc  
    198d:	48 c1 e2 20          	shl    $0x20,%rdx
    1991:	89 c6                	mov    %eax,%esi
    1993:	48 09 d6             	or     %rdx,%rsi
    1996:	0f 31                	rdtsc  
    1998:	48 c1 e2 20          	shl    $0x20,%rdx
    199c:	89 c7                	mov    %eax,%edi
    199e:	44 89 c0             	mov    %r8d,%eax
    19a1:	48 09 d7             	or     %rdx,%rdi
    19a4:	0f a2                	cpuid  
    19a6:	0f a2                	cpuid  
    19a8:	0f 31                	rdtsc  
    19aa:	48 c1 e2 20          	shl    $0x20,%rdx
    19ae:	41 89 c0             	mov    %eax,%r8d
    19b1:	66 0f ef c0          	pxor   %xmm0,%xmm0
    19b5:	49 09 d0             	or     %rdx,%r8
    19b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    19bf:	00 
    19c0:	f2 0f 58 45 00       	addsd  0x0(%rbp),%xmm0
    19c5:	48 83 c5 08          	add    $0x8,%rbp
    19c9:	4c 39 e5             	cmp    %r12,%rbp
    19cc:	75 f2                	jne    19c0 <_Z30microbenchmark_get_add_latencyv+0x80>
    19ce:	0f 31                	rdtsc  
    19d0:	48 c1 e2 20          	shl    $0x20,%rdx
    19d4:	89 c0                	mov    %eax,%eax
    19d6:	48 09 d0             	or     %rdx,%rax
    19d9:	49 89 c1             	mov    %rax,%r9
    19dc:	31 c0                	xor    %eax,%eax
    19de:	0f a2                	cpuid  
    19e0:	4a 8d 04 0e          	lea    (%rsi,%r9,1),%rax
    19e4:	f2 0f 11 05 3c 28 00 	movsd  %xmm0,0x283c(%rip)        # 4228 <res>
    19eb:	00 
    19ec:	4c 29 c0             	sub    %r8,%rax
    19ef:	48 29 f8             	sub    %rdi,%rax
    19f2:	78 16                	js     1a0a <_Z30microbenchmark_get_add_latencyv+0xca>
    19f4:	66 0f ef c0          	pxor   %xmm0,%xmm0
    19f8:	5b                   	pop    %rbx
    19f9:	5d                   	pop    %rbp
    19fa:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
    19ff:	41 5c                	pop    %r12
    1a01:	f2 0f 5e 05 5f 07 00 	divsd  0x75f(%rip),%xmm0        # 2168 <_IO_stdin_used+0x168>
    1a08:	00 
    1a09:	c3                   	retq   
    1a0a:	48 89 c2             	mov    %rax,%rdx
    1a0d:	83 e0 01             	and    $0x1,%eax
    1a10:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1a14:	5b                   	pop    %rbx
    1a15:	48 d1 ea             	shr    %rdx
    1a18:	5d                   	pop    %rbp
    1a19:	41 5c                	pop    %r12
    1a1b:	48 09 c2             	or     %rax,%rdx
    1a1e:	f2 48 0f 2a c2       	cvtsi2sd %rdx,%xmm0
    1a23:	f2 0f 58 c0          	addsd  %xmm0,%xmm0
    1a27:	f2 0f 5e 05 39 07 00 	divsd  0x739(%rip),%xmm0        # 2168 <_IO_stdin_used+0x168>
    1a2e:	00 
    1a2f:	c3                   	retq   

0000000000001a30 <_Z29microbenchmark_get_add_rec_tpv>:
    1a30:	f3 0f 1e fa          	endbr64 
    1a34:	41 54                	push   %r12
    1a36:	55                   	push   %rbp
    1a37:	48 8d 2d 82 4c f4 00 	lea    0xf44c82(%rip),%rbp        # f466c0 <arr>
    1a3e:	53                   	push   %rbx
    1a3f:	4c 8d a5 00 12 7a 00 	lea    0x7a1200(%rbp),%r12
    1a46:	48 89 eb             	mov    %rbp,%rbx
    1a49:	48 83 ec 10          	sub    $0x10,%rsp
    1a4d:	0f 1f 00             	nopl   (%rax)
    1a50:	e8 db f6 ff ff       	callq  1130 <rand@plt>
    1a55:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1a59:	48 83 c3 08          	add    $0x8,%rbx
    1a5d:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
    1a61:	f2 0f 5e 05 ef 06 00 	divsd  0x6ef(%rip),%xmm0        # 2158 <_IO_stdin_used+0x158>
    1a68:	00 
    1a69:	f2 0f 11 43 f8       	movsd  %xmm0,-0x8(%rbx)
    1a6e:	49 39 dc             	cmp    %rbx,%r12
    1a71:	75 dd                	jne    1a50 <_Z29microbenchmark_get_add_rec_tpv+0x20>
    1a73:	31 c0                	xor    %eax,%eax
    1a75:	0f a2                	cpuid  
    1a77:	0f 31                	rdtsc  
    1a79:	f2 0f 10 0d 97 27 00 	movsd  0x2797(%rip),%xmm1        # 4218 <t0>
    1a80:	00 
    1a81:	89 c6                	mov    %eax,%esi
    1a83:	48 c1 e2 20          	shl    $0x20,%rdx
    1a87:	f2 0f 10 3d 81 27 00 	movsd  0x2781(%rip),%xmm7        # 4210 <t1>
    1a8e:	00 
    1a8f:	f2 0f 10 35 71 27 00 	movsd  0x2771(%rip),%xmm6        # 4208 <t2>
    1a96:	00 
    1a97:	f2 0f 10 2d 61 27 00 	movsd  0x2761(%rip),%xmm5        # 4200 <t3>
    1a9e:	00 
    1a9f:	48 09 d6             	or     %rdx,%rsi
    1aa2:	48 8d 05 17 4c f4 00 	lea    0xf44c17(%rip),%rax        # f466c0 <arr>
    1aa9:	f2 0f 10 25 47 27 00 	movsd  0x2747(%rip),%xmm4        # 41f8 <t4>
    1ab0:	00 
    1ab1:	f2 0f 10 1d 37 27 00 	movsd  0x2737(%rip),%xmm3        # 41f0 <t5>
    1ab8:	00 
    1ab9:	f2 0f 10 15 27 27 00 	movsd  0x2727(%rip),%xmm2        # 41e8 <t6>
    1ac0:	00 
    1ac1:	f2 0f 10 05 17 27 00 	movsd  0x2717(%rip),%xmm0        # 41e0 <t7>
    1ac8:	00 
    1ac9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1ad0:	f2 0f 58 08          	addsd  (%rax),%xmm1
    1ad4:	f2 0f 58 78 08       	addsd  0x8(%rax),%xmm7
    1ad9:	48 83 c0 40          	add    $0x40,%rax
    1add:	f2 0f 58 70 d0       	addsd  -0x30(%rax),%xmm6
    1ae2:	f2 0f 58 68 d8       	addsd  -0x28(%rax),%xmm5
    1ae7:	f2 0f 58 60 e0       	addsd  -0x20(%rax),%xmm4
    1aec:	f2 0f 58 58 e8       	addsd  -0x18(%rax),%xmm3
    1af1:	f2 0f 58 50 f0       	addsd  -0x10(%rax),%xmm2
    1af6:	f2 0f 58 40 f8       	addsd  -0x8(%rax),%xmm0
    1afb:	49 39 c4             	cmp    %rax,%r12
    1afe:	75 d0                	jne    1ad0 <_Z29microbenchmark_get_add_rec_tpv+0xa0>
    1b00:	0f 31                	rdtsc  
    1b02:	48 c1 e2 20          	shl    $0x20,%rdx
    1b06:	89 c7                	mov    %eax,%edi
    1b08:	31 c0                	xor    %eax,%eax
    1b0a:	48 09 d7             	or     %rdx,%rdi
    1b0d:	0f a2                	cpuid  
    1b0f:	0f a2                	cpuid  
    1b11:	0f 31                	rdtsc  
    1b13:	66 44 0f 28 cf       	movapd %xmm7,%xmm9
    1b18:	66 0f 28 fd          	movapd %xmm5,%xmm7
    1b1c:	48 c1 e2 20          	shl    $0x20,%rdx
    1b20:	41 89 c0             	mov    %eax,%r8d
    1b23:	f2 0f 11 7c 24 08    	movsd  %xmm7,0x8(%rsp)
    1b29:	66 0f 28 eb          	movapd %xmm3,%xmm5
    1b2d:	49 09 d0             	or     %rdx,%r8
    1b30:	66 44 0f 28 c6       	movapd %xmm6,%xmm8
    1b35:	66 41 0f 28 f9       	movapd %xmm9,%xmm7
    1b3a:	66 0f 28 f4          	movapd %xmm4,%xmm6
    1b3e:	f2 0f 10 1d 92 26 00 	movsd  0x2692(%rip),%xmm3        # 41d8 <s0>
    1b45:	00 
    1b46:	66 0f 28 e2          	movapd %xmm2,%xmm4
    1b4a:	f2 44 0f 10 3d 75 26 	movsd  0x2675(%rip),%xmm15        # 41c8 <s2>
    1b51:	00 00 
    1b53:	f2 44 0f 10 4c 24 08 	movsd  0x8(%rsp),%xmm9
    1b5a:	f2 0f 10 15 6e 26 00 	movsd  0x266e(%rip),%xmm2        # 41d0 <s1>
    1b61:	00 
    1b62:	f2 44 0f 10 35 55 26 	movsd  0x2655(%rip),%xmm14        # 41c0 <s3>
    1b69:	00 00 
    1b6b:	f2 44 0f 10 2d 44 26 	movsd  0x2644(%rip),%xmm13        # 41b8 <s4>
    1b72:	00 00 
    1b74:	f2 44 0f 10 25 33 26 	movsd  0x2633(%rip),%xmm12        # 41b0 <s5>
    1b7b:	00 00 
    1b7d:	f2 44 0f 10 1d 22 26 	movsd  0x2622(%rip),%xmm11        # 41a8 <s6>
    1b84:	00 00 
    1b86:	f2 44 0f 10 15 11 26 	movsd  0x2611(%rip),%xmm10        # 41a0 <s7>
    1b8d:	00 00 
    1b8f:	90                   	nop
    1b90:	f2 0f 58 4d 00       	addsd  0x0(%rbp),%xmm1
    1b95:	f2 0f 58 7d 08       	addsd  0x8(%rbp),%xmm7
    1b9a:	48 83 c5 40          	add    $0x40,%rbp
    1b9e:	f2 44 0f 58 45 d0    	addsd  -0x30(%rbp),%xmm8
    1ba4:	f2 44 0f 58 4d d8    	addsd  -0x28(%rbp),%xmm9
    1baa:	f2 0f 58 75 e0       	addsd  -0x20(%rbp),%xmm6
    1baf:	f2 0f 58 6d e8       	addsd  -0x18(%rbp),%xmm5
    1bb4:	f2 0f 58 65 f0       	addsd  -0x10(%rbp),%xmm4
    1bb9:	f2 0f 58 45 f8       	addsd  -0x8(%rbp),%xmm0
    1bbe:	f2 0f 58 5d c0       	addsd  -0x40(%rbp),%xmm3
    1bc3:	f2 0f 58 55 c8       	addsd  -0x38(%rbp),%xmm2
    1bc8:	f2 44 0f 58 7d d0    	addsd  -0x30(%rbp),%xmm15
    1bce:	f2 44 0f 58 75 d8    	addsd  -0x28(%rbp),%xmm14
    1bd4:	f2 44 0f 58 6d e0    	addsd  -0x20(%rbp),%xmm13
    1bda:	f2 44 0f 58 65 e8    	addsd  -0x18(%rbp),%xmm12
    1be0:	f2 44 0f 58 5d f0    	addsd  -0x10(%rbp),%xmm11
    1be6:	f2 44 0f 58 55 f8    	addsd  -0x8(%rbp),%xmm10
    1bec:	49 39 ec             	cmp    %rbp,%r12
    1bef:	75 9f                	jne    1b90 <_Z29microbenchmark_get_add_rec_tpv+0x160>
    1bf1:	f2 44 0f 11 4c 24 08 	movsd  %xmm9,0x8(%rsp)
    1bf8:	66 44 0f 28 cf       	movapd %xmm7,%xmm9
    1bfd:	f2 0f 10 7c 24 08    	movsd  0x8(%rsp),%xmm7
    1c03:	f2 0f 11 0d 0d 26 00 	movsd  %xmm1,0x260d(%rip)        # 4218 <t0>
    1c0a:	00 
    1c0b:	f2 44 0f 11 0d fc 25 	movsd  %xmm9,0x25fc(%rip)        # 4210 <t1>
    1c12:	00 00 
    1c14:	f2 44 0f 11 05 eb 25 	movsd  %xmm8,0x25eb(%rip)        # 4208 <t2>
    1c1b:	00 00 
    1c1d:	f2 0f 11 3d db 25 00 	movsd  %xmm7,0x25db(%rip)        # 4200 <t3>
    1c24:	00 
    1c25:	f2 0f 11 35 cb 25 00 	movsd  %xmm6,0x25cb(%rip)        # 41f8 <t4>
    1c2c:	00 
    1c2d:	f2 0f 11 2d bb 25 00 	movsd  %xmm5,0x25bb(%rip)        # 41f0 <t5>
    1c34:	00 
    1c35:	f2 0f 11 25 ab 25 00 	movsd  %xmm4,0x25ab(%rip)        # 41e8 <t6>
    1c3c:	00 
    1c3d:	f2 0f 11 05 9b 25 00 	movsd  %xmm0,0x259b(%rip)        # 41e0 <t7>
    1c44:	00 
    1c45:	f2 0f 11 1d 8b 25 00 	movsd  %xmm3,0x258b(%rip)        # 41d8 <s0>
    1c4c:	00 
    1c4d:	f2 0f 11 15 7b 25 00 	movsd  %xmm2,0x257b(%rip)        # 41d0 <s1>
    1c54:	00 
    1c55:	f2 44 0f 11 3d 6a 25 	movsd  %xmm15,0x256a(%rip)        # 41c8 <s2>
    1c5c:	00 00 
    1c5e:	f2 44 0f 11 35 59 25 	movsd  %xmm14,0x2559(%rip)        # 41c0 <s3>
    1c65:	00 00 
    1c67:	f2 44 0f 11 2d 48 25 	movsd  %xmm13,0x2548(%rip)        # 41b8 <s4>
    1c6e:	00 00 
    1c70:	f2 44 0f 11 25 37 25 	movsd  %xmm12,0x2537(%rip)        # 41b0 <s5>
    1c77:	00 00 
    1c79:	f2 44 0f 11 1d 26 25 	movsd  %xmm11,0x2526(%rip)        # 41a8 <s6>
    1c80:	00 00 
    1c82:	f2 44 0f 11 15 15 25 	movsd  %xmm10,0x2515(%rip)        # 41a0 <s7>
    1c89:	00 00 
    1c8b:	0f 31                	rdtsc  
    1c8d:	48 c1 e2 20          	shl    $0x20,%rdx
    1c91:	89 c0                	mov    %eax,%eax
    1c93:	48 09 d0             	or     %rdx,%rax
    1c96:	49 89 c1             	mov    %rax,%r9
    1c99:	31 c0                	xor    %eax,%eax
    1c9b:	0f a2                	cpuid  
    1c9d:	4a 8d 04 0e          	lea    (%rsi,%r9,1),%rax
    1ca1:	4c 29 c0             	sub    %r8,%rax
    1ca4:	48 29 f8             	sub    %rdi,%rax
    1ca7:	78 1a                	js     1cc3 <_Z29microbenchmark_get_add_rec_tpv+0x293>
    1ca9:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1cad:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
    1cb2:	f2 0f 5e 05 ae 04 00 	divsd  0x4ae(%rip),%xmm0        # 2168 <_IO_stdin_used+0x168>
    1cb9:	00 
    1cba:	48 83 c4 10          	add    $0x10,%rsp
    1cbe:	5b                   	pop    %rbx
    1cbf:	5d                   	pop    %rbp
    1cc0:	41 5c                	pop    %r12
    1cc2:	c3                   	retq   
    1cc3:	48 89 c2             	mov    %rax,%rdx
    1cc6:	83 e0 01             	and    $0x1,%eax
    1cc9:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1ccd:	48 d1 ea             	shr    %rdx
    1cd0:	48 09 c2             	or     %rax,%rdx
    1cd3:	f2 48 0f 2a c2       	cvtsi2sd %rdx,%xmm0
    1cd8:	f2 0f 58 c0          	addsd  %xmm0,%xmm0
    1cdc:	eb d4                	jmp    1cb2 <_Z29microbenchmark_get_add_rec_tpv+0x282>
    1cde:	66 90                	xchg   %ax,%ax

0000000000001ce0 <_Z30microbenchmark_get_sqt_latencyv>:
    1ce0:	f3 0f 1e fa          	endbr64 
    1ce4:	45 31 c0             	xor    %r8d,%r8d
    1ce7:	53                   	push   %rbx
    1ce8:	44 89 c0             	mov    %r8d,%eax
    1ceb:	0f a2                	cpuid  
    1ced:	0f 31                	rdtsc  
    1cef:	48 c1 e2 20          	shl    $0x20,%rdx
    1cf3:	89 c6                	mov    %eax,%esi
    1cf5:	48 09 d6             	or     %rdx,%rsi
    1cf8:	0f 31                	rdtsc  
    1cfa:	48 c1 e2 20          	shl    $0x20,%rdx
    1cfe:	89 c7                	mov    %eax,%edi
    1d00:	44 89 c0             	mov    %r8d,%eax
    1d03:	48 09 d7             	or     %rdx,%rdi
    1d06:	0f a2                	cpuid  
    1d08:	0f a2                	cpuid  
    1d0a:	0f 31                	rdtsc  
    1d0c:	f2 0f 10 05 ac 49 f4 	movsd  0xf449ac(%rip),%xmm0        # f466c0 <arr>
    1d13:	00 
    1d14:	48 c1 e2 20          	shl    $0x20,%rdx
    1d18:	41 89 c0             	mov    %eax,%r8d
    1d1b:	48 8d 05 a6 49 f4 00 	lea    0xf449a6(%rip),%rax        # f466c8 <arr+0x8>
    1d22:	49 09 d0             	or     %rdx,%r8
    1d25:	48 8d 90 00 12 7a 00 	lea    0x7a1200(%rax),%rdx
    1d2c:	0f 1f 40 00          	nopl   0x0(%rax)
    1d30:	f2 0f 51 c0          	sqrtsd %xmm0,%xmm0
    1d34:	48 83 c0 08          	add    $0x8,%rax
    1d38:	f2 0f 11 40 f8       	movsd  %xmm0,-0x8(%rax)
    1d3d:	48 39 d0             	cmp    %rdx,%rax
    1d40:	75 ee                	jne    1d30 <_Z30microbenchmark_get_sqt_latencyv+0x50>
    1d42:	0f 31                	rdtsc  
    1d44:	48 c1 e2 20          	shl    $0x20,%rdx
    1d48:	89 c0                	mov    %eax,%eax
    1d4a:	48 09 d0             	or     %rdx,%rax
    1d4d:	49 89 c1             	mov    %rax,%r9
    1d50:	31 c0                	xor    %eax,%eax
    1d52:	0f a2                	cpuid  
    1d54:	4a 8d 04 0e          	lea    (%rsi,%r9,1),%rax
    1d58:	4c 29 c0             	sub    %r8,%rax
    1d5b:	48 29 f8             	sub    %rdi,%rax
    1d5e:	78 13                	js     1d73 <_Z30microbenchmark_get_sqt_latencyv+0x93>
    1d60:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1d64:	5b                   	pop    %rbx
    1d65:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
    1d6a:	f2 0f 5e 05 f6 03 00 	divsd  0x3f6(%rip),%xmm0        # 2168 <_IO_stdin_used+0x168>
    1d71:	00 
    1d72:	c3                   	retq   
    1d73:	48 89 c2             	mov    %rax,%rdx
    1d76:	83 e0 01             	and    $0x1,%eax
    1d79:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1d7d:	5b                   	pop    %rbx
    1d7e:	48 d1 ea             	shr    %rdx
    1d81:	48 09 c2             	or     %rax,%rdx
    1d84:	f2 48 0f 2a c2       	cvtsi2sd %rdx,%xmm0
    1d89:	f2 0f 58 c0          	addsd  %xmm0,%xmm0
    1d8d:	f2 0f 5e 05 d3 03 00 	divsd  0x3d3(%rip),%xmm0        # 2168 <_IO_stdin_used+0x168>
    1d94:	00 
    1d95:	c3                   	retq   
    1d96:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1d9d:	00 00 00 

0000000000001da0 <_Z29microbenchmark_get_sqt_rec_tpv>:
    1da0:	f3 0f 1e fa          	endbr64 
    1da4:	53                   	push   %rbx
    1da5:	31 c0                	xor    %eax,%eax
    1da7:	0f a2                	cpuid  
    1da9:	0f 31                	rdtsc  
    1dab:	48 8d 35 0e 49 f4 00 	lea    0xf4490e(%rip),%rsi        # f466c0 <arr>
    1db2:	48 c1 e2 20          	shl    $0x20,%rdx
    1db6:	41 89 c1             	mov    %eax,%r9d
    1db9:	49 09 d1             	or     %rdx,%r9
    1dbc:	48 8d be 00 12 7a 00 	lea    0x7a1200(%rsi),%rdi
    1dc3:	48 89 f0             	mov    %rsi,%rax
    1dc6:	48 8d 15 b3 36 7a 00 	lea    0x7a36b3(%rip),%rdx        # 7a5480 <arr_t>
    1dcd:	0f 1f 00             	nopl   (%rax)
    1dd0:	f2 0f 10 00          	movsd  (%rax),%xmm0
    1dd4:	48 83 c0 40          	add    $0x40,%rax
    1dd8:	48 83 c2 40          	add    $0x40,%rdx
    1ddc:	f2 0f 11 42 c0       	movsd  %xmm0,-0x40(%rdx)
    1de1:	f2 0f 10 40 c8       	movsd  -0x38(%rax),%xmm0
    1de6:	f2 0f 11 42 c8       	movsd  %xmm0,-0x38(%rdx)
    1deb:	f2 0f 10 40 d0       	movsd  -0x30(%rax),%xmm0
    1df0:	f2 0f 11 42 d0       	movsd  %xmm0,-0x30(%rdx)
    1df5:	f2 0f 10 40 d8       	movsd  -0x28(%rax),%xmm0
    1dfa:	f2 0f 11 42 d8       	movsd  %xmm0,-0x28(%rdx)
    1dff:	f2 0f 10 40 e0       	movsd  -0x20(%rax),%xmm0
    1e04:	f2 0f 11 42 e0       	movsd  %xmm0,-0x20(%rdx)
    1e09:	f2 0f 10 40 e8       	movsd  -0x18(%rax),%xmm0
    1e0e:	f2 0f 11 42 e8       	movsd  %xmm0,-0x18(%rdx)
    1e13:	f2 0f 10 40 f0       	movsd  -0x10(%rax),%xmm0
    1e18:	f2 0f 11 42 f0       	movsd  %xmm0,-0x10(%rdx)
    1e1d:	f2 0f 10 40 f8       	movsd  -0x8(%rax),%xmm0
    1e22:	f2 0f 11 42 f8       	movsd  %xmm0,-0x8(%rdx)
    1e27:	48 39 f8             	cmp    %rdi,%rax
    1e2a:	75 a4                	jne    1dd0 <_Z29microbenchmark_get_sqt_rec_tpv+0x30>
    1e2c:	0f 31                	rdtsc  
    1e2e:	48 c1 e2 20          	shl    $0x20,%rdx
    1e32:	41 89 c0             	mov    %eax,%r8d
    1e35:	31 c0                	xor    %eax,%eax
    1e37:	49 09 d0             	or     %rdx,%r8
    1e3a:	0f a2                	cpuid  
    1e3c:	4d 29 c8             	sub    %r9,%r8
    1e3f:	0f a2                	cpuid  
    1e41:	0f 31                	rdtsc  
    1e43:	48 8d 05 f6 23 00 00 	lea    0x23f6(%rip),%rax        # 4240 <arr_s>
    1e4a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1e50:	f2 0f 10 06          	movsd  (%rsi),%xmm0
    1e54:	48 83 c6 40          	add    $0x40,%rsi
    1e58:	48 83 c0 40          	add    $0x40,%rax
    1e5c:	f2 0f 51 c0          	sqrtsd %xmm0,%xmm0
    1e60:	f2 0f 11 40 c0       	movsd  %xmm0,-0x40(%rax)
    1e65:	f2 0f 10 46 c8       	movsd  -0x38(%rsi),%xmm0
    1e6a:	f2 0f 51 c0          	sqrtsd %xmm0,%xmm0
    1e6e:	f2 0f 11 40 c8       	movsd  %xmm0,-0x38(%rax)
    1e73:	f2 0f 10 46 d0       	movsd  -0x30(%rsi),%xmm0
    1e78:	f2 0f 51 c0          	sqrtsd %xmm0,%xmm0
    1e7c:	f2 0f 11 40 d0       	movsd  %xmm0,-0x30(%rax)
    1e81:	f2 0f 10 46 d8       	movsd  -0x28(%rsi),%xmm0
    1e86:	f2 0f 51 c0          	sqrtsd %xmm0,%xmm0
    1e8a:	f2 0f 11 40 d8       	movsd  %xmm0,-0x28(%rax)
    1e8f:	f2 0f 10 46 e0       	movsd  -0x20(%rsi),%xmm0
    1e94:	f2 0f 51 c0          	sqrtsd %xmm0,%xmm0
    1e98:	f2 0f 11 40 e0       	movsd  %xmm0,-0x20(%rax)
    1e9d:	f2 0f 10 46 e8       	movsd  -0x18(%rsi),%xmm0
    1ea2:	f2 0f 51 c0          	sqrtsd %xmm0,%xmm0
    1ea6:	f2 0f 11 40 e8       	movsd  %xmm0,-0x18(%rax)
    1eab:	f2 0f 10 46 f0       	movsd  -0x10(%rsi),%xmm0
    1eb0:	f2 0f 51 c0          	sqrtsd %xmm0,%xmm0
    1eb4:	f2 0f 11 40 f0       	movsd  %xmm0,-0x10(%rax)
    1eb9:	f2 0f 10 46 f8       	movsd  -0x8(%rsi),%xmm0
    1ebe:	f2 0f 51 c0          	sqrtsd %xmm0,%xmm0
    1ec2:	f2 0f 11 40 f8       	movsd  %xmm0,-0x8(%rax)
    1ec7:	48 39 f7             	cmp    %rsi,%rdi
    1eca:	75 84                	jne    1e50 <_Z29microbenchmark_get_sqt_rec_tpv+0xb0>
    1ecc:	0f 31                	rdtsc  
    1ece:	31 c0                	xor    %eax,%eax
    1ed0:	0f a2                	cpuid  
    1ed2:	4d 85 c0             	test   %r8,%r8
    1ed5:	78 13                	js     1eea <_Z29microbenchmark_get_sqt_rec_tpv+0x14a>
    1ed7:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1edb:	5b                   	pop    %rbx
    1edc:	f2 49 0f 2a c0       	cvtsi2sd %r8,%xmm0
    1ee1:	f2 0f 5e 05 7f 02 00 	divsd  0x27f(%rip),%xmm0        # 2168 <_IO_stdin_used+0x168>
    1ee8:	00 
    1ee9:	c3                   	retq   
    1eea:	4c 89 c0             	mov    %r8,%rax
    1eed:	41 83 e0 01          	and    $0x1,%r8d
    1ef1:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1ef5:	5b                   	pop    %rbx
    1ef6:	48 d1 e8             	shr    %rax
    1ef9:	4c 09 c0             	or     %r8,%rax
    1efc:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
    1f01:	f2 0f 58 c0          	addsd  %xmm0,%xmm0
    1f05:	f2 0f 5e 05 5b 02 00 	divsd  0x25b(%rip),%xmm0        # 2168 <_IO_stdin_used+0x168>
    1f0c:	00 
    1f0d:	c3                   	retq   
    1f0e:	66 90                	xchg   %ax,%ax

0000000000001f10 <_Z30microbenchmark_get_foo_latencyv>:
    1f10:	f3 0f 1e fa          	endbr64 
    1f14:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1f18:	c3                   	retq   
    1f19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001f20 <_Z29microbenchmark_get_foo_rec_tpv>:
    1f20:	f3 0f 1e fa          	endbr64 
    1f24:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1f28:	c3                   	retq   
    1f29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001f30 <__libc_csu_init>:
    1f30:	f3 0f 1e fa          	endbr64 
    1f34:	41 57                	push   %r15
    1f36:	4c 8d 3d e3 1d 00 00 	lea    0x1de3(%rip),%r15        # 3d20 <__frame_dummy_init_array_entry>
    1f3d:	41 56                	push   %r14
    1f3f:	49 89 d6             	mov    %rdx,%r14
    1f42:	41 55                	push   %r13
    1f44:	49 89 f5             	mov    %rsi,%r13
    1f47:	41 54                	push   %r12
    1f49:	41 89 fc             	mov    %edi,%r12d
    1f4c:	55                   	push   %rbp
    1f4d:	48 8d 2d dc 1d 00 00 	lea    0x1ddc(%rip),%rbp        # 3d30 <__do_global_dtors_aux_fini_array_entry>
    1f54:	53                   	push   %rbx
    1f55:	4c 29 fd             	sub    %r15,%rbp
    1f58:	48 83 ec 08          	sub    $0x8,%rsp
    1f5c:	e8 9f f0 ff ff       	callq  1000 <_init>
    1f61:	48 c1 fd 03          	sar    $0x3,%rbp
    1f65:	74 1f                	je     1f86 <__libc_csu_init+0x56>
    1f67:	31 db                	xor    %ebx,%ebx
    1f69:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1f70:	4c 89 f2             	mov    %r14,%rdx
    1f73:	4c 89 ee             	mov    %r13,%rsi
    1f76:	44 89 e7             	mov    %r12d,%edi
    1f79:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    1f7d:	48 83 c3 01          	add    $0x1,%rbx
    1f81:	48 39 dd             	cmp    %rbx,%rbp
    1f84:	75 ea                	jne    1f70 <__libc_csu_init+0x40>
    1f86:	48 83 c4 08          	add    $0x8,%rsp
    1f8a:	5b                   	pop    %rbx
    1f8b:	5d                   	pop    %rbp
    1f8c:	41 5c                	pop    %r12
    1f8e:	41 5d                	pop    %r13
    1f90:	41 5e                	pop    %r14
    1f92:	41 5f                	pop    %r15
    1f94:	c3                   	retq   
    1f95:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    1f9c:	00 00 00 00 

0000000000001fa0 <__libc_csu_fini>:
    1fa0:	f3 0f 1e fa          	endbr64 
    1fa4:	c3                   	retq   

Disassembly of section .fini:

0000000000001fa8 <_fini>:
    1fa8:	f3 0f 1e fa          	endbr64 
    1fac:	48 83 ec 08          	sub    $0x8,%rsp
    1fb0:	48 83 c4 08          	add    $0x8,%rsp
    1fb4:	c3                   	retq   

Disassembly of section .rodata:

0000000000002000 <_IO_stdin_used>:
    2000:	01 00                	add    %eax,(%rax)
    2002:	02 00                	add    (%rax),%al
    2004:	61                   	(bad)  
    2005:	64 64 20 20          	fs and %ah,%fs:(%rax)
    2009:	6c                   	insb   (%dx),%es:(%rdi)
    200a:	61                   	(bad)  
    200b:	74 65                	je     2072 <_IO_stdin_used+0x72>
    200d:	6e                   	outsb  %ds:(%rsi),(%dx)
    200e:	63 79 00             	movslq 0x0(%rcx),%edi
    2011:	61                   	(bad)  
    2012:	64 64 20 20          	fs and %ah,%fs:(%rax)
    2016:	72 65                	jb     207d <_IO_stdin_used+0x7d>
    2018:	63 69 70             	movslq 0x70(%rcx),%ebp
    201b:	72 6f                	jb     208c <_IO_stdin_used+0x8c>
    201d:	63 61 6c             	movslq 0x6c(%rcx),%esp
    2020:	20 74 68 72          	and    %dh,0x72(%rax,%rbp,2)
    2024:	6f                   	outsl  %ds:(%rsi),(%dx)
    2025:	75 67                	jne    208e <_IO_stdin_used+0x8e>
    2027:	68 70 75 74 00       	pushq  $0x747570
    202c:	73 71                	jae    209f <_IO_stdin_used+0x9f>
    202e:	72 74                	jb     20a4 <_IO_stdin_used+0xa4>
    2030:	20 6c 61 74          	and    %ch,0x74(%rcx,%riz,2)
    2034:	65 6e                	outsb  %gs:(%rsi),(%dx)
    2036:	63 79 00             	movslq 0x0(%rcx),%edi
    2039:	73 71                	jae    20ac <_IO_stdin_used+0xac>
    203b:	72 74                	jb     20b1 <_IO_stdin_used+0xb1>
    203d:	20 72 65             	and    %dh,0x65(%rdx)
    2040:	63 69 70             	movslq 0x70(%rcx),%ebp
    2043:	72 6f                	jb     20b4 <_IO_stdin_used+0xb4>
    2045:	63 61 6c             	movslq 0x6c(%rcx),%esp
    2048:	20 74 68 72          	and    %dh,0x72(%rax,%rbp,2)
    204c:	6f                   	outsl  %ds:(%rsi),(%dx)
    204d:	75 67                	jne    20b6 <_IO_stdin_used+0xb6>
    204f:	68 70 75 74 00       	pushq  $0x747570
    2054:	73 71                	jae    20c7 <_IO_stdin_used+0xc7>
    2056:	72 74                	jb     20cc <_IO_stdin_used+0xcc>
    2058:	20 6c 61 74          	and    %ch,0x74(%rcx,%riz,2)
    205c:	65 6e                	outsb  %gs:(%rsi),(%dx)
    205e:	63 79 20             	movslq 0x20(%rcx),%edi
    2061:	28 6d 69             	sub    %ch,0x69(%rbp)
    2064:	6e                   	outsb  %ds:(%rsi),(%dx)
    2065:	29 00                	sub    %eax,(%rax)
    2067:	66 6f                	outsw  %ds:(%rsi),(%dx)
    2069:	6f                   	outsl  %ds:(%rsi),(%dx)
    206a:	20 20                	and    %ah,(%rax)
    206c:	6c                   	insb   (%dx),%es:(%rdi)
    206d:	61                   	(bad)  
    206e:	74 65                	je     20d5 <_IO_stdin_used+0xd5>
    2070:	6e                   	outsb  %ds:(%rsi),(%dx)
    2071:	63 79 00             	movslq 0x0(%rcx),%edi
    2074:	66 6f                	outsw  %ds:(%rsi),(%dx)
    2076:	6f                   	outsl  %ds:(%rsi),(%dx)
    2077:	20 20                	and    %ah,(%rax)
    2079:	72 65                	jb     20e0 <_IO_stdin_used+0xe0>
    207b:	63 69 70             	movslq 0x70(%rcx),%ebp
    207e:	72 6f                	jb     20ef <_IO_stdin_used+0xef>
    2080:	63 61 6c             	movslq 0x6c(%rcx),%esp
    2083:	20 74 68 72          	and    %dh,0x72(%rax,%rbp,2)
    2087:	6f                   	outsl  %ds:(%rsi),(%dx)
    2088:	75 67                	jne    20f1 <_IO_stdin_used+0xf1>
    208a:	68 70 75 74 00       	pushq  $0x747570
    208f:	66 6f                	outsw  %ds:(%rsi),(%dx)
    2091:	6f                   	outsl  %ds:(%rsi),(%dx)
    2092:	20 20                	and    %ah,(%rax)
    2094:	6c                   	insb   (%dx),%es:(%rdi)
    2095:	61                   	(bad)  
    2096:	74 65                	je     20fd <_IO_stdin_used+0xfd>
    2098:	6e                   	outsb  %ds:(%rsi),(%dx)
    2099:	63 79 20             	movslq 0x20(%rcx),%edi
    209c:	28 6d 69             	sub    %ch,0x69(%rbp)
    209f:	6e                   	outsb  %ds:(%rsi),(%dx)
    20a0:	29 00                	sub    %eax,(%rax)
    20a2:	4f 75 74             	rex.WRXB jne 2119 <_IO_stdin_used+0x119>
    20a5:	20 6f 66             	and    %ch,0x66(%rdi)
    20a8:	20 72 61             	and    %dh,0x61(%rdx)
    20ab:	6e                   	outsb  %ds:(%rsi),(%dx)
    20ac:	67 65 00 4d 65       	add    %cl,%gs:0x65(%ebp)
    20b1:	61                   	(bad)  
    20b2:	73 75                	jae    2129 <_IO_stdin_used+0x129>
    20b4:	72 65                	jb     211b <_IO_stdin_used+0x11b>
    20b6:	64 20 00             	and    %al,%fs:(%rax)
    20b9:	20 3a                	and    %bh,(%rdx)
    20bb:	20 00                	and    %al,(%rax)
    20bd:	1b 5b 31             	sbb    0x31(%rbx),%ebx
    20c0:	3b 33                	cmp    (%rbx),%esi
    20c2:	35 6d 00 1b 5b       	xor    $0x5b1b006d,%eax
    20c7:	30 6d 00             	xor    %ch,0x0(%rbp)
    20ca:	20 63 79             	and    %ah,0x79(%rbx)
    20cd:	63 00                	movslq (%rax),%eax
    20cf:	45 6e                	rex.RB outsb %ds:(%rsi),(%dx)
    20d1:	64 20 6f 66          	and    %ch,%fs:0x66(%rdi)
    20d5:	20 62 65             	and    %ah,0x65(%rdx)
    20d8:	6e                   	outsb  %ds:(%rsi),(%dx)
    20d9:	63 68 6d             	movslq 0x6d(%rax),%ebp
    20dc:	61                   	(bad)  
    20dd:	72 6b                	jb     214a <_IO_stdin_used+0x14a>
    20df:	00 73 71             	add    %dh,0x71(%rbx)
    20e2:	72 74                	jb     2158 <_IO_stdin_used+0x158>
    20e4:	20 72 65             	and    %dh,0x65(%rdx)
    20e7:	63 69 70             	movslq 0x70(%rcx),%ebp
    20ea:	72 6f                	jb     215b <_IO_stdin_used+0x15b>
    20ec:	63 61 6c             	movslq 0x6c(%rcx),%esp
    20ef:	20 74 68 72          	and    %dh,0x72(%rax,%rbp,2)
    20f3:	6f                   	outsl  %ds:(%rsi),(%dx)
    20f4:	75 67                	jne    215d <_IO_stdin_used+0x15d>
    20f6:	68 70 75 74 20       	pushq  $0x20747570
    20fb:	28 6d 69             	sub    %ch,0x69(%rbp)
    20fe:	6e                   	outsb  %ds:(%rsi),(%dx)
    20ff:	29 00                	sub    %eax,(%rax)
    2101:	00 00                	add    %al,(%rax)
    2103:	00 00                	add    %al,(%rax)
    2105:	00 00                	add    %al,(%rax)
    2107:	00 66 6f             	add    %ah,0x6f(%rsi)
    210a:	6f                   	outsl  %ds:(%rsi),(%dx)
    210b:	20 20                	and    %ah,(%rax)
    210d:	72 65                	jb     2174 <__GNU_EH_FRAME_HDR+0x4>
    210f:	63 69 70             	movslq 0x70(%rcx),%ebp
    2112:	72 6f                	jb     2183 <__GNU_EH_FRAME_HDR+0x13>
    2114:	63 61 6c             	movslq 0x6c(%rcx),%esp
    2117:	20 74 68 72          	and    %dh,0x72(%rax,%rbp,2)
    211b:	6f                   	outsl  %ds:(%rsi),(%dx)
    211c:	75 67                	jne    2185 <__GNU_EH_FRAME_HDR+0x15>
    211e:	68 70 75 74 20       	pushq  $0x20747570
    2123:	28 6d 69             	sub    %ch,0x69(%rbp)
    2126:	6e                   	outsb  %ds:(%rsi),(%dx)
    2127:	29 00                	sub    %eax,(%rax)
    2129:	00 00                	add    %al,(%rax)
    212b:	00 74 f4 ff          	add    %dh,-0x1(%rsp,%rsi,8)
    212f:	ff a4 f4 ff ff d4 f4 	jmpq   *-0xb2b0001(%rsp,%rsi,8)
    2136:	ff                   	(bad)  
    2137:	ff 04 f5 ff ff 34 f5 	incl   -0xacb0001(,%rsi,8)
    213e:	ff                   	(bad)  
    213f:	ff 64 f5 ff          	jmpq   *-0x1(%rbp,%rsi,8)
    2143:	ff 94 f5 ff ff c4 f5 	callq  *-0xa3b0001(%rbp,%rsi,8)
    214a:	ff                   	(bad)  
    214b:	ff d4                	callq  *%rsp
    214d:	f2 ff                	repnz (bad) 
    214f:	ff 44 f4 ff          	incl   -0x1(%rsp,%rsi,8)
    2153:	ff 00                	incl   (%rax)
    2155:	00 00                	add    %al,(%rax)
    2157:	00 00                	add    %al,(%rax)
    2159:	00 c0                	add    %al,%al
    215b:	ff                   	(bad)  
    215c:	ff                   	(bad)  
    215d:	ff                   	(bad)  
    215e:	df 41 00             	filds  0x0(%rcx)
    2161:	00 00                	add    %al,(%rax)
    2163:	00 00                	add    %al,(%rax)
    2165:	00 f0                	add    %dh,%al
    2167:	3f                   	(bad)  
    2168:	00 00                	add    %al,(%rax)
    216a:	00 00                	add    %al,(%rax)
    216c:	80                   	.byte 0x80
    216d:	84 2e                	test   %ch,(%rsi)
    216f:	41                   	rex.B

Disassembly of section .eh_frame_hdr:

0000000000002170 <__GNU_EH_FRAME_HDR>:
    2170:	01 1b                	add    %ebx,(%rbx)
    2172:	03 3b                	add    (%rbx),%edi
    2174:	b4 00                	mov    $0x0,%ah
    2176:	00 00                	add    %al,(%rax)
    2178:	15 00 00 00 b0       	adc    $0xb0000000,%eax
    217d:	ee                   	out    %al,(%dx)
    217e:	ff                   	(bad)  
    217f:	ff                   	(bad)  
    2180:	e8 00 00 00 a0       	callq  ffffffffa0002185 <_end+0xffffffff9e91a89d>
    2185:	ef                   	out    %eax,(%dx)
    2186:	ff                   	(bad)  
    2187:	ff 10                	callq  *(%rax)
    2189:	01 00                	add    %eax,(%rax)
    218b:	00 b0 ef ff ff 28    	add    %dh,0x28ffffef(%rax)
    2191:	01 00                	add    %eax,(%rax)
    2193:	00 90 f0 ff ff dc    	add    %dl,-0x23000010(%rax)
    2199:	01 00                	add    %eax,(%rax)
    219b:	00 b0 f0 ff ff f4    	add    %dh,-0xb000010(%rax)
    21a1:	01 00                	add    %eax,(%rax)
    21a3:	00 00                	add    %al,(%rax)
    21a5:	f1                   	icebp  
    21a6:	ff                   	(bad)  
    21a7:	ff 10                	callq  *(%rax)
    21a9:	02 00                	add    (%rax),%al
    21ab:	00 40 f1             	add    %al,-0xf(%rax)
    21ae:	ff                   	(bad)  
    21af:	ff d0                	callq  *%rax
    21b1:	00 00                	add    %al,(%rax)
    21b3:	00 30                	add    %dh,(%rax)
    21b5:	f2 ff                	repnz (bad) 
    21b7:	ff 74 01 00          	pushq  0x0(%rcx,%rax,1)
    21bb:	00 40 f6             	add    %al,-0xa(%rax)
    21be:	ff                   	(bad)  
    21bf:	ff 40 01             	incl   0x1(%rax)
    21c2:	00 00                	add    %al,(%rax)
    21c4:	50                   	push   %rax
    21c5:	f6 ff                	idiv   %bh
    21c7:	ff 28                	ljmp   *(%rax)
    21c9:	02 00                	add    (%rax),%al
    21cb:	00 60 f6             	add    %ah,-0xa(%rax)
    21ce:	ff                   	(bad)  
    21cf:	ff                   	(bad)  
    21d0:	3c 02                	cmp    $0x2,%al
    21d2:	00 00                	add    %al,(%rax)
    21d4:	80 f6 ff             	xor    $0xff,%dh
    21d7:	ff 58 02             	lcall  *0x2(%rax)
    21da:	00 00                	add    %al,(%rax)
    21dc:	a0 f6 ff ff 74 02 00 	movabs 0xd000000274fffff6,%al
    21e3:	00 d0 
    21e5:	f7 ff                	idiv   %edi
    21e7:	ff c0                	inc    %eax
    21e9:	02 00                	add    (%rax),%al
    21eb:	00 c0                	add    %al,%al
    21ed:	f8                   	clc    
    21ee:	ff                   	(bad)  
    21ef:	ff                   	(bad)  
    21f0:	f8                   	clc    
    21f1:	02 00                	add    (%rax),%al
    21f3:	00 70 fb             	add    %dh,-0x5(%rax)
    21f6:	ff                   	(bad)  
    21f7:	ff 2c 03             	ljmp   *(%rbx,%rax,1)
    21fa:	00 00                	add    %al,(%rax)
    21fc:	30 fc                	xor    %bh,%ah
    21fe:	ff                   	(bad)  
    21ff:	ff 4c 03 00          	decl   0x0(%rbx,%rax,1)
    2203:	00 a0 fd ff ff 70    	add    %ah,0x70fffffd(%rax)
    2209:	03 00                	add    (%rax),%eax
    220b:	00 b0 fd ff ff 84    	add    %dh,-0x7b000003(%rax)
    2211:	03 00                	add    (%rax),%eax
    2213:	00 c0                	add    %al,%al
    2215:	fd                   	std    
    2216:	ff                   	(bad)  
    2217:	ff 98 03 00 00 30    	lcall  *0x30000003(%rax)
    221d:	fe                   	(bad)  
    221e:	ff                   	(bad)  
    221f:	ff e0                	jmpq   *%rax
    2221:	03 00                	add    (%rax),%eax
	...

Disassembly of section .eh_frame:

0000000000002228 <__FRAME_END__-0x33c>:
    2228:	14 00                	adc    $0x0,%al
    222a:	00 00                	add    %al,(%rax)
    222c:	00 00                	add    %al,(%rax)
    222e:	00 00                	add    %al,(%rax)
    2230:	01 7a 52             	add    %edi,0x52(%rdx)
    2233:	00 01                	add    %al,(%rcx)
    2235:	78 10                	js     2247 <__GNU_EH_FRAME_HDR+0xd7>
    2237:	01 1b                	add    %ebx,(%rbx)
    2239:	0c 07                	or     $0x7,%al
    223b:	08 90 01 00 00 14    	or     %dl,0x14000001(%rax)
    2241:	00 00                	add    %al,(%rax)
    2243:	00 1c 00             	add    %bl,(%rax,%rax,1)
    2246:	00 00                	add    %al,(%rax)
    2248:	68 f0 ff ff 2f       	pushq  $0x2ffffff0
    224d:	00 00                	add    %al,(%rax)
    224f:	00 00                	add    %al,(%rax)
    2251:	44 07                	rex.R (bad) 
    2253:	10 00                	adc    %al,(%rax)
    2255:	00 00                	add    %al,(%rax)
    2257:	00 24 00             	add    %ah,(%rax,%rax,1)
    225a:	00 00                	add    %al,(%rax)
    225c:	34 00                	xor    $0x0,%al
    225e:	00 00                	add    %al,(%rax)
    2260:	c0 ed ff             	shr    $0xff,%ch
    2263:	ff f0                	push   %rax
    2265:	00 00                	add    %al,(%rax)
    2267:	00 00                	add    %al,(%rax)
    2269:	0e                   	(bad)  
    226a:	10 46 0e             	adc    %al,0xe(%rsi)
    226d:	18 4a 0f             	sbb    %cl,0xf(%rdx)
    2270:	0b 77 08             	or     0x8(%rdi),%esi
    2273:	80 00 3f             	addb   $0x3f,(%rax)
    2276:	1a 3a                	sbb    (%rdx),%bh
    2278:	2a 33                	sub    (%rbx),%dh
    227a:	24 22                	and    $0x22,%al
    227c:	00 00                	add    %al,(%rax)
    227e:	00 00                	add    %al,(%rax)
    2280:	14 00                	adc    $0x0,%al
    2282:	00 00                	add    %al,(%rax)
    2284:	5c                   	pop    %rsp
    2285:	00 00                	add    %al,(%rax)
    2287:	00 88 ee ff ff 10    	add    %cl,0x10ffffee(%rax)
	...
    2295:	00 00                	add    %al,(%rax)
    2297:	00 14 00             	add    %dl,(%rax,%rax,1)
    229a:	00 00                	add    %al,(%rax)
    229c:	74 00                	je     229e <__GNU_EH_FRAME_HDR+0x12e>
    229e:	00 00                	add    %al,(%rax)
    22a0:	80 ee ff             	sub    $0xff,%dh
    22a3:	ff e0                	jmpq   *%rax
	...
    22ad:	00 00                	add    %al,(%rax)
    22af:	00 10                	add    %dl,(%rax)
    22b1:	00 00                	add    %al,(%rax)
    22b3:	00 8c 00 00 00 f8 f4 	add    %cl,-0xb080000(%rax,%rax,1)
    22ba:	ff                   	(bad)  
    22bb:	ff 07                	incl   (%rdi)
    22bd:	00 00                	add    %al,(%rax)
    22bf:	00 00                	add    %al,(%rax)
    22c1:	00 00                	add    %al,(%rax)
    22c3:	00 1c 00             	add    %bl,(%rax,%rax,1)
    22c6:	00 00                	add    %al,(%rax)
    22c8:	00 00                	add    %al,(%rax)
    22ca:	00 00                	add    %al,(%rax)
    22cc:	01 7a 50             	add    %edi,0x50(%rdx)
    22cf:	4c 52                	rex.WR push %rdx
    22d1:	00 01                	add    %al,(%rcx)
    22d3:	78 10                	js     22e5 <__GNU_EH_FRAME_HDR+0x175>
    22d5:	07                   	(bad)  
    22d6:	9b                   	fwait
    22d7:	39 1d 00 00 1b 1b    	cmp    %ebx,0x1b1b0000(%rip)        # 1b1b22dd <_end+0x19aca9f5>
    22dd:	0c 07                	or     $0x7,%al
    22df:	08 90 01 00 00 3c    	or     %dl,0x3c000001(%rax)
    22e5:	00 00                	add    %al,(%rax)
    22e7:	00 24 00             	add    %ah,(%rax,%rax,1)
    22ea:	00 00                	add    %al,(%rax)
    22ec:	b4 f0                	mov    $0xf0,%ah
    22ee:	ff                   	(bad)  
    22ef:	ff 08                	decl   (%rax)
    22f1:	04 00                	add    $0x0,%al
    22f3:	00 04 73             	add    %al,(%rbx,%rsi,2)
    22f6:	02 00                	add    (%rax),%al
    22f8:	00 46 0e             	add    %al,0xe(%rsi)
    22fb:	10 8d 02 42 0e 18    	adc    %cl,0x180e4202(%rbp)
    2301:	8c 03                	mov    %es,(%rbx)
    2303:	41 0e                	rex.B (bad) 
    2305:	20 86 04 41 0e 28    	and    %al,0x280e4104(%rsi)
    230b:	83 05 44 0e 70 03 b6 	addl   $0xffffffb6,0x3700e44(%rip)        # 3703156 <_end+0x201b86e>
    2312:	01 0a                	add    %ecx,(%rdx)
    2314:	0e                   	(bad)  
    2315:	28 41 0e             	sub    %al,0xe(%rcx)
    2318:	20 41 0e             	and    %al,0xe(%rcx)
    231b:	18 42 0e             	sbb    %al,0xe(%rdx)
    231e:	10 42 0e             	adc    %al,0xe(%rdx)
    2321:	08 46 0b             	or     %al,0xb(%rsi)
    2324:	24 00                	and    $0x0,%al
    2326:	00 00                	add    %al,(%rax)
    2328:	00 00                	add    %al,(%rax)
    232a:	00 00                	add    %al,(%rax)
    232c:	01 7a 50             	add    %edi,0x50(%rdx)
    232f:	4c 52                	rex.WR push %rdx
    2331:	00 01                	add    %al,(%rcx)
    2333:	78 10                	js     2345 <__GNU_EH_FRAME_HDR+0x1d5>
    2335:	07                   	(bad)  
    2336:	9b d9 1c 00          	fstps  (%rax,%rax,1)
    233a:	00 1b                	add    %bl,(%rbx)
    233c:	1b 0c 07             	sbb    (%rdi,%rax,1),%ecx
    233f:	08 90 01 0e 70 83    	or     %dl,-0x7c8ff1ff(%rax)
    2345:	05 86 04 8c 03       	add    $0x38c0486,%eax
    234a:	8d 02                	lea    (%rdx),%eax
    234c:	14 00                	adc    $0x0,%al
    234e:	00 00                	add    %al,(%rax)
    2350:	2c 00                	sub    $0x0,%al
    2352:	00 00                	add    %al,(%rax)
    2354:	ac                   	lods   %ds:(%rsi),%al
    2355:	ee                   	out    %al,(%dx)
    2356:	ff                   	(bad)  
    2357:	ff 17                	callq  *(%rdi)
    2359:	00 00                	add    %al,(%rax)
    235b:	00 04 15 02 00 00 00 	add    %al,0x2(,%rdx,1)
    2362:	00 00                	add    %al,(%rax)
    2364:	18 00                	sbb    %al,(%rax)
    2366:	00 00                	add    %al,(%rax)
    2368:	40 01 00             	rex add %eax,(%rax)
    236b:	00 b4 ee ff ff 47 00 	add    %dh,0x47ffff(%rsi,%rbp,8)
    2372:	00 00                	add    %al,(%rax)
    2374:	00 45 0e             	add    %al,0xe(%rbp)
    2377:	10 83 02 02 41 0e    	adc    %al,0xe410202(%rbx)
    237d:	08 00                	or     %al,(%rax)
    237f:	00 14 00             	add    %dl,(%rax,%rax,1)
    2382:	00 00                	add    %al,(%rax)
    2384:	5c                   	pop    %rsp
    2385:	01 00                	add    %eax,(%rax)
    2387:	00 e8                	add    %ch,%al
    2389:	ee                   	out    %al,(%dx)
    238a:	ff                   	(bad)  
    238b:	ff 32                	pushq  (%rdx)
    238d:	00 00                	add    %al,(%rax)
    238f:	00 00                	add    %al,(%rax)
    2391:	48 0e                	rex.W (bad) 
    2393:	10 57 0e             	adc    %dl,0xe(%rdi)
    2396:	08 00                	or     %al,(%rax)
    2398:	10 00                	adc    %al,(%rax)
    239a:	00 00                	add    %al,(%rax)
    239c:	74 01                	je     239f <__GNU_EH_FRAME_HDR+0x22f>
    239e:	00 00                	add    %al,(%rax)
    23a0:	20 f4                	and    %dh,%ah
    23a2:	ff                   	(bad)  
    23a3:	ff 05 00 00 00 00    	incl   0x0(%rip)        # 23a9 <__GNU_EH_FRAME_HDR+0x239>
    23a9:	00 00                	add    %al,(%rax)
    23ab:	00 18                	add    %bl,(%rax)
    23ad:	00 00                	add    %al,(%rax)
    23af:	00 88 01 00 00 1c    	add    %cl,0x1c000001(%rax)
    23b5:	f4                   	hlt    
    23b6:	ff                   	(bad)  
    23b7:	ff 16                	callq  *(%rsi)
    23b9:	00 00                	add    %al,(%rax)
    23bb:	00 00                	add    %al,(%rax)
    23bd:	45 0e                	rex.RB (bad) 
    23bf:	10 83 02 4d 0e 08    	adc    %al,0x80e4d02(%rbx)
    23c5:	00 00                	add    %al,(%rax)
    23c7:	00 18                	add    %bl,(%rax)
    23c9:	00 00                	add    %al,(%rax)
    23cb:	00 a4 01 00 00 20 f4 	add    %ah,-0xbe00000(%rcx,%rax,1)
    23d2:	ff                   	(bad)  
    23d3:	ff 1c 00             	lcall  *(%rax,%rax,1)
    23d6:	00 00                	add    %al,(%rax)
    23d8:	00 45 0e             	add    %al,0xe(%rbp)
    23db:	10 83 02 53 0e 08    	adc    %al,0x80e5302(%rbx)
    23e1:	00 00                	add    %al,(%rax)
    23e3:	00 48 00             	add    %cl,0x0(%rax)
    23e6:	00 00                	add    %al,(%rax)
    23e8:	c0 01 00             	rolb   $0x0,(%rcx)
    23eb:	00 24 f4             	add    %ah,(%rsp,%rsi,8)
    23ee:	ff                   	(bad)  
    23ef:	ff 2b                	ljmp   *(%rbx)
    23f1:	01 00                	add    %eax,(%rax)
    23f3:	00 00                	add    %al,(%rax)
    23f5:	51                   	push   %rcx
    23f6:	0e                   	(bad)  
    23f7:	10 8c 02 41 0e 18 86 	adc    %cl,-0x79e7f1bf(%rdx,%rax,1)
    23fe:	03 41 0e             	add    0xe(%rcx),%eax
    2401:	20 83 04 44 0e 30    	and    %al,0x300e4404(%rbx)
    2407:	02 4e 0e             	add    0xe(%rsi),%cl
    240a:	20 41 0e             	and    %al,0xe(%rcx)
    240d:	18 41 0e             	sbb    %al,0xe(%rcx)
    2410:	10 42 0e             	adc    %al,0xe(%rdx)
    2413:	08 47 c3             	or     %al,-0x3d(%rdi)
    2416:	c6                   	(bad)  
    2417:	cc                   	int3   
    2418:	02 60 0e             	add    0xe(%rax),%ah
    241b:	30 83 04 86 03 8c    	xor    %al,-0x73fc79fc(%rbx)
    2421:	02 02                	add    (%rdx),%al
    2423:	56                   	push   %rsi
    2424:	0e                   	(bad)  
    2425:	20 41 0e             	and    %al,0xe(%rcx)
    2428:	18 41 0e             	sbb    %al,0xe(%rcx)
    242b:	10 42 0e             	adc    %al,0xe(%rdx)
    242e:	08 00                	or     %al,(%rax)
    2430:	34 00                	xor    $0x0,%al
    2432:	00 00                	add    %al,(%rax)
    2434:	0c 02                	or     $0x2,%al
    2436:	00 00                	add    %al,(%rax)
    2438:	08 f5                	or     %dh,%ch
    243a:	ff                   	(bad)  
    243b:	ff f0                	push   %rax
    243d:	00 00                	add    %al,(%rax)
    243f:	00 00                	add    %al,(%rax)
    2441:	46 0e                	rex.RX (bad) 
    2443:	10 8c 02 41 0e 18 86 	adc    %cl,-0x79e7f1bf(%rdx,%rax,1)
    244a:	03 48 0e             	add    0xe(%rax),%ecx
    244d:	20 83 04 02 aa 0a    	and    %al,0xaaa0204(%rbx)
    2453:	0e                   	(bad)  
    2454:	18 41 0e             	sbb    %al,0xe(%rcx)
    2457:	10 47 0e             	adc    %al,0xe(%rdi)
    245a:	08 49 0b             	or     %cl,0xb(%rcx)
    245d:	4b 0e                	rex.WXB (bad) 
    245f:	18 44 0e 10          	sbb    %al,0x10(%rsi,%rcx,1)
    2463:	42 0e                	rex.X (bad) 
    2465:	08 00                	or     %al,(%rax)
    2467:	00 30                	add    %dh,(%rax)
    2469:	00 00                	add    %al,(%rax)
    246b:	00 44 02 00          	add    %al,0x0(%rdx,%rax,1)
    246f:	00 c0                	add    %al,%al
    2471:	f5                   	cmc    
    2472:	ff                   	(bad)  
    2473:	ff ae 02 00 00 00    	ljmp   *0x2(%rsi)
    2479:	46 0e                	rex.RX (bad) 
    247b:	10 8c 02 41 0e 18 86 	adc    %cl,-0x79e7f1bf(%rdx,%rax,1)
    2482:	03 48 0e             	add    0xe(%rax),%ecx
    2485:	20 83 04 4e 0e 30    	and    %al,0x300e4e04(%rbx)
    248b:	03 71 02             	add    0x2(%rcx),%esi
    248e:	0a 0e                	or     (%rsi),%cl
    2490:	20 41 0e             	and    %al,0xe(%rcx)
    2493:	18 41 0e             	sbb    %al,0xe(%rcx)
    2496:	10 42 0e             	adc    %al,0xe(%rdx)
    2499:	08 41 0b             	or     %al,0xb(%rcx)
    249c:	1c 00                	sbb    $0x0,%al
    249e:	00 00                	add    %al,(%rax)
    24a0:	78 02                	js     24a4 <__GNU_EH_FRAME_HDR+0x334>
    24a2:	00 00                	add    %al,(%rax)
    24a4:	3c f8                	cmp    $0xf8,%al
    24a6:	ff                   	(bad)  
    24a7:	ff b6 00 00 00 00    	pushq  0x0(%rsi)
    24ad:	48 0e                	rex.W (bad) 
    24af:	10 83 02 02 7d 0a    	adc    %al,0xa7d0202(%rbx)
    24b5:	0e                   	(bad)  
    24b6:	08 4e 0b             	or     %cl,0xb(%rsi)
    24b9:	4b 0e                	rex.WXB (bad) 
    24bb:	08 20                	or     %ah,(%rax)
    24bd:	00 00                	add    %al,(%rax)
    24bf:	00 98 02 00 00 dc    	add    %bl,-0x23fffffe(%rax)
    24c5:	f8                   	clc    
    24c6:	ff                   	(bad)  
    24c7:	ff 6e 01             	ljmp   *0x1(%rsi)
    24ca:	00 00                	add    %al,(%rax)
    24cc:	00 45 0e             	add    %al,0xe(%rbp)
    24cf:	10 83 02 03 37 01    	adc    %al,0x1370302(%rbx)
    24d5:	0a 0e                	or     (%rsi),%cl
    24d7:	08 4e 0b             	or     %cl,0xb(%rsi)
    24da:	4c 0e                	rex.WR (bad) 
    24dc:	08 00                	or     %al,(%rax)
    24de:	00 00                	add    %al,(%rax)
    24e0:	10 00                	adc    %al,(%rax)
    24e2:	00 00                	add    %al,(%rax)
    24e4:	bc 02 00 00 28       	mov    $0x28000002,%esp
    24e9:	fa                   	cli    
    24ea:	ff                   	(bad)  
    24eb:	ff 09                	decl   (%rcx)
    24ed:	00 00                	add    %al,(%rax)
    24ef:	00 00                	add    %al,(%rax)
    24f1:	00 00                	add    %al,(%rax)
    24f3:	00 10                	add    %dl,(%rax)
    24f5:	00 00                	add    %al,(%rax)
    24f7:	00 d0                	add    %dl,%al
    24f9:	02 00                	add    (%rax),%al
    24fb:	00 24 fa             	add    %ah,(%rdx,%rdi,8)
    24fe:	ff                   	(bad)  
    24ff:	ff 09                	decl   (%rcx)
    2501:	00 00                	add    %al,(%rax)
    2503:	00 00                	add    %al,(%rax)
    2505:	00 00                	add    %al,(%rax)
    2507:	00 44 00 00          	add    %al,0x0(%rax,%rax,1)
    250b:	00 e4                	add    %ah,%ah
    250d:	02 00                	add    (%rax),%al
    250f:	00 20                	add    %ah,(%rax)
    2511:	fa                   	cli    
    2512:	ff                   	(bad)  
    2513:	ff 65 00             	jmpq   *0x0(%rbp)
    2516:	00 00                	add    %al,(%rax)
    2518:	00 46 0e             	add    %al,0xe(%rsi)
    251b:	10 8f 02 49 0e 18    	adc    %cl,0x180e4902(%rdi)
    2521:	8e 03                	mov    (%rbx),%es
    2523:	45 0e                	rex.RB (bad) 
    2525:	20 8d 04 45 0e 28    	and    %cl,0x280e4504(%rbp)
    252b:	8c 05 44 0e 30 86    	mov    %es,-0x79cff1bc(%rip)        # ffffffff86303375 <_end+0xffffffff84c1ba8d>
    2531:	06                   	(bad)  
    2532:	48 0e                	rex.W (bad) 
    2534:	38 83 07 47 0e 40    	cmp    %al,0x400e4707(%rbx)
    253a:	6e                   	outsb  %ds:(%rsi),(%dx)
    253b:	0e                   	(bad)  
    253c:	38 41 0e             	cmp    %al,0xe(%rcx)
    253f:	30 41 0e             	xor    %al,0xe(%rcx)
    2542:	28 42 0e             	sub    %al,0xe(%rdx)
    2545:	20 42 0e             	and    %al,0xe(%rdx)
    2548:	18 42 0e             	sbb    %al,0xe(%rdx)
    254b:	10 42 0e             	adc    %al,0xe(%rdx)
    254e:	08 00                	or     %al,(%rax)
    2550:	10 00                	adc    %al,(%rax)
    2552:	00 00                	add    %al,(%rax)
    2554:	2c 03                	sub    $0x3,%al
    2556:	00 00                	add    %al,(%rax)
    2558:	48 fa                	rex.W cli 
    255a:	ff                   	(bad)  
    255b:	ff 05 00 00 00 00    	incl   0x0(%rip)        # 2561 <__GNU_EH_FRAME_HDR+0x3f1>
    2561:	00 00                	add    %al,(%rax)
	...

0000000000002564 <__FRAME_END__>:
    2564:	00 00                	add    %al,(%rax)
	...

Disassembly of section .gcc_except_table:

0000000000002568 <.gcc_except_table>:
    2568:	ff                   	(bad)  
    2569:	ff 01                	incl   (%rcx)
    256b:	06                   	(bad)  
    256c:	71 86                	jno    24f4 <__GNU_EH_FRAME_HDR+0x384>
    256e:	07                   	(bad)  
    256f:	fc                   	cld    
    2570:	07                   	(bad)  
    2571:	00 ff                	add    %bh,%bh
    2573:	ff 01                	incl   (%rcx)
    2575:	04 12                	add    $0x12,%al
    2577:	05                   	.byte 0x5
	...

Disassembly of section .init_array:

0000000000003d20 <__frame_dummy_init_array_entry>:
    3d20:	90                   	nop
    3d21:	13 00                	adc    (%rax),%eax
    3d23:	00 00                	add    %al,(%rax)
    3d25:	00 00                	add    %al,(%rax)
    3d27:	00 70 12             	add    %dh,0x12(%rax)
    3d2a:	00 00                	add    %al,(%rax)
    3d2c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .fini_array:

0000000000003d30 <__do_global_dtors_aux_fini_array_entry>:
    3d30:	50                   	push   %rax
    3d31:	13 00                	adc    (%rax),%eax
    3d33:	00 00                	add    %al,(%rax)
    3d35:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynamic:

0000000000003d38 <_DYNAMIC>:
    3d38:	01 00                	add    %eax,(%rax)
    3d3a:	00 00                	add    %al,(%rax)
    3d3c:	00 00                	add    %al,(%rax)
    3d3e:	00 00                	add    %al,(%rax)
    3d40:	01 00                	add    %eax,(%rax)
    3d42:	00 00                	add    %al,(%rax)
    3d44:	00 00                	add    %al,(%rax)
    3d46:	00 00                	add    %al,(%rax)
    3d48:	01 00                	add    %eax,(%rax)
    3d4a:	00 00                	add    %al,(%rax)
    3d4c:	00 00                	add    %al,(%rax)
    3d4e:	00 00                	add    %al,(%rax)
    3d50:	04 02                	add    $0x2,%al
    3d52:	00 00                	add    %al,(%rax)
    3d54:	00 00                	add    %al,(%rax)
    3d56:	00 00                	add    %al,(%rax)
    3d58:	01 00                	add    %eax,(%rax)
    3d5a:	00 00                	add    %al,(%rax)
    3d5c:	00 00                	add    %al,(%rax)
    3d5e:	00 00                	add    %al,(%rax)
    3d60:	21 02                	and    %eax,(%rdx)
    3d62:	00 00                	add    %al,(%rax)
    3d64:	00 00                	add    %al,(%rax)
    3d66:	00 00                	add    %al,(%rax)
    3d68:	0c 00                	or     $0x0,%al
    3d6a:	00 00                	add    %al,(%rax)
    3d6c:	00 00                	add    %al,(%rax)
    3d6e:	00 00                	add    %al,(%rax)
    3d70:	00 10                	add    %dl,(%rax)
    3d72:	00 00                	add    %al,(%rax)
    3d74:	00 00                	add    %al,(%rax)
    3d76:	00 00                	add    %al,(%rax)
    3d78:	0d 00 00 00 00       	or     $0x0,%eax
    3d7d:	00 00                	add    %al,(%rax)
    3d7f:	00 a8 1f 00 00 00    	add    %ch,0x1f(%rax)
    3d85:	00 00                	add    %al,(%rax)
    3d87:	00 19                	add    %bl,(%rcx)
    3d89:	00 00                	add    %al,(%rax)
    3d8b:	00 00                	add    %al,(%rax)
    3d8d:	00 00                	add    %al,(%rax)
    3d8f:	00 20                	add    %ah,(%rax)
    3d91:	3d 00 00 00 00       	cmp    $0x0,%eax
    3d96:	00 00                	add    %al,(%rax)
    3d98:	1b 00                	sbb    (%rax),%eax
    3d9a:	00 00                	add    %al,(%rax)
    3d9c:	00 00                	add    %al,(%rax)
    3d9e:	00 00                	add    %al,(%rax)
    3da0:	10 00                	adc    %al,(%rax)
    3da2:	00 00                	add    %al,(%rax)
    3da4:	00 00                	add    %al,(%rax)
    3da6:	00 00                	add    %al,(%rax)
    3da8:	1a 00                	sbb    (%rax),%al
    3daa:	00 00                	add    %al,(%rax)
    3dac:	00 00                	add    %al,(%rax)
    3dae:	00 00                	add    %al,(%rax)
    3db0:	30 3d 00 00 00 00    	xor    %bh,0x0(%rip)        # 3db6 <_DYNAMIC+0x7e>
    3db6:	00 00                	add    %al,(%rax)
    3db8:	1c 00                	sbb    $0x0,%al
    3dba:	00 00                	add    %al,(%rax)
    3dbc:	00 00                	add    %al,(%rax)
    3dbe:	00 00                	add    %al,(%rax)
    3dc0:	08 00                	or     %al,(%rax)
    3dc2:	00 00                	add    %al,(%rax)
    3dc4:	00 00                	add    %al,(%rax)
    3dc6:	00 00                	add    %al,(%rax)
    3dc8:	f5                   	cmc    
    3dc9:	fe                   	(bad)  
    3dca:	ff 6f 00             	ljmp   *0x0(%rdi)
    3dcd:	00 00                	add    %al,(%rax)
    3dcf:	00 a0 03 00 00 00    	add    %ah,0x3(%rax)
    3dd5:	00 00                	add    %al,(%rax)
    3dd7:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 3ddd <_DYNAMIC+0xa5>
    3ddd:	00 00                	add    %al,(%rax)
    3ddf:	00 10                	add    %dl,(%rax)
    3de1:	06                   	(bad)  
    3de2:	00 00                	add    %al,(%rax)
    3de4:	00 00                	add    %al,(%rax)
    3de6:	00 00                	add    %al,(%rax)
    3de8:	06                   	(bad)  
    3de9:	00 00                	add    %al,(%rax)
    3deb:	00 00                	add    %al,(%rax)
    3ded:	00 00                	add    %al,(%rax)
    3def:	00 d0                	add    %dl,%al
    3df1:	03 00                	add    (%rax),%eax
    3df3:	00 00                	add    %al,(%rax)
    3df5:	00 00                	add    %al,(%rax)
    3df7:	00 0a                	add    %cl,(%rdx)
    3df9:	00 00                	add    %al,(%rax)
    3dfb:	00 00                	add    %al,(%rax)
    3dfd:	00 00                	add    %al,(%rax)
    3dff:	00 d0                	add    %dl,%al
    3e01:	02 00                	add    (%rax),%al
    3e03:	00 00                	add    %al,(%rax)
    3e05:	00 00                	add    %al,(%rax)
    3e07:	00 0b                	add    %cl,(%rbx)
    3e09:	00 00                	add    %al,(%rax)
    3e0b:	00 00                	add    %al,(%rax)
    3e0d:	00 00                	add    %al,(%rax)
    3e0f:	00 18                	add    %bl,(%rax)
    3e11:	00 00                	add    %al,(%rax)
    3e13:	00 00                	add    %al,(%rax)
    3e15:	00 00                	add    %al,(%rax)
    3e17:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 3e1d <_DYNAMIC+0xe5>
	...
    3e25:	00 00                	add    %al,(%rax)
    3e27:	00 03                	add    %al,(%rbx)
    3e29:	00 00                	add    %al,(%rax)
    3e2b:	00 00                	add    %al,(%rax)
    3e2d:	00 00                	add    %al,(%rax)
    3e2f:	00 48 3f             	add    %cl,0x3f(%rax)
    3e32:	00 00                	add    %al,(%rax)
    3e34:	00 00                	add    %al,(%rax)
    3e36:	00 00                	add    %al,(%rax)
    3e38:	02 00                	add    (%rax),%al
    3e3a:	00 00                	add    %al,(%rax)
    3e3c:	00 00                	add    %al,(%rax)
    3e3e:	00 00                	add    %al,(%rax)
    3e40:	50                   	push   %rax
    3e41:	01 00                	add    %eax,(%rax)
    3e43:	00 00                	add    %al,(%rax)
    3e45:	00 00                	add    %al,(%rax)
    3e47:	00 14 00             	add    %dl,(%rax,%rax,1)
    3e4a:	00 00                	add    %al,(%rax)
    3e4c:	00 00                	add    %al,(%rax)
    3e4e:	00 00                	add    %al,(%rax)
    3e50:	07                   	(bad)  
    3e51:	00 00                	add    %al,(%rax)
    3e53:	00 00                	add    %al,(%rax)
    3e55:	00 00                	add    %al,(%rax)
    3e57:	00 17                	add    %dl,(%rdi)
    3e59:	00 00                	add    %al,(%rax)
    3e5b:	00 00                	add    %al,(%rax)
    3e5d:	00 00                	add    %al,(%rax)
    3e5f:	00 e0                	add    %ah,%al
    3e61:	0a 00                	or     (%rax),%al
    3e63:	00 00                	add    %al,(%rax)
    3e65:	00 00                	add    %al,(%rax)
    3e67:	00 07                	add    %al,(%rdi)
    3e69:	00 00                	add    %al,(%rax)
    3e6b:	00 00                	add    %al,(%rax)
    3e6d:	00 00                	add    %al,(%rax)
    3e6f:	00 c0                	add    %al,%al
    3e71:	09 00                	or     %eax,(%rax)
    3e73:	00 00                	add    %al,(%rax)
    3e75:	00 00                	add    %al,(%rax)
    3e77:	00 08                	add    %cl,(%rax)
    3e79:	00 00                	add    %al,(%rax)
    3e7b:	00 00                	add    %al,(%rax)
    3e7d:	00 00                	add    %al,(%rax)
    3e7f:	00 20                	add    %ah,(%rax)
    3e81:	01 00                	add    %eax,(%rax)
    3e83:	00 00                	add    %al,(%rax)
    3e85:	00 00                	add    %al,(%rax)
    3e87:	00 09                	add    %cl,(%rcx)
    3e89:	00 00                	add    %al,(%rax)
    3e8b:	00 00                	add    %al,(%rax)
    3e8d:	00 00                	add    %al,(%rax)
    3e8f:	00 18                	add    %bl,(%rax)
    3e91:	00 00                	add    %al,(%rax)
    3e93:	00 00                	add    %al,(%rax)
    3e95:	00 00                	add    %al,(%rax)
    3e97:	00 1e                	add    %bl,(%rsi)
    3e99:	00 00                	add    %al,(%rax)
    3e9b:	00 00                	add    %al,(%rax)
    3e9d:	00 00                	add    %al,(%rax)
    3e9f:	00 08                	add    %cl,(%rax)
    3ea1:	00 00                	add    %al,(%rax)
    3ea3:	00 00                	add    %al,(%rax)
    3ea5:	00 00                	add    %al,(%rax)
    3ea7:	00 fb                	add    %bh,%bl
    3ea9:	ff                   	(bad)  
    3eaa:	ff 6f 00             	ljmp   *0x0(%rdi)
    3ead:	00 00                	add    %al,(%rax)
    3eaf:	00 01                	add    %al,(%rcx)
    3eb1:	00 00                	add    %al,(%rax)
    3eb3:	08 00                	or     %al,(%rax)
    3eb5:	00 00                	add    %al,(%rax)
    3eb7:	00 fe                	add    %bh,%dh
    3eb9:	ff                   	(bad)  
    3eba:	ff 6f 00             	ljmp   *0x0(%rdi)
    3ebd:	00 00                	add    %al,(%rax)
    3ebf:	00 10                	add    %dl,(%rax)
    3ec1:	09 00                	or     %eax,(%rax)
    3ec3:	00 00                	add    %al,(%rax)
    3ec5:	00 00                	add    %al,(%rax)
    3ec7:	00 ff                	add    %bh,%bh
    3ec9:	ff                   	(bad)  
    3eca:	ff 6f 00             	ljmp   *0x0(%rdi)
    3ecd:	00 00                	add    %al,(%rax)
    3ecf:	00 03                	add    %al,(%rbx)
    3ed1:	00 00                	add    %al,(%rax)
    3ed3:	00 00                	add    %al,(%rax)
    3ed5:	00 00                	add    %al,(%rax)
    3ed7:	00 f0                	add    %dh,%al
    3ed9:	ff                   	(bad)  
    3eda:	ff 6f 00             	ljmp   *0x0(%rdi)
    3edd:	00 00                	add    %al,(%rax)
    3edf:	00 e0                	add    %ah,%al
    3ee1:	08 00                	or     %al,(%rax)
    3ee3:	00 00                	add    %al,(%rax)
    3ee5:	00 00                	add    %al,(%rax)
    3ee7:	00 f9                	add    %bh,%cl
    3ee9:	ff                   	(bad)  
    3eea:	ff 6f 00             	ljmp   *0x0(%rdi)
    3eed:	00 00                	add    %al,(%rax)
    3eef:	00 04 00             	add    %al,(%rax,%rax,1)
	...

Disassembly of section .got:

0000000000003f48 <_GLOBAL_OFFSET_TABLE_>:
    3f48:	38 3d 00 00 00 00    	cmp    %bh,0x0(%rip)        # 3f4e <_GLOBAL_OFFSET_TABLE_+0x6>
	...
    3f5e:	00 00                	add    %al,(%rax)
    3f60:	30 10                	xor    %dl,(%rax)
    3f62:	00 00                	add    %al,(%rax)
    3f64:	00 00                	add    %al,(%rax)
    3f66:	00 00                	add    %al,(%rax)
    3f68:	40 10 00             	adc    %al,(%rax)
    3f6b:	00 00                	add    %al,(%rax)
    3f6d:	00 00                	add    %al,(%rax)
    3f6f:	00 50 10             	add    %dl,0x10(%rax)
    3f72:	00 00                	add    %al,(%rax)
    3f74:	00 00                	add    %al,(%rax)
    3f76:	00 00                	add    %al,(%rax)
    3f78:	60                   	(bad)  
    3f79:	10 00                	adc    %al,(%rax)
    3f7b:	00 00                	add    %al,(%rax)
    3f7d:	00 00                	add    %al,(%rax)
    3f7f:	00 70 10             	add    %dh,0x10(%rax)
    3f82:	00 00                	add    %al,(%rax)
    3f84:	00 00                	add    %al,(%rax)
    3f86:	00 00                	add    %al,(%rax)
    3f88:	80 10 00             	adcb   $0x0,(%rax)
    3f8b:	00 00                	add    %al,(%rax)
    3f8d:	00 00                	add    %al,(%rax)
    3f8f:	00 90 10 00 00 00    	add    %dl,0x10(%rax)
    3f95:	00 00                	add    %al,(%rax)
    3f97:	00 a0 10 00 00 00    	add    %ah,0x10(%rax)
    3f9d:	00 00                	add    %al,(%rax)
    3f9f:	00 b0 10 00 00 00    	add    %dh,0x10(%rax)
    3fa5:	00 00                	add    %al,(%rax)
    3fa7:	00 c0                	add    %al,%al
    3fa9:	10 00                	adc    %al,(%rax)
    3fab:	00 00                	add    %al,(%rax)
    3fad:	00 00                	add    %al,(%rax)
    3faf:	00 d0                	add    %dl,%al
    3fb1:	10 00                	adc    %al,(%rax)
    3fb3:	00 00                	add    %al,(%rax)
    3fb5:	00 00                	add    %al,(%rax)
    3fb7:	00 e0                	add    %ah,%al
    3fb9:	10 00                	adc    %al,(%rax)
    3fbb:	00 00                	add    %al,(%rax)
    3fbd:	00 00                	add    %al,(%rax)
    3fbf:	00 f0                	add    %dh,%al
    3fc1:	10 00                	adc    %al,(%rax)
    3fc3:	00 00                	add    %al,(%rax)
    3fc5:	00 00                	add    %al,(%rax)
    3fc7:	00 00                	add    %al,(%rax)
    3fc9:	11 00                	adc    %eax,(%rax)
	...

Disassembly of section .data:

0000000000004000 <__data_start>:
	...

0000000000004008 <__dso_handle>:
    4008:	08 40 00             	or     %al,0x0(%rax)
    400b:	00 00                	add    %al,(%rax)
    400d:	00 00                	add    %al,(%rax)
	...

0000000000004010 <DW.ref.__gxx_personality_v0>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 55 62             	sub    %dl,0x62(%rbp)
   8:	75 6e                	jne    78 <_init-0xf88>
   a:	74 75                	je     81 <_init-0xf7f>
   c:	20 39                	and    %bh,(%rcx)
   e:	2e 34 2e             	cs xor $0x2e,%al
  11:	30 2d 31 75 62 75    	xor    %ch,0x75627531(%rip)        # 75627548 <_end+0x73f3fc60>
  17:	6e                   	outsb  %ds:(%rsi),(%dx)
  18:	74 75                	je     8f <_init-0xf71>
  1a:	31 7e 32             	xor    %edi,0x32(%rsi)
  1d:	30 2e                	xor    %ch,(%rsi)
  1f:	30 34 2e             	xor    %dh,(%rsi,%rbp,1)
  22:	31 29                	xor    %ebp,(%rcx)
  24:	20 39                	and    %bh,(%rcx)
  26:	2e 34 2e             	cs xor $0x2e,%al
  29:	30 00                	xor    %al,(%rax)
