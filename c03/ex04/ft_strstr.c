/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strstr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: desilva <dede-2231@hotmail.com>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/18 10:54:20 by desilva           #+#    #+#             */
/*   Updated: 2022/03/18 10:54:56 by desilva          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

char	*ft_strstr(char *str, char *to_find)
{
	int	cont;
	int	c;
	int	i;

	cont = 0;
	c = 0;
	i = -1;
	while (str[cont])
	{
		if (to_find[c] == 0)
			return (str + i);
		if (i == -1 && str[cont] == to_find[0])
			i = cont;
		if (str[cont] != to_find[c])
		{
			c = 0;
			i = -1;
		}
		++cont;
		if (i != -1)
			++c;
	}
	return ('\0');
}
