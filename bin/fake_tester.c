/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   fake_tester.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmongell <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/04/06 16:46:08 by tmongell          #+#    #+#             */
/*   Updated: 2022/04/06 16:53:21 by tmongell         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include "formating.h"

int	main(int ac, char **av)
{
	unsigned int i = 1;
	unsigned int limit;

	if (ac == 2)
		limit = atoi(av[1]);
	else
		limit = 0 - 1;
	while (i ++ < limit)
	{
		if (random() % 10 < 7)
			printf(GREEN "%d[OK] " CLEAR, i % 20);
		else
			printf(RED "%d[KO] " CLEAR, i % 20);
		if (random() % 10 < 2)
			printf("\n");
		usleep(20000 + (i % 10000));
	}
}
