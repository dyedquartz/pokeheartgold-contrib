#include "unk_02097268.h"

extern UnkStruct_02097268 _02108EEE[];

void sub_02097268(UnkStruct_02097268 *unk0, s16 unk01, BOOL unk2) {
    s16 index;
    if (unk01 >= 24) {
        GF_ASSERT(0);
        index = 0;
    } else {
        index = unk01;
    }
    *unk0 = _02108EEE[index];

	if (unk0->unk01_7 && unk2 == TRUE) {
		unk0->unk00++;
	}
}

BOOL sub_020972A4(UnkStruct_020972A4 *lh, UnkStruct_020972A4 *rh) {
    if (lh->unk00 != rh->unk00 || lh->unk04 != rh->unk04 || lh->unk06 != rh->unk06) {
        return FALSE;
    }

    return TRUE;
}

BOOL sub_020972C4(UnkStruct_020972A4 *lh, UnkStruct_020972A4 *rh) {
    for (int i = 0; i < 10; i++) {
        if (!sub_020972A4(lh+i, rh+i)) {
            return FALSE;
        }
    }

    return TRUE;
}

BOOL sub_020972EC(u32 param0, u8 param1[], s32 param2) {
    for (s32 i = 0; i < param2; i++) {
        if (param0 == param1[i]) {
            return TRUE;
        }
    }
    
    return FALSE;
}
