.late_rodata
glabel D_80976CF8
    .float -0.03

.text
glabel func_809729B8
/* 01A68 809729B8 AFA50004 */  sw      $a1, 0x0004($sp)           
/* 01A6C 809729BC 8C820118 */  lw      $v0, 0x0118($a0)           ## 00000118
/* 01A70 809729C0 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 01A74 809729C4 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.50
/* 01A78 809729C8 844E00B6 */  lh      $t6, 0x00B6($v0)           ## 000000B6
/* 01A7C 809729CC 3C01BFC0 */  lui     $at, 0xBFC0                ## $at = BFC00000
/* 01A80 809729D0 44813000 */  mtc1    $at, $f6                   ## $f6 = -1.50
/* 01A84 809729D4 240F0032 */  addiu   $t7, $zero, 0x0032         ## $t7 = 00000032
/* 01A88 809729D8 A08F0184 */  sb      $t7, 0x0184($a0)           ## 00000184
/* 01A8C 809729DC 3C018097 */  lui     $at, %hi(D_80976CF8)       ## $at = 80970000
/* 01A90 809729E0 A48E0032 */  sh      $t6, 0x0032($a0)           ## 00000032
/* 01A94 809729E4 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 01A98 809729E8 E4860070 */  swc1    $f6, 0x0070($a0)           ## 00000070
/* 01A9C 809729EC C4286CF8 */  lwc1    $f8, %lo(D_80976CF8)($at)  
/* 01AA0 809729F0 3C188097 */  lui     $t8, %hi(func_80972868)    ## $t8 = 80970000
/* 01AA4 809729F4 27182868 */  addiu   $t8, $t8, %lo(func_80972868) ## $t8 = 80972868
/* 01AA8 809729F8 AC98019C */  sw      $t8, 0x019C($a0)           ## 0000019C
/* 01AAC 809729FC 03E00008 */  jr      $ra                        
/* 01AB0 80972A00 E488006C */  swc1    $f8, 0x006C($a0)           ## 0000006C
