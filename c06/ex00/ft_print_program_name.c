/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_program_name.c                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: desilva <dede-2231@hotmail.com>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/02/18 09:51:02 by desilva           #+#    #+#             */
/*   Updated: 2022/02/18 10:06:20 by desilva          ###   ########.fr       */
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
	if (argc)
		escreva(argv[0]);
	escreva("\n");
	return (0);
}
