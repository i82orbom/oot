/*
 * File: z_item_shield.c
 * Overlay: ovl_Item_Shield
 * Description: Deku Shield
 */

#include "z_item_shield.h"

#define FLAGS 0x00000010

#define THIS ((ItemShield*)thisx)

void ItemShield_Init(Actor* thisx, GlobalContext* globalCtx);
void ItemShield_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ItemShield_Update(Actor* thisx, GlobalContext* globalCtx);
void ItemShield_Draw(Actor* thisx, GlobalContext* globalCtx);

extern Gfx D_060224F8[];

ColliderCylinderInit D_80B871A0 = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0x00000004, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_ON,
        OCELEM_ON,
    },
    { 15, 15, 0, { 0, 0, 0 } },
};

const ActorInit Item_Shield_InitVars = {
    ACTOR_ITEM_SHIELD,
    ACTORCAT_ITEMACTION,
    FLAGS,
    OBJECT_LINK_CHILD,
    sizeof(ItemShield),
    (ActorFunc)ItemShield_Init,
    (ActorFunc)ItemShield_Destroy,
    (ActorFunc)ItemShield_Update,
    (ActorFunc)ItemShield_Draw,
};

s32 D_80B871F4 = 0x00000000;
s32 D_80B871F8 = 0x00000000;
s32 D_80B871FC = 0x00000000;
s32 unused = 0;
s32 unused2 = 0;
s32 D_80B87200[] = { 0x3E99999A, 0x3F19999A, 0x3F666666, 0x3F800000, 0x3F800000, 0x3F800000, 0x3F800000, 0x3F800000,
                     0x3F800000, 0x3F59999A, 0x3F333333, 0x3F0CCCCD, 0x3ECCCCCD, 0x3E800000, 0x3DCCCCCD, 0x00000000 };
s32 D_80B87240[] = { 0x3F800000, 0x3F800000, 0x3F800000, 0x3F800000, 0x3F800000, 0x3F800000, 0x3F800000, 0x3F4CCCCD,
                     0x3F19999A, 0x3ECCCCCD, 0x3E4CCCCD, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 };

void func_80B86F68(ItemShield* this, GlobalContext* globalCtx);
void func_80B86BC8(ItemShield* this, GlobalContext* globalCtx);

void func_80B86920(ItemShield* this, ItemShieldFunc actionFunc) {
    this->actionFunc = actionFunc;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Item_Shield/ItemShield_Init.s")

void ItemShield_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    ItemShield* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void func_80B86AC8(ItemShield* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Item_Shield/func_80B86AC8.s")

void func_80B86BC8(ItemShield* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Item_Shield/func_80B86BC8.s")

void func_80B86CA8(ItemShield* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Item_Shield/func_80B86CA8.s")

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Item_Shield/func_80B86F68.s")
void func_80B86F68(ItemShield* this, GlobalContext* globalCtx) {
    s32 pad;
    Player* player = PLAYER;
    MtxF* shield = &player->shieldMf;

    this->actor.world.pos.x = shield->wx; // 0xa50
    this->actor.world.pos.y = shield->wy; // 0xa54
    this->actor.world.pos.z = shield->wz; // 0xa58
    this->unk_19C &= 0xFFFD;

    this->actor.shape.rot.y = Math_Atan2S(-shield->zz, -shield->zx); // 0xa48
    this->actor.shape.rot.x = Math_Atan2S(-shield->zy, sqrtf(shield->zz * shield->zz + shield->zx * shield->zx));

    if (ABS(this->actor.shape.rot.x) > 0x4000) {
        this->unk_19C |= 1;
    }

    func_80B86920(this, func_80B86CA8);

    this->actor.velocity.y = 4.0;
    this->actor.minVelocityY = -4.0;
    this->actor.gravity = -0.8;
    this->unk_198 = 0;
    this->unk_19A = 0x46;
    this->actor.speedXZ = 0;
}

void ItemShield_Update(Actor* thisx, GlobalContext* globalCtx) {
    ItemShield* this = THIS;

    this->actionFunc(this, globalCtx);
}

void ItemShield_Draw(Actor* thisx, GlobalContext* globalCtx) {
    ItemShield* this = THIS;

    if (!(this->unk_19C & 2)) {

        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_item_shield.c", 0x1C9);

        func_80093D18(globalCtx->state.gfxCtx);

        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_item_shield.c", 0x1CC),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

        gSPDisplayList(POLY_OPA_DISP++, SEGMENTED_TO_VIRTUAL(D_060224F8));

        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_item_shield.c", 0x1D1);
    }
}