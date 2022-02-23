/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnbr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: desilva <dede-2231@hotmail.com>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/02/18 05:47:51 by desilva           #+#    #+#             */
/*   Updated: 2022/02/18 07:16:18 by desilva          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>

void	ft_putchar(char c)
{
	write(1, &c, 1);
}

void	ft_putnbr(int nb)
{
	if (nb / 10 != 0)
		ft_putnbr(nb / 10);
	if (nb < 0 && nb / 10 == 0)
		ft_putchar('-');
	if (nb % 10 < 0)
		ft_putchar((nb % 10) * -1 + 48);
	else
		ft_putchar(nb % 10 + 48);
}
