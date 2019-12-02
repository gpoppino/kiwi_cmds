BASE_BUILD_DIR=/var/lib/SLEPOS/system

function kp32()
{
    _kp $1 32
}

function kc32()
{
    _kc $1 32
}

function kb32()
{
    _kb $1 32
}

function kp()
{
    _kp $1 64
}

function kc()
{
    _kc $1 64
}

function kb()
{
    _kb $1 64
}

function _kp()
{
    cd $BASE_BUILD_DIR
    [ -d chroot/$1 ] && rm -rf chroot/$1

    arch_cmd=$(get_arch $2)
    $arch_cmd kiwi --prepare $1 --root chroot/$1
}

function _kc()
{
    cd $BASE_BUILD_DIR
    [ ! -d chroot/$1 ] && echo "Must run 'kp' first." && return

    arch_cmd=$(get_arch $2)
    $arch_cmd kiwi --yes --create chroot/$1 --destdir images/$1
}

function _kb()
{
    cd $BASE_BUILD_DIR

    arch_cmd=$(get_arch $2)
    $arch_cmd kiwi --yes -b $1 -d images/$1
}

function get_arch()
{
    arch_cmd=""
    [ $1 -eq 32 ] && arch_cmd="linux32"
    echo $arch_cmd
}

