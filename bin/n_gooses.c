/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   n_gooses.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmongell <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/14 12:53:25 by tmongell          #+#    #+#             */
/*   Updated: 2022/07/17 21:19:36 by tmongell         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>

int	main(int ac, char **av)
{
	int	nb_goose;
	int pid;
	
	if (ac != 2)
		return(printf("error\nusage : %s <nb_goose>\n", av[0]));
	nb_goose = atoi(av[1]);
	while (nb_goose --)
	{
		pid = fork();
		if (!pid)
		{
			system("/Applications/Desktop\\ Goose.app/Contents/MacOS/Desktop\\ Goose 2> /dev/null > /dev/null");
			exit(0);
		}
	}
	while (1);
}
