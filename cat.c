# include <string.h>
# include <unistd.h>
# include <stdio.h>
# include <stdlib.h>
# include <limits.h>
# include <ctype.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

void cat(int fd) 
{
     char buffer[4096];
    ssize_t nbytes;
    while ((nbytes = read(fd, buffer, sizeof(buffer))) > 0)
    {
        if (write(fd, buffer, nbytes) != nbytes)
        ;
            // return -1;
    }
    // return (nbytes < 0) ? -1 : 0;
}

int main(int ac, const char **av) {
	cat(0);
	cat(open(__FILE__, O_RDONLY));
	cat(open(av[0], O_RDONLY));
	cat(-42);
	(void)ac;
	return (0);
}
