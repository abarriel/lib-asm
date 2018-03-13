# include <string.h>
# include <unistd.h>
# include <stdio.h>
# include <stdlib.h>
# include <limits.h>
# include <ctype.h>
size_t				ft_strlen(const char *s);

int main()
{
    extern char **environ;
    int i = -1;
    int ret = 0;
    int e = 10000000;
    while(--e && (i = 0) + 1)
        while(environ[i])
            ret = ft_strlen(environ[i++]);
}
