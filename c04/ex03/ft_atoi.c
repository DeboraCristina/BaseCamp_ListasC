/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_atoi.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: desilva <dede-2231@hotmail.com>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/18 20:48:01 by desilva           #+#    #+#             */
/*   Updated: 2022/03/18 22:05:09 by desilva          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int	is_numeric(char c)
{
	if (c >= '0' && c <= '9')
		return (1);
	return (0);
}

int	ft_atoi(char *str)
{
	int	cont;
	int	num;
	int	sinal;

	cont = 0;
	num = 0;
	sinal = 1;
	while (str[cont])
	{
		if (str[cont] == '-')
			sinal *= -1;
		if (is_numeric(str[cont]))
		{
			num *= 10;
			num += str[cont] - 48;
		}
		if (!is_numeric(str[cont]) && is_numeric(str[cont - 1]))
			break ;
		cont++;
	}
	return (num * sinal);
}
