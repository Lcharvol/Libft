# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lcharvol <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/11/04 14:01:56 by lcharvol          #+#    #+#              #
#    Updated: 2016/11/11 18:29:40 by lcharvol         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Output's Name
NAME = libft.a

# Compilator
CC = gcc
# GCC flags
CFLAGS = -Werror
ALL_CFLAGS = -Wall -Wextra $(CFLAGS)

# Includes directories
INC_PATH = includes/
INCLUDES_FILES=  includes/libft.h

INCLUDES += $(addprefix -iquote , $(INC_PATH))

# Sources Objects directories
SRCS = src/write/ft_putchar.c \
	  src/write/ft_putchar_fd.c \
	  src/write/ft_putendl.c \
	  src/write/ft_putendl_fd.c \
	  src/write/ft_putnbr.c \
	  src/write/ft_putnbr_fd.c \
	  src/write/ft_putstr.c \
	  src/write/ft_putstr_fd.c \
	  \
	  src/types/ft_isalnum.c \
	  src/types/ft_isdigit.c \
	  src/types/ft_isascii.c \
	  src/types/ft_isprint.c \
	  src/types/ft_isalnum.c \
	  src/types/ft_atoi.c \
	  src/types/ft_toupper.c \
	  src/types/ft_tolower.c \
	  src/types/ft_itoa.c \
	  src/types/ft_isalpha.c \
	  \
	  src/str/ft_strcat.c \
	  src/str/ft_strncat.c \
	  src/str/ft_strcpy.c \
	  src/str/ft_strncpy.c \
	  src/str/ft_strcmp.c \
	  src/str/ft_strcpy.c \
	  src/str/ft_strlen.c \
	  src/str/ft_strstr.c \
	  src/str/ft_strncmp.c \
	  src/str/ft_strclr.c \
	  src/str/ft_striter.c \
	  src/str/ft_striteri.c \
	  src/str/ft_strnstr.c \
	  src/str/ft_strmap.c \
	  src/str/ft_strmapi.c \
	  src/str/ft_strdel.c \
	  src/str/ft_strnew.c \
	  src/str/ft_strequ.c \
	  src/str/ft_strnequ.c \
	  src/str/ft_strsub.c \
	  src/str/ft_strjoin.c \
	  src/str/ft_strtrim.c \
	  src/str/ft_strchr.c \
	  src/str/ft_strrchr.c \
	  src/str/ft_strsplit.c \
	  src/str/ft_strdup.c \
	  src/str/ft_strlcat.c \
	  \
	  src/mem/ft_memdel.c \
	  src/mem/ft_memalloc.c \
	  src/mem/ft_memset.c \
	  src/mem/ft_memcpy.c \
	  src/mem/ft_memccpy.c \
	  src/mem/ft_memcmp.c \
	  src/mem/ft_memchr.c \
	  src/mem/ft_memmove.c \
	  \
	  src/lst/ft_lstnew.c \
	  src/lst/ft_lstdelone.c \
	  src/lst/ft_lstdel.c \
	  src/lst/ft_lstadd.c \
	  src/lst/ft_lstiter.c \
	  src/lst/ft_lstmap.c \
	  \
	  src/utils/ft_bzero.c \
	  \
	  src/maths/add.c \
	  src/maths/dec.c \
	  src/maths/divide.c \
	  src/maths/abs.c \
	  \
	  src/map/map.c \

OBJ = ft_putchar.o \
	  ft_putchar_fd.o \
	  ft_putendl.o \
	  ft_putendl_fd.o \
	  ft_putnbr.o \
	  ft_putnbr_fd.o \
	  ft_putstr.o \
	  ft_putstr_fd.o \
	  ft_isalnum.o \
	  ft_isdigit.o \
	  ft_isascii.o \
	  ft_isprint.o \
	  ft_isalnum.o \
	  ft_atoi.o \
	  ft_toupper.o \
	  ft_tolower.o \
	  ft_itoa.o \
	  ft_isalpha.o \
	  ft_strcat.o \
	  ft_strncat.o \
	  ft_strcpy.o \
	  ft_strncpy.o \
	  ft_strcmp.o \
	  ft_strcpy.o \
	  ft_strlen.o \
	  ft_strstr.o \
	  ft_strncmp.o \
	  ft_strclr.o \
	  ft_striter.o \
	  ft_striteri.o \
	  ft_strnstr.o \
	  ft_strmap.o \
	  ft_strmapi.o \
	  ft_strdel.o \
	  ft_strnew.o \
	  ft_strequ.o \
	  ft_strnequ.o \
	  ft_strsub.o \
	  ft_strjoin.o \
	  ft_strtrim.o \
	  ft_strchr.o \
	  ft_strrchr.o \
	  ft_strsplit.o \
	  ft_strdup.o \
	  ft_strlcat.o \
	  ft_memdel.o \
	  ft_memalloc.o \
	  ft_memset.o \
	  ft_memcpy.o \
	  ft_memccpy.o \
	  ft_memcmp.o \
	  ft_memchr.o \
	  ft_memmove.o \
	  ft_lstnew.o \
	  ft_lstdelone.o \
	  ft_lstdel.o \
	  ft_lstadd.o \
	  ft_lstiter.o \
	  ft_lstmap.o \
	  ft_bzero.o \
	  add.o \
	  dec.o \
	  divide.o \
	  abs.c \
	  map.c \

SRC = $(OBJ:.c=.c)
OBJS = $(SRCS:.c=.o)
FLAGS = -Wall -Wextra -Wall

INC = includes

all: $(NAME)

$(NAME): $(OBJS)
	@ar rc $(NAME) $(OBJS)
	@ranlib $(NAME)
	@echo "\033[0m\033[46m\033[37m\033[1m[libft]\033[40m\033[1m\033[37m done"

%.o: $(SRC)/%.c
	@echo "\033[0m\033[46m\033[37m\033[1m[libft]\033[40m\033[1m\033[37m making libft"
	@$(CC) $(FLAGS) -I $(INCLUDES) -c $^

clean:
	/bin/rm -f $(OBJS)

fclean: clean
	/bin/rm -f $(NAME)
	/bin/rm -f $(OBJS)

re: fclean all
.PHONY: clean fclean re