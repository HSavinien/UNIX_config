/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   leaks_check.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmongell <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/04/16 18:15:22 by tmongell          #+#    #+#             */
/*   Updated: 2022/07/06 15:03:52 by tmongell         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include <unistd.h>
#include <string.h>

char	*strjoin(char const *s1, char const *s2)
{
	size_t	len;
	char	*new_str;

	len = strlen(s1) + strlen(s2);
	new_str = malloc(len + 1);
	if (new_str == NULL)
		return (NULL);
	bzero(new_str, len + 1);
	strlcat (new_str, s1, len + 1);
	strlcat (new_str, s2, len + 1);
	new_str[len] = '\0';
	return (new_str);
}

int	main(int ac, char **av)
{
	char	*process;
	char	*cmd;
	char	std_err[1];

	if (ac == 2)
		process = av[1];
	else
		process = strdup("a.out");
	cmd = strjoin("leaks ", process);
	while (!read(2, std_err, 1))
		system(cmd);
}

