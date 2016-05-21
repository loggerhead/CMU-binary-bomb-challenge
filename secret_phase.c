int secret_phase()
{
    char *line = read_line();
    long int num = strtol(line, NULL, 10);

    if (num - 1 <= 0x3e8) {
        // *0x804b320 = 0x24
        eax = fun7(0x804b320, num);
        if (eax == 7) {
            return 0;
        } else {
            return 1;
        }
    } else {
        return 1;
    }

    return 0;
}

// binary tree
int fun7(Tree *cons, int num)
{
    // *($ebp+0xc) = num
    // *($ebp+0x8) = cons

    // 8048ea0
    if (cons != NULL) {
        // 8048eb0
        if (num >= cons->value) {
            // 8048ec5
            if (num == cons->value) {
                // 8048ee0
                return 0;
            } else {
                // 8048ecc
                num = fun7(cons->right, num);
                return 2 * num + 1;
            }
        } else {
            // 8048eb7
            num = fun7(cons->left, num);
            return 2 * num;
        }
    // 8048ea4
    } else {
        return -1;
    }
}