#ifndef _Z_DEMO_GT_H_
#define _Z_DEMO_GT_H_

#include "ultra64.h"
#include "global.h"

struct DemoGt;

typedef void (*DemoGtActionFunc)(struct DemoGt*, GlobalContext*);

typedef struct DemoGt {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ s32 unk_164; // main mode?
    /* 0x0168 */ s32 unk_168; // drawing mode?
    /* 0x016C */ char unk_16C[0xC];
    /* 0x0178 */ Vec3i unk_178;
    /* 0x0184 */ char unk_184[0x4];
    /* 0x0188 */ Vec3i unk_188;
    /* 0x0194 */ char unk_194[0x4];
    /* 0x0198 */ Vec3i unk_198;
} DemoGt; // size = 0x01A8

extern const ActorInit Demo_Gt_InitVars;

#endif
