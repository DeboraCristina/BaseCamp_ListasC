/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_rev_params.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: desilva <dede-2231@hotmail.com>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/02/18 09:51:58 by desilva           #+#    #+#             */
/*   Updated: 2022/02/19 01:49:43 by desilva          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>

void	escreva(char *str)
{
	while (*str)
		write(1, &*str++, 1);
}

int	main(int argc, char *argv[])
{
	int	i;

	i = 1;
	while (argc > i)
	{
		escreva(*(argv + (argc - 1)));
		escreva("\n");
		--argc;
	}
	return (0);
}
