/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "";
static const char *ng1 = "y=%b,s=%b,i=%b";
static const char *ng2 = "E:/035/demux/test_demux.v";
static unsigned int ng3[] = {0U, 0U};
static unsigned int ng4[] = {1U, 0U};
static unsigned int ng5[] = {2U, 0U};
static unsigned int ng6[] = {3U, 0U};

void Monitor_7_1(char *);
void Monitor_7_1(char *);


static void Monitor_7_1_Func(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    t2 = xsi_vlog_time(t1, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(0, 0, 3, ng0, 2, t0, (char)118, t1, 64);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1608);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t7 = (t0 + 1448);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    xsi_vlogfile_write(1, 0, 3, ng1, 4, t0, (char)118, t4, 4, (char)118, t6, 2, (char)118, t9, 1);

LAB1:    return;
}

static void Initial_6_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;

LAB0:    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(6, ng2);

LAB4:    xsi_set_current_line(7, ng2);
    Monitor_7_1(t0);
    xsi_set_current_line(8, ng2);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(9, ng2);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(10, ng2);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(11, ng2);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(12, ng2);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(13, ng2);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(14, ng2);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(15, ng2);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB8;
    goto LAB1;

LAB8:    goto LAB1;

}

void Monitor_7_1(char *t0)
{
    char *t1;
    char *t2;

LAB0:    t1 = (t0 + 2584);
    t2 = (t0 + 3096);
    xsi_vlogfile_monitor((void *)Monitor_7_1_Func, t1, t2);

LAB1:    return;
}


extern void work_m_00000000002633194979_0668728833_init()
{
	static char *pe[] = {(void *)Initial_6_0,(void *)Monitor_7_1};
	xsi_register_didat("work_m_00000000002633194979_0668728833", "isim/test_demux1_4_isim_beh.exe.sim/work/m_00000000002633194979_0668728833.didat");
	xsi_register_executes(pe);
}
