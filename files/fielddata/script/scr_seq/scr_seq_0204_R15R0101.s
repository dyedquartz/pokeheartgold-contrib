#include "constants/scrcmd.h"
#include "fielddata/script/scr_seq/event_R15R0101.h"
#include "msgdata/msg/msg_0353_R15R0101.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_R15R0101_000
	scrdef_end

scr_seq_R15R0101_000:
	simple_npc_msg msg_0353_R15R0101_00000
	end
	.balign 4, 0
