.late_rodata
glabel jtbl_809EC6C0
.word L809EB730
.word L809EB708
.word L809EB750
.word L809EB81C
.word L809EB918
.word L809EB910

.text
glabel func_809EB624
/* 008E4 809EB624 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 008E8 809EB628 AFB00028 */  sw      $s0, 0x0028($sp)
/* 008EC 809EB62C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 008F0 809EB630 AFBF002C */  sw      $ra, 0x002C($sp)
/* 008F4 809EB634 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 008F8 809EB638 AFA50044 */  sw      $a1, 0x0044($sp)
/* 008FC 809EB63C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 00900 809EB640 AFA40034 */  sw      $a0, 0x0034($sp)
/* 00904 809EB644 10400005 */  beq     $v0, $zero, .L809EB65C
/* 00908 809EB648 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 0090C 809EB64C 920E0250 */  lbu     $t6, 0x0250($s0)           ## 00000250
/* 00910 809EB650 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 00914 809EB654 10000023 */  beq     $zero, $zero, .L809EB6E4
/* 00918 809EB658 A20F0250 */  sb      $t7, 0x0250($s0)           ## 00000250
.L809EB65C:
/* 0091C 809EB65C 44812000 */  mtc1    $at, $f4                   ## $f4 = 100.00
/* 00920 809EB660 C6060090 */  lwc1    $f6, 0x0090($s0)           ## 00000090
/* 00924 809EB664 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00928 809EB668 4606203C */  c.lt.s  $f4, $f6
/* 0092C 809EB66C 00000000 */  nop
/* 00930 809EB670 45030005 */  bc1tl   .L809EB688
/* 00934 809EB674 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 00938 809EB678 0C00B821 */  jal     func_8002E084
/* 0093C 809EB67C 24052AAA */  addiu   $a1, $zero, 0x2AAA         ## $a1 = 00002AAA
/* 00940 809EB680 14400018 */  bne     $v0, $zero, .L809EB6E4
/* 00944 809EB684 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
.L809EB688:
/* 00948 809EB688 44815000 */  mtc1    $at, $f10                  ## $f10 = -4.00
/* 0094C 809EB68C 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 00950 809EB690 8E070164 */  lw      $a3, 0x0164($s0)           ## 00000164
/* 00954 809EB694 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00958 809EB698 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 0095C 809EB69C AFB80014 */  sw      $t8, 0x0014($sp)
/* 00960 809EB6A0 24A54658 */  addiu   $a1, $a1, 0x4658           ## $a1 = 06004658
/* 00964 809EB6A4 8FA40034 */  lw      $a0, 0x0034($sp)
/* 00968 809EB6A8 3C06BF80 */  lui     $a2, 0xBF80                ## $a2 = BF800000
/* 0096C 809EB6AC E7AA0018 */  swc1    $f10, 0x0018($sp)
/* 00970 809EB6B0 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00974 809EB6B4 E7A80010 */  swc1    $f8, 0x0010($sp)
/* 00978 809EB6B8 8E0802C8 */  lw      $t0, 0x02C8($s0)           ## 000002C8
/* 0097C 809EB6BC 24190004 */  addiu   $t9, $zero, 0x0004         ## $t9 = 00000004
/* 00980 809EB6C0 A2190250 */  sb      $t9, 0x0250($s0)           ## 00000250
/* 00984 809EB6C4 A1000015 */  sb      $zero, 0x0015($t0)         ## 00000015
/* 00988 809EB6C8 8E0202C8 */  lw      $v0, 0x02C8($s0)           ## 000002C8
/* 0098C 809EB6CC 90490015 */  lbu     $t1, 0x0015($v0)           ## 00000015
/* 00990 809EB6D0 A20902BC */  sb      $t1, 0x02BC($s0)           ## 000002BC
/* 00994 809EB6D4 A0400005 */  sb      $zero, 0x0005($v0)         ## 00000005
/* 00998 809EB6D8 8E0202C8 */  lw      $v0, 0x02C8($s0)           ## 000002C8
/* 0099C 809EB6DC 904A0005 */  lbu     $t2, 0x0005($v0)           ## 00000005
/* 009A0 809EB6E0 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
.L809EB6E4:
/* 009A4 809EB6E4 920B0250 */  lbu     $t3, 0x0250($s0)           ## 00000250
/* 009A8 809EB6E8 2D610006 */  sltiu   $at, $t3, 0x0006
/* 009AC 809EB6EC 1020008A */  beq     $at, $zero, .L809EB918
/* 009B0 809EB6F0 000B5880 */  sll     $t3, $t3,  2
/* 009B4 809EB6F4 3C01809F */  lui     $at, %hi(jtbl_809EC6C0)       ## $at = 809F0000
/* 009B8 809EB6F8 002B0821 */  addu    $at, $at, $t3
/* 009BC 809EB6FC 8C2BC6C0 */  lw      $t3, %lo(jtbl_809EC6C0)($at)
/* 009C0 809EB700 01600008 */  jr      $t3
/* 009C4 809EB704 00000000 */  nop
glabel L809EB708
/* 009C8 809EB708 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 009CC 809EB70C 24A51A3C */  addiu   $a1, $a1, 0x1A3C           ## $a1 = 06001A3C
/* 009D0 809EB710 0C02947A */  jal     SkelAnime_ChangeAnimDefaultStop
/* 009D4 809EB714 8FA40034 */  lw      $a0, 0x0034($sp)
/* 009D8 809EB718 920C0250 */  lbu     $t4, 0x0250($s0)           ## 00000250
/* 009DC 809EB71C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 009E0 809EB720 24053900 */  addiu   $a1, $zero, 0x3900         ## $a1 = 00003900
/* 009E4 809EB724 258D0001 */  addiu   $t5, $t4, 0x0001           ## $t5 = 00000001
/* 009E8 809EB728 0C00BE0A */  jal     Audio_PlayActorSound2

/* 009EC 809EB72C A20D0250 */  sb      $t5, 0x0250($s0)           ## 00000250
glabel L809EB730
/* 009F0 809EB730 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 009F4 809EB734 AFA00010 */  sw      $zero, 0x0010($sp)
/* 009F8 809EB738 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 009FC 809EB73C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00A00 809EB740 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS

/* 00A04 809EB744 240705DC */  addiu   $a3, $zero, 0x05DC         ## $a3 = 000005DC
/* 00A08 809EB748 10000074 */  beq     $zero, $zero, .L809EB91C
/* 00A0C 809EB74C 861800B6 */  lh      $t8, 0x00B6($s0)           ## 000000B6
glabel L809EB750
/* 00A10 809EB750 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 00A14 809EB754 44819000 */  mtc1    $at, $f18                  ## $f18 = 4.00
/* 00A18 809EB758 C6100164 */  lwc1    $f16, 0x0164($s0)          ## 00000164
/* 00A1C 809EB75C 4610903E */  c.le.s  $f18, $f16
/* 00A20 809EB760 00000000 */  nop
/* 00A24 809EB764 4502000E */  bc1fl   .L809EB7A0
/* 00A28 809EB768 920302BC */  lbu     $v1, 0x02BC($s0)           ## 000002BC
/* 00A2C 809EB76C 8E0F02C8 */  lw      $t7, 0x02C8($s0)           ## 000002C8
/* 00A30 809EB770 240E0011 */  addiu   $t6, $zero, 0x0011         ## $t6 = 00000011
/* 00A34 809EB774 3C19FFCF */  lui     $t9, 0xFFCF                ## $t9 = FFCF0000
/* 00A38 809EB778 A1EE0015 */  sb      $t6, 0x0015($t7)           ## 00000015
/* 00A3C 809EB77C 8E0202C8 */  lw      $v0, 0x02C8($s0)           ## 000002C8
/* 00A40 809EB780 3739FFFF */  ori     $t9, $t9, 0xFFFF           ## $t9 = FFCFFFFF
/* 00A44 809EB784 24080008 */  addiu   $t0, $zero, 0x0008         ## $t0 = 00000008
/* 00A48 809EB788 90580015 */  lbu     $t8, 0x0015($v0)           ## 00000015
/* 00A4C 809EB78C A21802BC */  sb      $t8, 0x02BC($s0)           ## 000002BC
/* 00A50 809EB790 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 00A54 809EB794 8E0902C8 */  lw      $t1, 0x02C8($s0)           ## 000002C8
/* 00A58 809EB798 A1280005 */  sb      $t0, 0x0005($t1)           ## 00000005
/* 00A5C 809EB79C 920302BC */  lbu     $v1, 0x02BC($s0)           ## 000002BC
.L809EB7A0:
/* 00A60 809EB7A0 306A0004 */  andi    $t2, $v1, 0x0004           ## $t2 = 00000000
/* 00A64 809EB7A4 11400010 */  beq     $t2, $zero, .L809EB7E8
/* 00A68 809EB7A8 30790002 */  andi    $t9, $v1, 0x0002           ## $t9 = 00000000
/* 00A6C 809EB7AC 8E0C02C8 */  lw      $t4, 0x02C8($s0)           ## 000002C8
/* 00A70 809EB7B0 306BFFF9 */  andi    $t3, $v1, 0xFFF9           ## $t3 = 00000000
/* 00A74 809EB7B4 A20B02BC */  sb      $t3, 0x02BC($s0)           ## 000002BC
/* 00A78 809EB7B8 A1800015 */  sb      $zero, 0x0015($t4)         ## 00000015
/* 00A7C 809EB7BC 8E0202C8 */  lw      $v0, 0x02C8($s0)           ## 000002C8
/* 00A80 809EB7C0 904D0015 */  lbu     $t5, 0x0015($v0)           ## 00000015
/* 00A84 809EB7C4 A20D02BC */  sb      $t5, 0x02BC($s0)           ## 000002BC
/* 00A88 809EB7C8 A0400005 */  sb      $zero, 0x0005($v0)         ## 00000005
/* 00A8C 809EB7CC 8E0202C8 */  lw      $v0, 0x02C8($s0)           ## 000002C8
/* 00A90 809EB7D0 904E0005 */  lbu     $t6, 0x0005($v0)           ## 00000005
/* 00A94 809EB7D4 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 00A98 809EB7D8 920F0250 */  lbu     $t7, 0x0250($s0)           ## 00000250
/* 00A9C 809EB7DC 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 00AA0 809EB7E0 1000004D */  beq     $zero, $zero, .L809EB918
/* 00AA4 809EB7E4 A2180250 */  sb      $t8, 0x0250($s0)           ## 00000250
.L809EB7E8:
/* 00AA8 809EB7E8 1320004B */  beq     $t9, $zero, .L809EB918
/* 00AAC 809EB7EC 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 00AB0 809EB7F0 44810000 */  mtc1    $at, $f0                   ## $f0 = 8.00
/* 00AB4 809EB7F4 3068FFFD */  andi    $t0, $v1, 0xFFFD           ## $t0 = 00000000
/* 00AB8 809EB7F8 A20802BC */  sb      $t0, 0x02BC($s0)           ## 000002BC
/* 00ABC 809EB7FC 860700B6 */  lh      $a3, 0x00B6($s0)           ## 000000B6
/* 00AC0 809EB800 44060000 */  mfc1    $a2, $f0
/* 00AC4 809EB804 8FA40044 */  lw      $a0, 0x0044($sp)
/* 00AC8 809EB808 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00ACC 809EB80C 0C00BDC7 */  jal     func_8002F71C
/* 00AD0 809EB810 E7A00010 */  swc1    $f0, 0x0010($sp)
/* 00AD4 809EB814 10000041 */  beq     $zero, $zero, .L809EB91C
/* 00AD8 809EB818 861800B6 */  lh      $t8, 0x00B6($s0)           ## 000000B6
glabel L809EB81C
/* 00ADC 809EB81C 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00AE0 809EB820 44812000 */  mtc1    $at, $f4                   ## $f4 = 100.00
/* 00AE4 809EB824 C6060090 */  lwc1    $f6, 0x0090($s0)           ## 00000090
/* 00AE8 809EB828 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AEC 809EB82C 4604303E */  c.le.s  $f6, $f4
/* 00AF0 809EB830 00000000 */  nop
/* 00AF4 809EB834 45000017 */  bc1f    .L809EB894
/* 00AF8 809EB838 00000000 */  nop
/* 00AFC 809EB83C 0C00B821 */  jal     func_8002E084
/* 00B00 809EB840 24052AAA */  addiu   $a1, $zero, 0x2AAA         ## $a1 = 00002AAA
/* 00B04 809EB844 10400013 */  beq     $v0, $zero, .L809EB894
/* 00B08 809EB848 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00B0C 809EB84C 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00B10 809EB850 24844658 */  addiu   $a0, $a0, 0x4658           ## $a0 = 06004658
/* 00B14 809EB854 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 00B18 809EB858 3C01C0C0 */  lui     $at, 0xC0C0                ## $at = C0C00000
/* 00B1C 809EB85C 44818000 */  mtc1    $at, $f16                  ## $f16 = -6.00
/* 00B20 809EB860 468042A0 */  cvt.s.w $f10, $f8
/* 00B24 809EB864 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00B28 809EB868 24090002 */  addiu   $t1, $zero, 0x0002         ## $t1 = 00000002
/* 00B2C 809EB86C AFA90014 */  sw      $t1, 0x0014($sp)
/* 00B30 809EB870 24A54658 */  addiu   $a1, $a1, 0x4658           ## $a1 = 06004658
/* 00B34 809EB874 8FA40034 */  lw      $a0, 0x0034($sp)
/* 00B38 809EB878 E7AA0010 */  swc1    $f10, 0x0010($sp)
/* 00B3C 809EB87C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00B40 809EB880 3C0741A0 */  lui     $a3, 0x41A0                ## $a3 = 41A00000
/* 00B44 809EB884 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00B48 809EB888 E7B00018 */  swc1    $f16, 0x0018($sp)
/* 00B4C 809EB88C 10000022 */  beq     $zero, $zero, .L809EB918
/* 00B50 809EB890 A2000250 */  sb      $zero, 0x0250($s0)         ## 00000250
.L809EB894:
/* 00B54 809EB894 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00B58 809EB898 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00B5C 809EB89C 24844658 */  addiu   $a0, $a0, 0x4658           ## $a0 = 06004658
/* 00B60 809EB8A0 44829000 */  mtc1    $v0, $f18                  ## $f18 = 0.00
/* 00B64 809EB8A4 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 00B68 809EB8A8 44813000 */  mtc1    $at, $f6                   ## $f6 = -4.00
/* 00B6C 809EB8AC 468094A0 */  cvt.s.w $f18, $f18
/* 00B70 809EB8B0 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00B74 809EB8B4 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00B78 809EB8B8 240A0002 */  addiu   $t2, $zero, 0x0002         ## $t2 = 00000002
/* 00B7C 809EB8BC AFAA0014 */  sw      $t2, 0x0014($sp)
/* 00B80 809EB8C0 24A54658 */  addiu   $a1, $a1, 0x4658           ## $a1 = 06004658
/* 00B84 809EB8C4 44079000 */  mfc1    $a3, $f18
/* 00B88 809EB8C8 8FA40034 */  lw      $a0, 0x0034($sp)
/* 00B8C 809EB8CC 3C06BF80 */  lui     $a2, 0xBF80                ## $a2 = BF800000
/* 00B90 809EB8D0 E7A60018 */  swc1    $f6, 0x0018($sp)
/* 00B94 809EB8D4 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00B98 809EB8D8 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 00B9C 809EB8DC 920B0250 */  lbu     $t3, 0x0250($s0)           ## 00000250
/* 00BA0 809EB8E0 8E0D02C8 */  lw      $t5, 0x02C8($s0)           ## 000002C8
/* 00BA4 809EB8E4 256C0001 */  addiu   $t4, $t3, 0x0001           ## $t4 = 00000001
/* 00BA8 809EB8E8 A20C0250 */  sb      $t4, 0x0250($s0)           ## 00000250
/* 00BAC 809EB8EC A1A00015 */  sb      $zero, 0x0015($t5)         ## 00000015
/* 00BB0 809EB8F0 8E0202C8 */  lw      $v0, 0x02C8($s0)           ## 000002C8
/* 00BB4 809EB8F4 904E0015 */  lbu     $t6, 0x0015($v0)           ## 00000015
/* 00BB8 809EB8F8 A20E02BC */  sb      $t6, 0x02BC($s0)           ## 000002BC
/* 00BBC 809EB8FC A0400005 */  sb      $zero, 0x0005($v0)         ## 00000005
/* 00BC0 809EB900 8E0202C8 */  lw      $v0, 0x02C8($s0)           ## 000002C8
/* 00BC4 809EB904 904F0005 */  lbu     $t7, 0x0005($v0)           ## 00000005
/* 00BC8 809EB908 10000003 */  beq     $zero, $zero, .L809EB918
/* 00BCC 809EB90C AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
glabel L809EB910
/* 00BD0 809EB910 0C27ACCD */  jal     func_809EB334
/* 00BD4 809EB914 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
glabel L809EB918
.L809EB918:
/* 00BD8 809EB918 861800B6 */  lh      $t8, 0x00B6($s0)           ## 000000B6
.L809EB91C:
/* 00BDC 809EB91C A6180032 */  sh      $t8, 0x0032($s0)           ## 00000032
/* 00BE0 809EB920 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00BE4 809EB924 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00BE8 809EB928 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 00BEC 809EB92C 03E00008 */  jr      $ra
/* 00BF0 809EB930 00000000 */  nop
