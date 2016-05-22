def s
    if $argc == 0
        si
    else
        si $arg0
    end
    x/15i $eip
end

def n
    if $argc == 0
        ni
    else
        ni $arg0
    end
    x/15i $eip
end

def l
    x/30i $eip
end

def pr
    if $argc == 0
        info registers
    else
        info registers $arg0
    end
end

def ps
    x/s $arg0
end

def px
    x/x $arg0
end

def pc
    x/c $arg0
end

# p6: print things in phase_6
def p6_nums
    # nums[0]
    x/x $ebp-0x18
    x/x $ebp-0x14
    x/x $ebp-0x10
    x/x $ebp-0x0c
    x/x $ebp-0x08
    # nums[5]
    x/x $ebp-0x04
end

def p6_list
    # node1
    x/x 0x804b26c
    x/x 0x804b260
    x/x 0x804b254
    x/x 0x804b248
    x/x 0x804b23c
    # node6
    x/x 0x804b230
end

def p6_ptrs
    x/x $ebp-0x30
    x/x $ebp-0x2c
    x/x $ebp-0x28
    x/x $ebp-0x24
    x/x $ebp-0x20
    x/x $ebp-0x1c
end


b main
r
