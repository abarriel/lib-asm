/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: abarriel <abarriel@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/11/06 21:11:10 by abarriel          #+#    #+#             */
/*   Updated: 2017/03/20 09:57:46 by abarriel         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_H
# define LIBFT_H
# include <string.h>
# include <unistd.h>
# include <stdio.h>
# include <stdlib.h>
# include <limits.h>

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

#endif