/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_rev_int_tab.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: desilva <dede-2231@hotmail.com>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/02/10 05:03:26 by desilva           #+#    #+#             */
/*   Updated: 2022/03/06 15:35:44 by desilva          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

void	ft_rev_int_tab(int *tab, int size)
{
	int	in;
	int	tam;
	int	res;

	in = 0;
	tam = size - 1;
	while (in < tam)
	{
		res = tab[in];
		tab[in] = tab[tam];
		tab[tam] = res;
		tam--;
		in++;
	}
}
