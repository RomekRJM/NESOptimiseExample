/*	example code for cc65, for NES
 *  move some sprites with the controllers
 *  -also sprite vs sprite collisions
 *	using neslib
 *	Doug Fraker 2018
 */



#include "LIB/neslib.h"
#include "LIB/nesdoug.h"
#include "Sprites.h" // holds our metasprite data


#pragma bss-name(push, "ZEROPAGE")

// GLOBAL VARIABLES
unsigned char pad1;
unsigned char pad1_trigger;
unsigned char pad2;
unsigned char collision;
unsigned char boxGuyCounter = 0;
unsigned char boxGuyShowFist = 0;

#pragma bss-name(push, "BSS")

#define JUMPS 0x01

struct BoxGuy {
    unsigned char x;
    unsigned char y;
    unsigned char width;
    unsigned char height;
    unsigned char status;
    unsigned char airSequence;
};

#define AIR_SEQUENCE_LENGTH 11
unsigned char airSequence[AIR_SEQUENCE_LENGTH] = {-5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5};
unsigned char status;

struct BoxGuy BoxGuy1 = {20, 30, 15, 15};
struct BoxGuy BoxGuy1Fist = {36, 20, 7, 7};
struct BoxGuy BoxGuy2 = {70, 20, 15, 15};
// the width and height should be 1 less than the dimensions (16x16)
// note, I'm using the top left as the 0,0 on x,y

volatile unsigned int *dbg1 = (volatile unsigned int *)0x80;
volatile unsigned int *dbg2 = (volatile unsigned int *)0x81;
volatile unsigned int *dbg3 = (volatile unsigned int *)0x82;

const unsigned char box_2_guy_x[] = {
        20, 22, 24, 26, 24, 22
};

const unsigned char box_2_guy_y[] = {
        14, 16, 14, 12, 10, 8
};

const unsigned char text[] = "Sprite Collisions";

const unsigned char palette_bg[] = {
        0x00, 0x00, 0x10, 0x30, // gray, gray, lt gray, white
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0
};

const unsigned char palette_sp[] = {
        0x0f, 0x0f, 0x0f, 0x28, // black, black, yellow
        0x0f, 0x0f, 0x0f, 0x12, // black, black, blue
        0, 0, 0, 0,
        0, 0, 0, 0
};


// PROTOTYPES
void draw_sprites(void);

void movement(void);

void test_collision(void);


void main(void) {

    ppu_off(); // screen off

    // load the palettes
    pal_bg(palette_bg);
    pal_spr(palette_sp);

    // use the second set of tiles for sprites
    // both bg and sprites are set to 0 by default
    bank_spr(1);

    // load the text
    // vram_adr(NTADR_A(x,y));
    vram_adr(NTADR_A(7, 14)); // set a start position for the text

    // vram_write draws the array to the screen
    vram_write(text, sizeof(text));

    // turn on screen
    ppu_on_all();


    while (1) {
        // infinite loop
        ppu_wait_nmi(); // wait till beginning of the frame
        // the sprites are pushed from a buffer to the OAM during nmi

        pad1 = pad_poll(0); // read the first controller
        pad1_trigger = pad_state(0);

        movement();
        test_collision();
        draw_sprites();
    }
}


void draw_sprites(void) {
    // clear all sprites from sprite buffer
    oam_clear();

    // draw 2 metasprites
    oam_meta_spr(BoxGuy1.x, BoxGuy1.y, YellowSpr);

    oam_meta_spr(BoxGuy2.x, BoxGuy2.y, BlueSpr);

    if (boxGuyShowFist) {
        oam_meta_spr(BoxGuy1Fist.x, BoxGuy1Fist.y, FistSpr);
    }
}


void movement(void) {
    boxGuyShowFist = 0;
    if (pad1 & PAD_LEFT) {
        BoxGuy1.x -= 2;
    } else if (pad1 & PAD_RIGHT) {
        BoxGuy1.x += 2;
    }
    if (pad1 & PAD_UP) {
        BoxGuy1.status |= JUMPS;
    } else if (pad1 & PAD_DOWN) {
        BoxGuy1.y += 1;
    }

    *dbg3 = status;

    if (BoxGuy1.status & JUMPS) {
        BoxGuy1.y += airSequence[BoxGuy1.airSequence];
        ++BoxGuy1.airSequence;

        if (BoxGuy1.airSequence >= AIR_SEQUENCE_LENGTH) {
            BoxGuy1.airSequence = 0;
            BoxGuy1.status &= ~JUMPS;
        }
    }

    *dbg1 = BoxGuy1.airSequence;
    *dbg2 = BoxGuy1.y;


    if (pad1_trigger & PAD_B) {
        boxGuyShowFist = 1;
        BoxGuy1Fist.x = BoxGuy1.x + 16;
        BoxGuy1Fist.y = BoxGuy1.y;
    }

    BoxGuy2.x = box_2_guy_x[boxGuyCounter];
    BoxGuy2.y = box_2_guy_y[boxGuyCounter];

    boxGuyCounter = boxGuyCounter >= 5 ? 0 : ++boxGuyCounter;
}


void test_collision(void) {
    collision = check_collision(&BoxGuy1, &BoxGuy2);

    // change the BG color, if sprites are touching
    if (collision) {
        pal_col(0, 0x30);
    } else {
        pal_col(0, 0x00);
    }
}


