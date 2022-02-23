/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strncat.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: desilva <dede-2231@hotmail.com>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/02/14 13:59:22 by desilva           #+#    #+#             */
/*   Updated: 2022/02/17 02:08:55 by desilva          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int	len(char *str)
{
	int	i;

	i = 0;
	while (str[i])
	{
		i++;
	}
	return (i);
}

char	*ft_strncat(char *dest, char *src, unsigned int nb)
{
	unsigned int	index;
	unsigned int	len_dest;

	index = 0;
	len_dest = len(dest);
	while (src[index] && index < nb)
	{
		dest[len_dest + index] = src[index];
		++index;
	}
	dest[len_dest + index] = '\0';
	return (dest);
}
