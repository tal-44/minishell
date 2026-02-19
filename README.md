# 🐚 Minishell

*This project has been created as part of the 42 curriculum by \<dboscan-\> and \<jmiguele\>.*

> *As beautiful as a shell*

---

## 📋 Description

**Minishell** is a simplified shell implementation written in **C**, inspired by **Bash**. The goal is to understand how a Unix shell works under the hood — from parsing user input to managing processes, pipes, redirections, and environment variables.

This project provides hands-on experience with core systems programming concepts such as **process creation**, **file descriptors**, **signal handling**, and **inter-process communication**.

---

## ✨ Features

### Command Execution
- Displays a prompt and waits for user input
- Maintains a working **command history**
- Searches and launches executables based on `PATH`, or via relative/absolute paths
- Handles **environment variables** (`$VAR`) expanding to their values
- Handles `$?` expanding to the exit status of the last executed foreground pipeline

### Quoting
- **Single quotes** `'...'` — prevents interpretation of all metacharacters
- **Double quotes** `"..."` — prevents interpretation of metacharacters except `$`

### Redirections
| Operator | Description |
|----------|-------------|
| `<`      | Redirect input |
| `>`      | Redirect output |
| `<<`     | Here-document (read input until delimiter) |
| `>>`     | Redirect output in append mode |

### Pipes
- Supports **pipelines** (`|`), connecting the output of one command to the input of the next

### Signal Handling
| Signal     | Behavior |
|------------|----------|
| `ctrl-C`   | Displays a new prompt on a new line |
| `ctrl-D`   | Exits the shell |
| `ctrl-\`   | Does nothing |

### Built-in Commands
| Command  | Description |
|----------|-------------|
| `echo`   | Print text (supports `-n` option) |
| `cd`     | Change directory (relative or absolute path) |
| `pwd`    | Print working directory |
| `export` | Set environment variables |
| `unset`  | Unset environment variables |
| `env`    | Display environment |
| `exit`   | Exit the shell |

### Bonus
- `&&` and `||` operators with parentheses for priority grouping
- Wildcard `*` expansion for the current working directory

---

## 🛠️ Instructions

### Prerequisites

- **GCC** (or `cc`)
- **Make**
- **readline** library installed

### Compilation

```bash
# Clone the repository
git clone <repository-url> minishell
cd minishell

# Compile the project
make

# Compile with bonus features
make bonus
```

### Usage

```bash
# Launch minishell
./minishell
```

Once inside, you can use it like a regular shell:

```bash
minishell$ echo "Hello, World!"
Hello, World!
minishell$ ls -la | grep minishell
minishell$ cat < infile | wc -l > outfile
minishell$ export MY_VAR="42"
minishell$ echo $MY_VAR
42
minishell$ exit
```

### Makefile Rules

| Rule     | Description |
|----------|-------------|
| `make`   | Compiles the project |
| `make all` | Same as `make` |
| `make clean` | Removes object files |
| `make fclean` | Removes object files and the executable |
| `make re` | Performs `fclean` + `all` |
| `make bonus` | Compiles with bonus features |

---

## 📚 Resources

- [Bash Reference Manual (GNU)](https://www.gnu.org/software/bash/manual/bash.html) — Official Bash documentation, used as the reference behavior
- [The Open Group — Shell Command Language](https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html) — POSIX shell specification
- [man page: readline(3)](https://man7.org/linux/man-pages/man3/readline.3.html) — readline library documentation
- [Writing Your Own Shell](https://www.cs.purdue.edu/homes/grr/SystemsProgrammingBook/Book/Chapter5-WritingYourOwnShell.pdf) — Academic guide on building a shell
- [Pipes, Forks, & Dups](https://www.rozmichelle.com/pipes-forks-dups/) — Understanding Unix process mechanisms

### AI Usage

AI tools were used to assist with:
- Researching edge cases in Bash behavior for accurate replication
- Generating documentation and this README
- Debugging specific parsing and signal handling scenarios

All AI-generated content was reviewed, understood, and validated before integration.

---

## 📄 License

This project is part of the [42 School](https://42.fr/) curriculum.
