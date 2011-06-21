#include <stdio.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <stdlib.h>

#define GARMIN_USB "/dev/skel0"

int open_usb()
{
    int fd = open(GARMIN_USB, O_RDWR);
    if (fd <= 0) {
        perror("open");
        exit(1);
    }
}

int main()
{
    int fd;
    fd = open_usb();

    return 0;
}
