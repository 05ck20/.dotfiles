#ifndef CONFIG_H
#define CONFIG_H

// String used to delimit block outputs in the status.
#define DELIMITER "  "

// Maximum number of Unicode characters that a block can output.
#define MAX_BLOCK_OUTPUT_LENGTH 45

// Control whether blocks are clickable.
#define CLICKABLE_BLOCKS 1

// Control whether a leading delimiter should be prepended to the status.
#define LEADING_DELIMITER 0

// Control whether a trailing delimiter should be appended to the status.
#define TRAILING_DELIMITER 1
#define TRAILING_DELIMITER_CHAR " "

// Define blocks for the status feed as X(icon, cmd, interval, signal).
#define BLOCKS(X)                   \
    X("", "sb-brightness",    0, 6) \
    X("", "sb-volume",        0, 5) \
    X("", "sb-network",       0, 7) \
    X("󰥔  ", "sb-datetime",   1, 1) \
    X("", "sb-battery",      30, 2) \

#endif  // CONFIG_H
