// #include "./ressources/libft/includes/libft.h"
# include <string.h>
# include <unistd.h>
# include <stdio.h>
# include <stdlib.h>
# include <limits.h>
# include <ctype.h>
# define RED	"\033[0;31m"
# define GREEN	"\033[0;32m"
# define RESET	"\033[0;m"
# define IS_CHECKER(X, min, max) is_(X, #X, min, max)
# define OK_S(s) printf(GREEN"%s OK\n"RESET, s)
# define KO_S(s) printf(RED"%s KO\n"RESET, s)
# define OK printf(GREEN"%s OK\n"RESET, __FUNCTION__ + 2)
# define KO printf(RED"%s KO\n"RESET, __FUNCTION__ + 2)

void				ft_bzero(void *s, size_t n);
int					ft_isalnum(int c);
int					ft_isalpha(int c);
int					ft_isascii(int c);
int					ft_isdigit(int c);
int					ft_isprint(int c);
void				*ft_memcpy(void *dest, const void *src, size_t n);
void				*ft_memset(void *s, int c, size_t n);
int					ft_isupper(int c);
int					ft_islower(int c);
int					ft_tolower(int c);
int					ft_toupper(int c);
char				*ft_strdup(const char *s);
char				*ft_strcat(char *dest, const char *src);
size_t				ft_strlen(const char *s);

long				ft_max(long nb1, long nb2);
int					ft_pow(int s1);

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

void    is_cmp(int (*my_func)(int c), int (*func)(int c))
{
 	int  i = -1;

	while (++i <= 127)
    {
        // printf("%d - %d - [%i]\n", my_func(i), func(i), i);
        if (my_func(i) != func(i))
            {
                KO;
                return;
            }
    }
    OK;
}
int		ft_pw(int s1)
{
	int	i;

	i = 0;
	while (s1 > 0)
	{
		s1 /= 10;
		i++;
	}
	return (i);
}

int main()
{
    IS_CHECKER(ft_islower, 'a', 'z');
    IS_CHECKER(ft_isupper, 'A', 'Z');
    IS_CHECKER(ft_isdigit, '0', '9');
    IS_CHECKER(ft_isascii, 0, 127);
    IS_CHECKER(ft_isprint, 32, 126);
    is_cmp(ft_isalpha, isalpha);
    is_cmp(ft_isalnum, isalnum);
    printf("res: %d should be: %d \n", ft_pow(1000), ft_pw(1000));
    // IS_CHECKER(ft_islower, 'a', 'z');
    // IS_CHECKER(ft_islower, 'a', 'z');
	// x(ft_islower, "ft_islower", 50, 51);
	// x_islower();
    // x_isascii();
    // ft_hello();
	return 0;
}
