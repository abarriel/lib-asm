# include <string.h>
# include <unistd.h>
# include <stdio.h>
# include <stdlib.h>
# include <limits.h>
# include <ctype.h>

# define RED	"\033[0;31m"
# define GREEN	"\033[0;32m"
# define RESET	"\033[0;m"
# define BLUE	"\033[0;34m"
# define PURPLE	"\033[0;35m"
# define CYAN	"\033[0;36m"
# define AZUR	"\e[38;5;6m"
# define PEACH "\e[38;5;9m"
# define APPLE	"\e[38;5;10m"
# define OR	"\e[38;5;94m"

# define IS_CHECKER(X, min, max) is_(X, #X, min, max)
# define IS_CMP(MY_F, FUNC) is_cmp(MY_F, FUNC, #MY_F)
# define OK_S(s) printf(GREEN"%s OK"RESET"\n", s)
# define KO_S(s) printf(RED"%s KO"RESET"\n", s)
# define OK printf(GREEN"ft_%s OK"RESET"\n", __FUNCTION__ + 2)
# define KO printf(RED"ft_%s KO"RESET"\n", __FUNCTION__ + 2)
# define MIN(x,y) (y + ((x - y) & ((x - y) >> (sizeof(int) * CHAR_BIT - 1))))

void				ft_bzero(void *s, size_t n);
void				*ft_memset(void *s, int c, size_t n);
int					ft_isalnum(int c);
int					ft_isalpha(int c);
int					ft_isascii(int c);
int					ft_isdigit(int c);
int					ft_isprint(int c);
void				*ft_memcpy(void *dest, const void *src, size_t n);
int					ft_isupper(int c);
int					ft_islower(int c);
int					ft_tolower(int c);
int					ft_toupper(int c);
char				*ft_strdup(const char *s);
char				*ft_strcat(char *dest, const char *src);
size_t				ft_strlen_bytes(const char *s);
size_t				ft_strlen(const char *s);
int                 ft_puts(const char *s);
int				    ft_max(int nb1, int nb2);
int				    ft_min(int nb1, int nb2);
void			    ft_hello(void);

extern char **environ;
void    is_(int (*func)(int c), char *s, int min, int max)
{
 	int ret, i = -1;

	while (++i <= 127)
    {
        ret = func(i);
		if (i >= min && i <= max && ret != 1)
        {
			KO_S(s);
            return ;
        }
		if ((i < min || i > max) && ret == 1)
        {
			KO_S(s);
            return;
        }
    }
    OK_S(s);
}

void    is_cmp(int (*my_func)(int c), int (*func)(int c), char *s)
{
 	int  i = -1;

	while (++i <= 127)
    {
        // printf("%d - %d - [%i]\n", my_func(i), func(i), i);
        if (my_func(i) != func(i))
            {
                KO_S(s);
                return;
            }
    }
    OK_S(s);
}

void x_max()
{
    if (ft_max(500, 4) == 500 && ft_max(1 , 400) == 400 && ft_max(-1 , 400) == 400)
    {
        OK;
        return ;
    }
    KO;
}

void x_min()
{
    if (ft_min(500, 4) == 4 && ft_min(1 , 400) == 1 && ft_min(-1 , 400) == -1)
    {
        OK;
        return ;
    }
    KO;
}

void x_puts()
{
    
    char s[] = "allanBarriell";
    int ret;
    ret = puts(s);
    // dprintf (2,"ret= %d\n",ret);
       ret = ft_puts(s);
    // dprintf (2,"ret= %d\n",ret);
    // fclose(stdout);
    // dprintf (2,"ret= %d\n",ret);
    // dprintf (2,"ret= %d\n",ret);
    ret = puts(NULL);
    ft_puts(NULL);
}

void x_memset(int c)
{
    int ret = 0;
    char my_str26[] = "adjeiwdjewoidfjweoifjerwdsswdesdadeaawedio";
    char str26[] = "adjeiwdjewoidfjweoifjerwdsswdesdadeaawedio";

    printf("string:[%s]\n", my_str26);    
    ft_memset(my_str26, c, 42);
    memset(str26, c, 42);
    printf("mine_after:[%s]\n", my_str26);
    printf("should_be:[%s]\n", str26);
    ret = memcmp(my_str26, str26, 42);
    if (ret)
        KO;
    else
        OK;
}

void x_bzero()
{
    int ret = 0;
    char my_str26[] = "adjeiwdjewoidfjweoifjerwdsswdesdadeaawedio";
    char str26[] = "adjeiwdjewoidfjweoifjerwdsswdesdadeaawedio";

    ft_bzero(my_str26, 42);
    bzero(str26, 42);
    ret = memcmp(my_str26, str26, 42);
    if (ret)
        KO;
    else
        OK;
}
void x_strlen()
{
    int i = -1;
    while (environ[++i])
    {
        if (strlen(environ[i]) != ft_strlen_bytes(environ[i]))
            {
                KO;
                return;
            }
    }
    OK;
}
 
void x_strcat()
{
    char *str;
    char *save_pointer;
    int i = -1;
    while (environ[++i])
    {
        str = calloc(ft_strlen_bytes(environ[i]), 300);
        save_pointer = ft_strcat(str, environ[i]);
        if (strcmp(str, environ[i]) || strcmp(save_pointer, str))
        {
            KO;
            free(str);
            return;
        }
        free(str);
    }
    OK;
}

void x_memcpy()
{
    char dest_my[1000];
    char dest[1000];
    char *save_my;
    char *save;
    int i = -1;

    bzero(dest_my, 1000);
    bzero(dest, 1000);
    while (environ[++i])
    {
        save = memcpy(dest, environ[i], strlen(environ[i]));
        save_my = ft_memcpy(dest_my, environ[i], strlen(environ[i]));
        if (strcmp(save, save_my) || strcmp(dest, dest_my))
        {
            KO;
            return;   
        }
        bzero(dest_my, 1000);
        bzero(dest, 1000);
    }
    OK;
}

void x_strdup()
{
    char *dest;
    int i = -1;

    dest = NULL;
    while (environ[++i])
    {
        // printf("src: %s - len: %lu\n", environ[i], strlen(environ[i]));
        dest = ft_strdup(environ[i]);
        // printf("dest: %s\n", dest);
        if (strcmp(dest, environ[i]))
        {
            KO;
            return;   
        }
        free(dest);
    }
    OK;
}

int main()
{
    ft_hello();
    x_puts();
    IS_CHECKER(ft_islower, 'a', 'z');
    IS_CHECKER(ft_isupper, 'A', 'Z');
    IS_CHECKER(ft_isdigit, '0', '9');
    IS_CHECKER(ft_isascii, 0, 127);
    IS_CHECKER(ft_isprint, 32, 126);
    IS_CMP(ft_isalpha, isalpha);
    IS_CMP(ft_isalnum, isalnum);
    IS_CMP(ft_tolower, tolower);
    IS_CMP(ft_toupper, toupper);
    x_max();
    x_strcat();
    x_min();
    x_bzero();
    x_strlen();
    x_memset(0);
    x_memset('z');
    x_memcpy();
    x_strdup();
    
	return 0;
}
