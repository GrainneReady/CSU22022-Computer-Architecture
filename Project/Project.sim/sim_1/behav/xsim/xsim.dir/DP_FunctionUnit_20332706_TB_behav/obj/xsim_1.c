/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
IKI_DLLESPEC extern void execute_542(char*, char *);
IKI_DLLESPEC extern void execute_536(char*, char *);
IKI_DLLESPEC extern void execute_537(char*, char *);
IKI_DLLESPEC extern void execute_13(char*, char *);
IKI_DLLESPEC extern void execute_77(char*, char *);
IKI_DLLESPEC extern void execute_81(char*, char *);
IKI_DLLESPEC extern void execute_337(char*, char *);
IKI_DLLESPEC extern void execute_338(char*, char *);
IKI_DLLESPEC extern void execute_146(char*, char *);
IKI_DLLESPEC extern void execute_147(char*, char *);
IKI_DLLESPEC extern void execute_148(char*, char *);
IKI_DLLESPEC extern void execute_149(char*, char *);
IKI_DLLESPEC extern void execute_150(char*, char *);
IKI_DLLESPEC extern void execute_341(char*, char *);
IKI_DLLESPEC extern void execute_342(char*, char *);
IKI_DLLESPEC extern void execute_343(char*, char *);
IKI_DLLESPEC extern void execute_344(char*, char *);
IKI_DLLESPEC extern void execute_345(char*, char *);
IKI_DLLESPEC extern void execute_533(char*, char *);
IKI_DLLESPEC extern void execute_539(char*, char *);
IKI_DLLESPEC extern void execute_541(char*, char *);
IKI_DLLESPEC extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[22] = {(funcp)execute_542, (funcp)execute_536, (funcp)execute_537, (funcp)execute_13, (funcp)execute_77, (funcp)execute_81, (funcp)execute_337, (funcp)execute_338, (funcp)execute_146, (funcp)execute_147, (funcp)execute_148, (funcp)execute_149, (funcp)execute_150, (funcp)execute_341, (funcp)execute_342, (funcp)execute_343, (funcp)execute_344, (funcp)execute_345, (funcp)execute_533, (funcp)execute_539, (funcp)execute_541, (funcp)vhdl_transfunc_eventcallback};
const int NumRelocateId= 22;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/DP_FunctionUnit_20332706_TB_behav/xsim.reloc",  (void **)funcTab, 22);
	iki_vhdl_file_variable_register(dp + 80056);
	iki_vhdl_file_variable_register(dp + 80112);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/DP_FunctionUnit_20332706_TB_behav/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/DP_FunctionUnit_20332706_TB_behav/xsim.reloc");

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/DP_FunctionUnit_20332706_TB_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/DP_FunctionUnit_20332706_TB_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/DP_FunctionUnit_20332706_TB_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, (void*)0, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}