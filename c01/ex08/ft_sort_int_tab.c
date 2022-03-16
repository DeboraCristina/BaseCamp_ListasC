/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_sort_int_tab.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: desilva <dede-2231@hotmail.com>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/06 15:38:17 by desilva           #+#    #+#             */
/*   Updated: 2022/03/07 10:53:35 by desilva          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int	check_order(int *tab, int size)
{
	int	i;
	int	status;

	i = 0;
	status = 1;
	while (i < size - 1)
	{
		if (tab[i] > tab[i + 1])
		{
			status = 0;
			break ;
		}
		i++;
	}
	return (status);
}

void	moviment_numbers(int *tab, int size)
{
	int	i;
	int	c;
	int	a;

	i = 0;
	while (i < size - 1)
	{
		c = i;
		a = tab[i];
		while (c <= size - 1)
		{
			if (a > tab[c])
			{
				tab[i] = tab[c];
				tab[c] = a;
				break ;
			}
			c++;
		}
		i++;
	}
}

void	ft_sort_int_tab(int *tab, int size)
{
	int	status;

	status = 0;
	while (status == 0)
	{
		moviment_numbers(tab, size);
		status = check_order(tab, size);
	}
}
