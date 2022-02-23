/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_ultimate_div_mod.c                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: desilva <dede-2231@hotmail.com>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/02/10 02:42:29 by desilva           #+#    #+#             */
/*   Updated: 2022/02/10 18:13:12 by desilva          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

void	ft_ultimate_div_mod(int *a, int *b)
{
	int	save;

	if (*b == 0)
		return ;
	save = *a;
	*a = *a / *b;
	*b = save % *b;
}
