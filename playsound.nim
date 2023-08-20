import os

proc PlaySoundA(sound: cstring, hModule: cint, flags: cuint): bool {.importc, dynlib: "winmm".}

const SND_FILENAME = 0x00020000
const SND_ASYNC = 0x0001

proc playsound*(soundFile: string): bool =
  return PlaySoundA(soundFile, 0, SND_FILENAME or SND_ASYNC);

discard playsound("test.wav") # wav-only
sleep(2000) # delay after play-start
