#ifndef POKEHEARTGOLD_UNK_02097268_H
#define POKEHEARTGOLD_UNK_02097268_H

typedef struct UnkStruct_02097268 {
    u8 unk00;
    u8 unk01_0 : 7;
	u8 unk01_7 : 1;
    u8 unk02;
} UnkStruct_02097268;

typedef struct UnkStruct_020972A4 {
    u32 unk00;
    u16 unk04;
    u16 unk06;
} UnkStruct_020972A4;


void sub_02097268(UnkStruct_02097268 *unk0, s16 unk01, BOOL unk2);
BOOL sub_020972A4(UnkStruct_020972A4 *lh, UnkStruct_020972A4 *rh);
BOOL sub_020972C4(UnkStruct_020972A4 *lh, UnkStruct_020972A4 *rh);
BOOL sub_020972EC(u32 param0, u8 param1[], s32 param2);

#endif //POKEHEARTGOLD_UNK_02097268_H
