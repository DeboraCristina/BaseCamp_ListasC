/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_rev_int_tab.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: desilva <dede-2231@hotmail.com>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/02/10 05:03:26 by desilva           #+#    #+#             */
/*   Updated: 2022/02/10 14:36:43 by desilva          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

void	ft_rev_int_tab(int *tab, int size)
{
	int	tabrev[size];
	int	findex;
	int	pindex;

	pindex = 0;
	findex = (size - 1);
	while (pindex < size)
	{
		tabrev[pindex] = *(tab + findex);
		pindex++;
		findex--;
	}
	findex = 0;
	pindex = 0;
	while (pindex < size)
	{
		*(tab + pindex) = tabrev[findex];
		pindex++;
		findex++;
	}
}
