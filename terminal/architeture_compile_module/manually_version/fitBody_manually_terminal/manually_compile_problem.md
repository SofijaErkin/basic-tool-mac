# Manually Compile Problem

## 1.Problem A

### 1.1Terminal/Debug Output

If use "`make`" via "Tasks:Run Task" at main.cpp, that will generate target

named "main" and debug file named "main.dSYM";

If use "`make`" via "Tasks:Run Task" at bank.cpp, that will generate target

named "bank" and debug file named "bank.dSYM";

If use "`make`" via "Tasks:Run Task" at bank.h, that will generate target

named "bank" and debug file named "bank.dSYM";

If use "`make`" via "Tasks:Run Task" at settings.json, that will generate target

named "settings" and debug file named "settings.dSYM";

If use "`make`" via "Tasks:Run Task" at terminal_compile_command.md, that will

generate target named "terminal_compile_command" and debug file named

"terminal_compile_command.dSYM";

### 1.2Run/Debug Or Not

Run.

### 1.3Fix Or Not

No need to fix.

### 1.4Maybe Or Not

We set target named "`${workspaceFolder}/build/debug/${fileBasenameNoExtension}`".
END.
