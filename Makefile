CC:=$(CROSS_COMPILE)gcc
CFLAGS:=-std=gnu99 -I$(ROOTFS_PATH)/usr/include/SDL -DSTC_USE_SIMPLE_SDL -DSTC_SHOW_GHOST_PIECE
LDFLAGS:=-L$(ROOTFS_PATH)/usr/lib
LIBS:=-lSDL

sdl-stc: main.c game.c sdl/sdl_game.c
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^ $(LIBS)

clean:
	rm -f *.o sdl-stc
