/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strncmp.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: desilva <dede-2231@hotmail.com>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/02/14 13:59:14 by desilva           #+#    #+#             */
/*   Updated: 2022/02/16 01:45:59 by desilva          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int	ft_strncmp(char *s1, char *s2, unsigned int n)
{
	unsigned int	cont;

	cont = 0;
	while (n > 0 && cont < n && (s1[cont] || s2[cont]))
	{
		if (s1[cont] != s2[cont])
		{
			return (s1[cont] - s2[cont]);
		}
		cont++;
	}
	return (0);
}
