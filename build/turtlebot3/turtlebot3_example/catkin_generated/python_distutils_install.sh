#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/stass/StassLea_FYP/src/turtlebot3/turtlebot3_example"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/stass/StassLea_FYP/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/stass/StassLea_FYP/install/lib/python2.7/dist-packages:/home/stass/StassLea_FYP/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/stass/StassLea_FYP/build" \
    "/usr/bin/python2" \
    "/home/stass/StassLea_FYP/src/turtlebot3/turtlebot3_example/setup.py" \
     \
    build --build-base "/home/stass/StassLea_FYP/build/turtlebot3/turtlebot3_example" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/stass/StassLea_FYP/install" --install-scripts="/home/stass/StassLea_FYP/install/bin"
