#include "unk_02097268.h"
#include "safari_zone.h"
#include "save_pokegear.h"

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

typedef struct UnkStruct_0209730C {
    u8 unk_00[0x78];
} UnkStruct_0209730C;

void sub_0209730C(SAVEDATA *saveData, s32 areaSetNumber) { // r4, 0x4
    // areaSetNumber in 0x4
    int* unk_38[6][5]; // on stack location 0x38
    u8 unk_30[6]; // on stack location 0x30
    MomsSavings *momsSavings = SaveData_GetMomsSavingsAddr(saveData); // 0x2c
    SAFARIZONE *safariZone = Save_SafariZone_get(saveData); // 0x28
    SAFARIZONE_AREASET *safariZoneAreaSet = SafariZone_GetAreaSet(safariZone, 0); // 0x24
    int i, j;

    if (sub_0202F720(safariZone) != 0 && areaSetNumber > 0) {
        if (ScriptState_CheckSafariSysFlag(SavArray_Flags_get(saveData))) {
            // u8 unk = sub_0202F6AC(safariZone);

            sub_0202F6A0(safariZone, sub_0202F6AC(safariZone) + areaSetNumber);
        } else {
            int counter_maybe = 0;
            MI_CpuClear8(&unk_30, sizeof(unk_30));

            MI_CpuClear8(&unk_38, 0x78);

            for (i = 0; i < 6; i++) {
                for (j = 0; j < (((0xFFFF >> i) & 1) << 2) + 1; j++) {
                    unk_38[i][j] = sub_020974C4(safariZoneAreaSet, i, j, 0, 11);
                }
            }

            sub_0202F6B8(&safariZone->area_sets[0], areaSetNumber);

            for (i = 0; i < 6; i++) {
                u8 r7 = safariZoneAreaSet->areas[i].area_no;
                if (!sub_020972EC(r7, unk_30, counter_maybe)) {
                    for (j = 0; j < (((0xFFFF >> i) & 1) << 2) + 1; j++) {
                        
                        s32* unk_pointer = sub_020974C4(safariZoneAreaSet, i, j, 0, 11);

                        if (sub_020972C4(unk_38[i][j], unk_pointer)) {
                            FreeToHeap(unk_pointer);
                        } else {
                            if (!sub_020972EC(r7, unk_30, counter_maybe)) {
                                unk_30[counter_maybe++] = r7;
                            }
                            FreeToHeap(unk_pointer);
                        }
                    }
                }
            }

            for (i = 0; i < 6; i++) {
                for (j = 0; j < (((0xFFFF >> i) & 1) << 2) + 1; j++) {
                    if(unk_38[i][j]) {
                        FreeToHeap(unk_38[i][j]);
                    }
                }
            }

            if(counter_maybe == 0) {
                sub_0202F050(momsSavings, 6);
                sub_0202F300(momsSavings, 0, 0);
            } else {
                sub_0202F01C(momsSavings, 6);
                sub_0202F300(momsSavings, unk_30, counter_maybe);
            }
        }
    }
}
