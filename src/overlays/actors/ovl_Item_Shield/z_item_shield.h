#ifndef _Z_ITEM_SHIELD_H_
#define _Z_ITEM_SHIELD_H_

#include "ultra64.h"
#include "global.h"

typedef void (*ItemShieldFunc)(struct ItemShield*, GlobalContext*);

struct ItemShield;

typedef struct ItemShield {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ColliderCylinder collider;
    /* 0x0198 */ s16 unk_198;
    /* 0x019A */ u16 unk_19A;
    /* 0x019C */ s16 unk_19C;
    /* 0x019E */ u16 unk_19E;
    /* 0x01A8 */ char unk_1A8[0x68];
    /* 0x0208 */ ItemShieldFunc actionFunc;
} ItemShield; // size = 0x020C

extern const ActorInit Item_Shield_InitVars;

#endif
