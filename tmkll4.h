
/****************************************************************************/
/*      TMKLL4 v4.54 for MS-DOS. ELCUS, 1995,2004                           */
/*      Interface to driver TMKLL4 v4.54 for MS-DOS.                        */
/****************************************************************************/

#ifndef _TMKLLX_
#define _TMKLLX_

#define MIN_TMK_TYPE 2
#define MAX_TMK_TYPE 6

#define RTMK 0
#define RTMK1 1
#define TMK400 2
#define TMKMPC 3
#define RTMK400 4
#define TMKX 5
#define TMKXI 6

#define ALL_TMKS 0x00FF

#define DATA_BC_RT 0x00
#define DATA_BC_RT_BRCST 0x08
#define DATA_RT_BC 0x01
#define DATA_RT_RT 0x02
#define DATA_RT_RT_BRCST 0x0A
#define CTRL_C_A 0x03
#define CTRL_C_BRCST 0x0B
#define CTRL_CD_A 0x04
#define CTRL_CD_BRCST 0x0C
#define CTRL_C_AD 0x05

#define BUS_A 0
#define BUS_B 1
#define BUS_1 0
#define BUS_2 1

#define ERAO_MASK 0x01
#define MEO_MASK 0x02
#define IB_MASK 0x04
#define TO_MASK 0x08
#define EM_MASK 0x10
#define EBC_MASK 0x20
#define DI_MASK 0x40
#define ELN_MASK 0x80

#define G1_MASK 0x1000
#define G2_MASK 0x2000

#define NWORDS_MASK 0x001F
#define CMD_MASK 0x041F
#define SUBADDR_MASK 0x03E0
#define CI_MASK 0x03E0
#define HBIT_MASK 0x0200
#define RT_DIR_MASK 0x0400
#define ADDRESS_MASK 0xF800
#define RTFL_MASK 0x0001
#define DNBA_MASK 0x0002
#define SSFL_MASK 0x0004
#define BUSY_MASK 0x0008
#define BRCST_MASK 0x0010
#define NULL_MASK 0x00E0
#define SREQ_MASK 0x0100
#define ERROR_MASK 0x0400

#define SREQ 0x01
#define BUSY 0x02
#define SSFL 0x04
#define RTFL 0x08
#define DNBA 0x10

#define CWB0 0x20
#define CWB1 0x40

#define BC_MODE 0x00
#define RT_MODE 0x80
#define MT_MODE 0x100
#define UNDEFINED_MODE 0xFFFF

#define RT_TRANSMIT 0x0400
#define RT_RECEIVE 0x0000

#define RT_ERROR_MASK 0x4000

#define RT_FLAG 0x8000
#define RT_FLAG_MASK 0x8000

#define RT_HBIT_MODE 0x0001
#define RT_FLAG_MODE 0x0002
#define RT_BRCST_MODE 0x0004
#define RT_DATA_BL 0x2000
#define RT_GENER1_BL 0x0004
#define RT_GENER2_BL 0x4000
#define BC_GENER1_BL 0x0004
#define BC_GENER2_BL 0x4000
#define MT_GENER1_BL 0x0004
#define MT_GENER2_BL 0x4000
#define TMK_IRQ_OFF 0x8000

#define CX_CC_MASK 0x000F
#define CX_CONT_MASK 0x0010
#define CX_BUS_MASK 0x0020
#define CX_SIG_MASK 0x8000
#define CX_INT_MASK 0x0020

#define CX_CONT 0x0010
#define CX_STOP 0x0000
#define CX_BUS_0 0x0000
#define CX_BUS_A 0x0000
#define CX_BUS_1 0x0020
#define CX_BUS_B 0x0020
#define CX_NOSIG 0x0000
#define CX_SIG 0x8000
#define CX_INT 0x0000
#define CX_NOINT 0x0020

#define SX_NOERR 0
#define SX_MEO 1
#define SX_TOA 2
#define SX_TOD 3
#define SX_ELN 4
#define SX_ERAO 5
#define SX_ESYN 6
#define SX_EBC 7

#define SX_ERR_MASK 0x0007
#define SX_IB_MASK 0x0008
#define SX_G1_MASK 0x0010
#define SX_G2_MASK 0x0020
#define SX_K2_MASK 0x0100
#define SX_K1_MASK 0x0200
#define SX_SCC_MASK 0x3C00
#define SX_ME_MASK 0x4000
#define SX_BUS_MASK 0x8000

#define SX_BUS_0 0x0000
#define SX_BUS_A 0x0000
#define SX_BUS_1 0x8000
#define SX_BUS_B 0x8000

#define GET_IO_DELAY 0xFFFF

#define CW(ADDR,DIR,SUBADDR,NWORDS) (((ADDR)<<11)|(DIR)|((SUBADDR)<<5)|((NWORDS)&0x1F))
#define CWM(ADDR,COMMAND) (((ADDR)<<11)|(CI_MASK)|(COMMAND))

/*#define CMD_ILLEGAL 0x000*/
#define CMD_DYNAMIC_BUS_CONTROL 0x400
#define CMD_SYNCHRONIZE 0x401
#define CMD_TRANSMIT_STATUS_WORD 0x402
#define CMD_INITIATE_SELF_TEST 0x403
#define CMD_TRANSMITTER_SHUTDOWN 0x404
#define CMD_OVERRIDE_TRANSMITTER_SHUTDOWN 0x405
#define CMD_INHIBIT_TERMINAL_FLAG_BIT 0x406
#define CMD_OVERRIDE_INHIBIT_TERMINAL_FLAG_BIT 0x407
#define CMD_RESET_REMOTE_TERMINAL 0x408
#define CMD_TRANSMIT_VECTOR_WORD 0x410
#define CMD_SYNCHRONIZE_WITH_DATA_WORD 0x011
#define CMD_TRANSMIT_LAST_COMMAND_WORD 0x412
#define CMD_TRANSMIT_BUILT_IN_TEST_WORD 0x413

#define TMK_BAD_TYPE 1
#define TMK_BAD_IRQ 2
#define TMK_BAD_NUMBER 3
#define BC_BAD_BUS 4
#define BC_BAD_BASE 5
#define BC_BAD_LEN 6
#define RT_BAD_PAGE 7
#define RT_BAD_LEN 8
#define RT_BAD_ADDRESS 9
#define RT_BAD_FUNC 10
#define BC_BAD_FUNC 11
#define TMK_BAD_FUNC 12
#define TMK_PCI_ERROR 13

#ifdef __cplusplus
extern "C" {
#endif

extern int tmkError;

extern unsigned far tmkiodelay( unsigned IODelay );
extern int far tmkgetmaxn();
extern int far tmkconfig( int tmkNumber, unsigned tmkType, unsigned tmkPorts1, unsigned tmkPorts2, char tmkIrq1, char tmkIrq2 );
extern int far tmkdone( int tmkNumber );
extern void far tmkdefirq( unsigned pcIrq );
extern void far tmkundefirq( unsigned pcIrq );
extern void far tmkdeferrors( void (far* UserErrors)() );
extern int far tmkselect( int tmkNumber );
extern int far tmkselected();
extern unsigned far tmkgetmode();
extern void far tmksave();
extern void far tmkrestore();
extern void far tmksetcwbits( unsigned tmkSetControl );
extern void far tmkclrcwbits( unsigned tmkClrControl );
extern unsigned far tmkgetcwbits();

extern void far bcdefintnorm( void (far* UserNormBC)( unsigned, unsigned, unsigned ) );
extern void far bcdefintexc( void (far* UserExcBC)( unsigned, unsigned, unsigned ) );
extern void far bcdefintx( void (far* UserXBC)( unsigned, unsigned ) );
extern void far bcdefintsig( void (far* UserSigBC)( unsigned ) );
extern int far bcreset();
extern void far bcrestore();
extern void far bc_def_tldw( unsigned wTLDW );
extern void far bc_enable_di();
extern void far bc_disable_di();
extern int far bcdefirqmode( unsigned bcIrqMode );
extern unsigned far bcgetirqmode();
extern unsigned far bcgetmaxbase();
extern int far bcdefbase( unsigned bcBasePC );
extern unsigned far bcgetbase();
extern void far bcputw( unsigned bcAddr, unsigned bcData );
extern unsigned far bcgetw( unsigned bcAddr );
extern unsigned long far bcgetansw( unsigned bcCtrlCode );
#ifndef TMK_DISABLE_ANSW_2_SW
#define bcgetsw bcgetansw
#endif
extern void far bcputblk( unsigned bcAddr, void far *pcBuffer, unsigned cwLength );
extern void far bcgetblk( unsigned bcAddr, void far *pcBuffer, unsigned cwLength );
extern int far bcdefbus( unsigned bcBus );
extern unsigned far bcgetbus();
extern int far bcstart( unsigned bcBase, unsigned bcCtrlCode );
extern int far bcstartx( unsigned bcBase, unsigned bcCtrlCode );
extern int far bcdeflink( unsigned bcBase, unsigned bcCtrlCode );
extern unsigned long far bcgetlink();
extern int far bcstop();
extern unsigned long far bcgetstate();

extern void far rtdefintcmd( void (far* UserCmdRT)( unsigned ) );
extern void far rtdefinterr( void (far* UserErrRT)( unsigned ) );
extern void far rtdefintdata( void (far* UserDataRT)( unsigned ) );
extern int far rtreset();
extern void far rtrestore();
extern int far rtdefirqmode( unsigned rtIrqMode );
extern unsigned far rtgetirqmode();
extern int far rtdefmode( unsigned rtMode );
extern unsigned far rtgetmode();
extern unsigned far rtgetmaxpage();
extern int far rtdefpage( unsigned rtPage );
extern unsigned far rtgetpage();
extern int far rtdefpagepc( unsigned rtPagePC );
extern int far rtdefpagebus( unsigned rtPageBus );
extern unsigned far rtgetpagepc();
extern unsigned far rtgetpagebus();
extern int far rtdefaddress( unsigned rtAddress );
extern unsigned far rtgetaddress();
extern void far rtdefsubaddr( unsigned rtDir, unsigned rtSubAddr);
extern unsigned far rtgetsubaddr();
extern void far rtputw( unsigned rtAddr, unsigned rtData );
extern unsigned far rtgetw( unsigned rtAddr );
extern void far rtputblk( unsigned rtAddr, void far *pcBuffer, unsigned cwLength );
extern void far rtgetblk( unsigned rtAddr, void far *pcBuffer, unsigned cwLength );
extern void far rtsetanswbits( unsigned rtSetControl );
extern void far rtclranswbits( unsigned rtClrControl );
extern unsigned far rtgetanswbits();
#ifndef TMK_DISABLE_ANSW_2_SW
#define rtsetswbits rtsetanswbits
#define rtclrswbits rtclranswbits
#define rtgetswbits rtgetanswbits
#endif
extern void far rtgetflags( void far *pcBuffer, unsigned rtDir, unsigned rtFlagMin, unsigned rtFlagMax );
extern void far rtputflags( void far *pcBuffer, unsigned rtDir, unsigned rtFlagMin, unsigned rtFlagMax );
extern void far rtsetflag();
extern void far rtclrflag();
extern unsigned far rtgetflag( unsigned rtDir, unsigned rtSubAddr );
extern unsigned far rtgetstate();
extern unsigned far rtbusy();
extern void far rtlock( unsigned rtDir, unsigned rtSubAddr );
extern void far rtunlock();
extern unsigned far rtgetcmddata( unsigned rtBusCommand );
extern void far rtputcmddata( unsigned rtBusCommand, unsigned rtData );

extern void far mtdefintx( void (far* UserIntXMT)( unsigned, unsigned ) );
extern void far mtdefintsig( void (far* UserSigMT)( unsigned ) );
extern int far mtreset();
#define mtrestore bcrestore
#define mtdefirqmode bcdefirqmode
#define mtgetirqmode bcgetirqmode
#define mtgetmaxbase bcgetmaxbase
#define mtdefbase bcdefbase
#define mtgetbase bcgetbase
#define mtputw bcputw
#define mtgetw bcgetw
extern unsigned far mtgetsw();
#define mtputblk bcputblk
#define mtgetblk bcgetblk
#define mtstartx bcstartx
#define mtdeflink bcdeflink
#define mtgetlink bcgetlink
#define mtstop bcstop
#define mtgetstate bcgetstate

#ifdef __cplusplus
}
#endif

#endif
