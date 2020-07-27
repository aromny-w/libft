# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aromny-w <aromny-w@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/12/02 02:41:38 by aromny-w          #+#    #+#              #
#    Updated: 2020/02/13 15:44:12 by aromny-w         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

CC = gcc
CFLAGS = -Wall -Wextra -Werror $(INC)

LIB = ft_memset.c ft_bzero.c ft_memcpy.c ft_memccpy.c ft_memmove.c \
	  ft_memchr.c ft_memcmp.c ft_strlen.c ft_wcslen.c ft_strnlen.c \
	  ft_wcsnlen.c ft_strdup.c ft_strndup.c ft_strcpy.c ft_strncpy.c \
	  ft_strlcpy.c ft_strcat.c ft_strncat.c ft_strlcat.c ft_strchr.c \
	  ft_strrchr.c ft_strstr.c ft_strnstr.c ft_strpbrk.c ft_strspn.c \
	  ft_strcmp.c ft_strncmp.c ft_abs.c ft_getnbr.c ft_atoi.c ft_pow.c \
	  ft_powl.c ft_isupper.c ft_islower.c ft_isalpha.c ft_isdigit.c \
	  ft_isxdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c ft_iscntrl.c \
	  ft_isgraph.c ft_ispunct.c ft_isblank.c ft_isspace.c ft_tolower.c \
	  ft_toupper.c ft_memalloc.c ft_reallocf.c ft_memdel.c ft_strnew.c \
	  ft_strdel.c ft_strclr.c ft_striter.c ft_striteri.c ft_strmap.c \
	  ft_strmapi.c ft_strequ.c ft_strnequ.c ft_strrev.c ft_strsub.c \
	  ft_strjoin.c ft_strtrim.c ft_strsplit.c ft_itoa.c ft_putchar.c \
	  ft_putwchar.c ft_padchar.c ft_putstr.c ft_putwcstr.c ft_putnstr.c \
	  ft_putnwcstr.c ft_putendl.c ft_putnbr.c ft_putchar_fd.c ft_putwchar_fd.c \
	  ft_padchar_fd.c ft_putstr_fd.c ft_putwcstr_fd.c ft_putnstr_fd.c \
	  ft_putnwcstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_lstnew.c \
	  ft_lstdelone.c ft_lstdel.c ft_lstadd.c ft_lstrev.c ft_lstsize.c \
	  ft_lstiter.c ft_lstmap.c

LIB += $(addprefix get_next_line/, $(GNL))
LIB += $(addprefix ft_printf/, $(PRINTF))

GNL = get_next_line.c

PRINTF = ft_printf.c flags.c width.c prec.c mod.c spec.c unknown.c percent.c \
		 integer.c unsigned.c octal.c hexa.c float.c character.c string.c \
		 pointer.c wcharacter.c

SRCS = $(addprefix srcs/, $(LIB))

OBJS = $(SRCS:.c=.o)

INC = -I includes

%.o: %.c
	@$(CC) $(CFLAGS) -c $< -o $@

all: $(NAME)

$(NAME): $(OBJS)
	@ar rc $(NAME) $(OBJS)
	@ranlib $(NAME)

clean:
	@/bin/rm -f $(OBJS)

fclean: clean
	@/bin/rm -f $(NAME)

re: fclean all
