/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strcat.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: desilva <dede-2231@hotmail.com>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/02/16 01:47:56 by desilva           #+#    #+#             */
/*   Updated: 2022/02/17 01:06:47 by desilva          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int	ft_strlen(char *str)
{
	int	i;

	i = 0;
	while (str[i])
	{
		i++;
	}
	return (i);
}

char	*ft_strcat(char *dest, char *src)
{
	int	len_dest;
	int	i;

	i = -1;
	len_dest = ft_strlen(dest);
	while (src[++i])
		dest[len_dest + i] = src[i];
	dest[len_dest + i] = '\0';
	return (dest);
}
