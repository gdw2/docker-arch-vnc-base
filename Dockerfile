FROM nicocoffo/archlinux-minimal

ENV LANG en_US.utf8

RUN pacman -Sy --noconfirm --needed expect tigervnc ratpoison ttf-droid
WORKDIR /root/
ADD .ratpoisonrc /root/.ratpoisonrc
ENV VNCPASSWD vncrocks
#RUN pacman -S -cc --noconfirm
#ln -sf /proc/self/fd /dev
#rm -rf /var/cache/pacman/pkg
ADD xstartup /root/.vnc/xstartup
ADD setpass.sh /root/setpass.sh

CMD /root/setpass.sh; vncserver -fg 

EXPOSE 5901

