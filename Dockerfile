FROM archlinux:base-20201220.0.11678
RUN yes | pacman -Sy ponysay --noconfirm
RUN yes | pacman -Sy glibc --noconfirm
ENTRYPOINT ["/usr/bin/ponysay"]
CMD ["Hey, netology"]