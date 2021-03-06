#include "input.h"

int mouseX, mouseY;
Uint32 mouseState = 0, oldMouseState = 0;
uint32_t keysdown[MAXKEYSDOWN];

static int replaceFirst(uint32_t a, uint32_t b){
    for(int i = 0; i < MAXKEYSDOWN; i++){
        if(keysdown[i] == a){
            keysdown[i] = b;
            return i;
        }
    }
    return -1;
}

void keyEvent(SDL_KeyboardEvent key){
    if(key.repeat > 0) return;
    uint32_t code = key.keysym.scancode;
    int state = key.state == SDL_PRESSED;

    if(state){
        replaceFirst(0, code);
        logicOnKeyPress(code);
    }else{
        replaceFirst(code, 0);
    }
}

void mouseEvent(){
    Uint32 changed = mouseState ^ oldMouseState;
    if(changed){
        if(changed & SDL_BUTTON(SDL_BUTTON_LEFT)){
            return;
        }
    }
}

int isKeyPressed(uint32_t code){
    for(int i = 0; i < MAXKEYSDOWN; i++){
        if(keysdown[i] == code){
            return code;
        }
    }
    return 0;
}
