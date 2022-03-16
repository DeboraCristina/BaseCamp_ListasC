/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putstr_non_printable.c                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: desilva <dede-2231@hotmail.com>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/15 21:30:00 by desilva           #+#    #+#             */
/*   Updated: 2022/03/15 22:49:53 by desilva          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

//procurar por "//travei"
#include <unistd.h>

void	ft_putchar(char c);

void	ft_putchar(char c)
{
	write(1, &c, 1);
}

int	ft_str_is_printable(char c);

int	ft_str_is_printable(char c)
{
	if (c >= 32 && c <= 126)
		return (1);
	return (0);
}

char	*ft_chartohex(int c)
{
	char	*rep;

	rep = "";
	if (c / 10 != 0)
	{
		ft_chartohex(c / 10);
	}
	if (c <)
		//travei
	return (rep);
}

/*
void	ft_put_putnbr(int nb)
{
	char	cb;

	if (nb / 10 != 0)
	{
		ft_put_putnbr(nb / 10);
	}
	cb = (nb % 10) + 48;
	write(1, &cb, 1);
}
*/

void	ft_putstr_non_printable(char *str);

void	ft_putstr_non_printable(char *str)
{
	int	c;

	c = 0;
	while (str[c])
	{
		if (ft_str_is_printable(str[c]))
			ft_putchar(str[c]);
		else
		{
			ft_putchar(92);
		}
		++c;
	}
}
