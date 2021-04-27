yay -S alsa-utils
# alsamixer
# sudo alsactl store      store the alsamixer changes
# ammixer 
# aplay -l    
# amixer -D pulse sset Master 5%+
yay -S pulseaudio pulseaudio-alsa
sudo systemctl --user enable --now pulseaudio.service



# config with pacmd pactl
# pacmd list-sources | grep -e 'index:' -e device.string -e 'name:'
# pacmd list-sinks | grep -e 'name:' -e 'index:'
# pactl list short modules, sinks, sources, sink-inputs, source-outputs, clients, samples, cards
# pactl set-default-(sink|source) NAME



# slove HDMI no sound problem 
# pacmd list-cards to find HDMI port

# yay -S jack2
# PCM(Pulse Code Modulation ) 
# Applications (e.g. mp3 player, web video)
# Sound server (e.g. aRts, ESD, JACK, PulseAudio)
# Sound subsystem (described as kernel modules or drivers; e.g. OSS, ALSA)
# Operating system kernel (e.g. Linux, Unix)
