glabel func_8003A3E0
/* AB1580 8003A3E0 27BDFF60 */  addiu $sp, $sp, -0xa0
/* AB1584 8003A3E4 AFBF0064 */  sw    $ra, 0x64($sp)
/* AB1588 8003A3E8 AFBE0060 */  sw    $fp, 0x60($sp)
/* AB158C 8003A3EC AFB7005C */  sw    $s7, 0x5c($sp)
/* AB1590 8003A3F0 AFB60058 */  sw    $s6, 0x58($sp)
/* AB1594 8003A3F4 AFB50054 */  sw    $s5, 0x54($sp)
/* AB1598 8003A3F8 AFB40050 */  sw    $s4, 0x50($sp)
/* AB159C 8003A3FC AFB3004C */  sw    $s3, 0x4c($sp)
/* AB15A0 8003A400 AFB20048 */  sw    $s2, 0x48($sp)
/* AB15A4 8003A404 AFB10044 */  sw    $s1, 0x44($sp)
/* AB15A8 8003A408 AFB00040 */  sw    $s0, 0x40($sp)
/* AB15AC 8003A40C F7BA0038 */  sdc1  $f26, 0x38($sp)
/* AB15B0 8003A410 F7B80030 */  sdc1  $f24, 0x30($sp)
/* AB15B4 8003A414 F7B60028 */  sdc1  $f22, 0x28($sp)
/* AB15B8 8003A418 F7B40020 */  sdc1  $f20, 0x20($sp)
/* AB15BC 8003A41C AFA500A4 */  sw    $a1, 0xa4($sp)
/* AB15C0 8003A420 94830004 */  lhu   $v1, 4($a0)
/* AB15C4 8003A424 3415FFFF */  li    $s5, 65535
/* AB15C8 8003A428 30A5FFFF */  andi  $a1, $a1, 0xffff
/* AB15CC 8003A42C 00C09025 */  move  $s2, $a2
/* AB15D0 8003A430 00E0A025 */  move  $s4, $a3
/* AB15D4 8003A434 16A30003 */  bne   $s5, $v1, .L8003A444
/* AB15D8 8003A438 00004025 */   move  $t0, $zero
/* AB15DC 8003A43C 1000004E */  b     .L8003A578
/* AB15E0 8003A440 00001025 */   move  $v0, $zero
.L8003A444:
/* AB15E4 8003A444 8FB300B0 */  lw    $s3, 0xb0($sp)
/* AB15E8 8003A448 8E420000 */  lw    $v0, ($s2)
/* AB15EC 8003A44C 8E4E0048 */  lw    $t6, 0x48($s2)
/* AB15F0 8003A450 C6640004 */  lwc1  $f4, 4($s3)
/* AB15F4 8003A454 8C560018 */  lw    $s6, 0x18($v0)
/* AB15F8 8003A458 8C570010 */  lw    $s7, 0x10($v0)
/* AB15FC 8003A45C E6840000 */  swc1  $f4, ($s4)
/* AB1600 8003A460 8E580000 */  lw    $t8, ($s2)
/* AB1604 8003A464 00037880 */  sll   $t7, $v1, 2
/* AB1608 8003A468 30BE0007 */  andi  $fp, $a1, 7
/* AB160C 8003A46C 3C018014 */  lui   $at, %hi(D_80138F74)
/* AB1610 8003A470 4480D000 */  mtc1  $zero, $f26
/* AB1614 8003A474 4480C000 */  mtc1  $zero, $f24
/* AB1618 8003A478 C4368F74 */  lwc1  $f22, %lo(D_80138F74)($at)
/* AB161C 8003A47C 001EF340 */  sll   $fp, $fp, 0xd
/* AB1620 8003A480 C7B400B4 */  lwc1  $f20, 0xb4($sp)
/* AB1624 8003A484 01CF8821 */  addu  $s1, $t6, $t7
/* AB1628 8003A488 8F040018 */  lw    $a0, 0x18($t8)
.L8003A48C:
/* AB162C 8003A48C 86220000 */  lh    $v0, ($s1)
/* AB1630 8003A490 02E02825 */  move  $a1, $s7
/* AB1634 8003A494 27AD008C */  addiu $t5, $sp, 0x8c
/* AB1638 8003A498 00021900 */  sll   $v1, $v0, 4
/* AB163C 8003A49C 0083C821 */  addu  $t9, $a0, $v1
/* AB1640 8003A4A0 97290002 */  lhu   $t1, 2($t9)
/* AB1644 8003A4A4 00768021 */  addu  $s0, $v1, $s6
/* AB1648 8003A4A8 013E5024 */  and   $t2, $t1, $fp
/* AB164C 8003A4AC 51400009 */  beql  $t2, $zero, .L8003A4D4
/* AB1650 8003A4B0 8E660000 */   lw    $a2, ($s3)
/* AB1654 8003A4B4 96220002 */  lhu   $v0, 2($s1)
/* AB1658 8003A4B8 52A2002F */  beql  $s5, $v0, .L8003A578
/* AB165C 8003A4BC 01001025 */   move  $v0, $t0
/* AB1660 8003A4C0 8E4B0048 */  lw    $t3, 0x48($s2)
/* AB1664 8003A4C4 00026080 */  sll   $t4, $v0, 2
/* AB1668 8003A4C8 1000FFF0 */  b     .L8003A48C
/* AB166C 8003A4CC 016C8821 */   addu  $s1, $t3, $t4
/* AB1670 8003A4D0 8E660000 */  lw    $a2, ($s3)
.L8003A4D4:
/* AB1674 8003A4D4 8E670008 */  lw    $a3, 8($s3)
/* AB1678 8003A4D8 AFA8009C */  sw    $t0, 0x9c($sp)
/* AB167C 8003A4DC AFAD0010 */  sw    $t5, 0x10($sp)
/* AB1680 8003A4E0 0C00E3C8 */  jal   func_80038F20
/* AB1684 8003A4E4 02002025 */   move  $a0, $s0
/* AB1688 8003A4E8 10400019 */  beqz  $v0, .L8003A550
/* AB168C 8003A4EC 8FA8009C */   lw    $t0, 0x9c($sp)
/* AB1690 8003A4F0 860E000A */  lh    $t6, 0xa($s0)
/* AB1694 8003A4F4 C7A6008C */  lwc1  $f6, 0x8c($sp)
/* AB1698 8003A4F8 C6880000 */  lwc1  $f8, ($s4)
/* AB169C 8003A4FC 448E5000 */  mtc1  $t6, $f10
/* AB16A0 8003A500 46083001 */  sub.s $f0, $f6, $f8
/* AB16A4 8003A504 46805420 */  cvt.s.w $f16, $f10
/* AB16A8 8003A508 4600C03C */  c.lt.s $f24, $f0
/* AB16AC 8003A50C 46168082 */  mul.s $f2, $f16, $f22
/* AB16B0 8003A510 45020010 */  bc1fl .L8003A554
/* AB16B4 8003A514 96220002 */   lhu   $v0, 2($s1)
/* AB16B8 8003A518 4614003C */  c.lt.s $f0, $f20
/* AB16BC 8003A51C 00000000 */  nop   
/* AB16C0 8003A520 4502000C */  bc1fl .L8003A554
/* AB16C4 8003A524 96220002 */   lhu   $v0, 2($s1)
/* AB16C8 8003A528 46020482 */  mul.s $f18, $f0, $f2
/* AB16CC 8003A52C 461A903E */  c.le.s $f18, $f26
/* AB16D0 8003A530 00000000 */  nop   
/* AB16D4 8003A534 45020007 */  bc1fl .L8003A554
/* AB16D8 8003A538 96220002 */   lhu   $v0, 2($s1)
/* AB16DC 8003A53C 46143101 */  sub.s $f4, $f6, $f20
/* AB16E0 8003A540 24080001 */  li    $t0, 1
/* AB16E4 8003A544 E6840000 */  swc1  $f4, ($s4)
/* AB16E8 8003A548 8FAF00B8 */  lw    $t7, 0xb8($sp)
/* AB16EC 8003A54C ADF00000 */  sw    $s0, ($t7)
.L8003A550:
/* AB16F0 8003A550 96220002 */  lhu   $v0, 2($s1)
.L8003A554:
/* AB16F4 8003A554 52A20008 */  beql  $s5, $v0, .L8003A578
/* AB16F8 8003A558 01001025 */   move  $v0, $t0
/* AB16FC 8003A55C 8E580048 */  lw    $t8, 0x48($s2)
/* AB1700 8003A560 8E490000 */  lw    $t1, ($s2)
/* AB1704 8003A564 0002C880 */  sll   $t9, $v0, 2
/* AB1708 8003A568 03198821 */  addu  $s1, $t8, $t9
/* AB170C 8003A56C 1000FFC7 */  b     .L8003A48C
/* AB1710 8003A570 8D240018 */   lw    $a0, 0x18($t1)
/* AB1714 8003A574 01001025 */  move  $v0, $t0
.L8003A578:
/* AB1718 8003A578 8FBF0064 */  lw    $ra, 0x64($sp)
/* AB171C 8003A57C D7B40020 */  ldc1  $f20, 0x20($sp)
/* AB1720 8003A580 D7B60028 */  ldc1  $f22, 0x28($sp)
/* AB1724 8003A584 D7B80030 */  ldc1  $f24, 0x30($sp)
/* AB1728 8003A588 D7BA0038 */  ldc1  $f26, 0x38($sp)
/* AB172C 8003A58C 8FB00040 */  lw    $s0, 0x40($sp)
/* AB1730 8003A590 8FB10044 */  lw    $s1, 0x44($sp)
/* AB1734 8003A594 8FB20048 */  lw    $s2, 0x48($sp)
/* AB1738 8003A598 8FB3004C */  lw    $s3, 0x4c($sp)
/* AB173C 8003A59C 8FB40050 */  lw    $s4, 0x50($sp)
/* AB1740 8003A5A0 8FB50054 */  lw    $s5, 0x54($sp)
/* AB1744 8003A5A4 8FB60058 */  lw    $s6, 0x58($sp)
/* AB1748 8003A5A8 8FB7005C */  lw    $s7, 0x5c($sp)
/* AB174C 8003A5AC 8FBE0060 */  lw    $fp, 0x60($sp)
/* AB1750 8003A5B0 03E00008 */  jr    $ra
/* AB1754 8003A5B4 27BD00A0 */   addiu $sp, $sp, 0xa0

