/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnbr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: desilva <dede-2231@hotmail.com>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/10 22:05:46 by desilva           #+#    #+#             */
/*   Updated: 2022/03/10 22:08:48 by desilva          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>

void	ft_put_putnbr(int nb);

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

/*
#include <stdio.h>
int	main(void)
{
	ft_put_putnbr(30679);
	printf("\n");
}
*/
