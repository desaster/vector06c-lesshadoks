// ====================================================================
//                         VECTOR-06C FPGA REPLICA
//
//                  Copyright (C) 2007, Viacheslav Slavinsky
//
// This code is distributed under modified BSD license. 
// For complete licensing information see LICENSE.TXT.
// -------------------------------------------------------------------- 
//
// An open implementation of Vector-06C home computer
//
// Author: Viacheslav Slavinsky, http://sensi.org/~svo
// 
// Source file: specialio.h
//
// I/O port mapping for FDC interface
//
// --------------------------------------------------------------------


#ifndef _SPECIALIO_J
#define _SPECIALIO_J

#define     IOPORT_BASE         0xE000
#define     IOPORT_MMC_A        0x00            /* BIT0: SD_DAT3/CS */
#define     IOPORT_SPDR         0x01
#define     IOPORT_SPSR         0x02
#define     IOPORT_JOY          0x03            /* Joystick */

#define     IOPORT_SERIAL_TxD   0x04
#define     IOPORT_SERIAL_RxD   0x05
#define     IOPORT_SERIAL_CTL   0x06

#define     IOPORT_TIMER_1      0x07            /* counts down by 1 every 10ms */
#define     IOPORT_TIMER_2      0x08            /* counts down by 1 every 10ms */

#define     IOPORT_CPUREQ       0x09            /* our command */
#define     IOPORT_CPUSTAT      0x0A            /* where we set our status */
#define     IOPORT_CPUTRACK     0x0B
#define     IOPORT_CPUSECTOR    0x0C

#define     IOPORT_DMAMSB       0x0E
#define     IOPORT_DMALSB       0x0F

#define     IOPORT_GLEDS        0x10

#define     IOPORT_OSDCMD       0x11            /* F11,F12,HOLD */
#define     IOPORT_SDRAM_PAGE   0x12            /* 32 kb page number */
#define     IOPORT_FAKEROM      0x13            /* bit 0: fake rom at 0 */

#define     IOPORT_PLAYER1      0x14            /* player 1 joystick */
#define     IOPORT_PLAYER2      0x15            /* player 2 joystick */

#define     DISPLAY_BASE        0xE100
#define     DISPLAY_W           32
#define     DISPLAY_H           8
#define     DISPLAY_RAMSIZE     256

#define     MMC_A       (*((unsigned char *)(IOPORT_BASE+IOPORT_MMC_A)))
#define     SPDR        (*((volatile unsigned char *)(IOPORT_BASE+IOPORT_SPDR)))
#define     SPSR        (*((volatile unsigned char *)(IOPORT_BASE+IOPORT_SPSR)))
#define     JOYSTICK    (*((unsigned char *)(IOPORT_BASE+IOPORT_JOY)))

#define     SERIAL_TxD  (*((unsigned char *)(IOPORT_BASE+IOPORT_SERIAL_TxD)))
#define     SERIAL_RxD  (*((unsigned char *)(IOPORT_BASE+IOPORT_SERIAL_RxD)))
#define     SERIAL_CTL  (*((unsigned char *)(IOPORT_BASE+IOPORT_SERIAL_CTL)))

#define     TIMER_1     (*((unsigned char *)(IOPORT_BASE+IOPORT_TIMER_1)))
#define     TIMER_2     (*((unsigned char *)(IOPORT_BASE+IOPORT_TIMER_2)))

#define     MASTER_COMMAND  (*((unsigned char *)(IOPORT_BASE+IOPORT_CPUREQ)))
#define     SLAVE_STATUS    (*((unsigned char *)(IOPORT_BASE+IOPORT_CPUSTAT)))
#define     MASTER_TRACK    (*((unsigned char *)(IOPORT_BASE+IOPORT_CPUTRACK))) 
#define     MASTER_SECTOR   (*((unsigned char *)(IOPORT_BASE+IOPORT_CPUSECTOR)))

#define     DMAMSB      (*((unsigned char *)(IOPORT_BASE+IOPORT_DMAMSB)))   
#define     DMALSB      (*((unsigned char *)(IOPORT_BASE+IOPORT_DMALSB)))   


#define     GREEN_LEDS  (*((unsigned char *)(IOPORT_BASE+IOPORT_GLEDS)))
#define     OSD_CMD     (*((unsigned char *)(IOPORT_BASE+IOPORT_OSDCMD)))

#define     SDRAM_PAGE  (*((unsigned char *)(IOPORT_BASE+IOPORT_SDRAM_PAGE)))
#define     FAKEROM     (*((unsigned char *)(IOPORT_BASE+IOPORT_FAKEROM)))

#define     PLAYER1     (*((unsigned char *)(IOPORT_BASE+IOPORT_PLAYER1)))
#define     PLAYER2     (*((unsigned char *)(IOPORT_BASE+IOPORT_PLAYER2)))


#define SOCKWP      0x20            /* Write protect switch (PB5) */
#define SOCKINS     0x10            /* Card detect switch (PB4) */


#define     JOY_LT      0x10
#define     JOY_RT      0x08
#define     JOY_UP      0x04
#define     JOY_DN      0x02
#define     JOY_FIRE    0x01

// MMC_A bits
#define     MMC_DAT3    (1<<0)
#define     CS_ESP8266  (1<<1)
#define     CS_JOY      (1<<2)

#define SELECT()    MMC_A &= ~MMC_DAT3
#define DESELECT()  MMC_A |= MMC_DAT3

#define SELECT_ESP()    MMC_A &= ~CS_ESP8266
#define DESELECT_ESP()  MMC_A |= CS_ESP8266

#define SELECT_JOY()    MMC_A &= ~CS_JOY
#define DESELECT_JOY()  MMC_A |= CS_JOY

#define SPIF    0x01

#endif
