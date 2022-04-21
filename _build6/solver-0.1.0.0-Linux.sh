#!/bin/sh

# Display usage
cpack_usage()
{
  cat <<EOF
Usage: $0 [options]
Options: [defaults in brackets after descriptions]
  --help            print this message
  --version         print cmake installer version
  --prefix=dir      directory in which to install
  --include-subdir  include the solver-0.1.0.0-Linux subdirectory
  --exclude-subdir  exclude the solver-0.1.0.0-Linux subdirectory
  --skip-license    accept license
EOF
  exit 1
}

cpack_echo_exit()
{
  echo $1
  exit 1
}

# Display version
cpack_version()
{
  echo "solver Installer Version: 0.1.0.0, Copyright (c) Humanity"
}

# Helper function to fix windows paths.
cpack_fix_slashes ()
{
  echo "$1" | sed 's/\\/\//g'
}

interactive=TRUE
cpack_skip_license=FALSE
cpack_include_subdir=""
for a in "$@"; do
  if echo $a | grep "^--prefix=" > /dev/null 2> /dev/null; then
    cpack_prefix_dir=`echo $a | sed "s/^--prefix=//"`
    cpack_prefix_dir=`cpack_fix_slashes "${cpack_prefix_dir}"`
  fi
  if echo $a | grep "^--help" > /dev/null 2> /dev/null; then
    cpack_usage
  fi
  if echo $a | grep "^--version" > /dev/null 2> /dev/null; then
    cpack_version
    exit 2
  fi
  if echo $a | grep "^--include-subdir" > /dev/null 2> /dev/null; then
    cpack_include_subdir=TRUE
  fi
  if echo $a | grep "^--exclude-subdir" > /dev/null 2> /dev/null; then
    cpack_include_subdir=FALSE
  fi
  if echo $a | grep "^--skip-license" > /dev/null 2> /dev/null; then
    cpack_skip_license=TRUE
  fi
done

if [ "x${cpack_include_subdir}x" != "xx" -o "x${cpack_skip_license}x" = "xTRUEx" ]
then
  interactive=FALSE
fi

cpack_version
echo "This is a self-extracting archive."
toplevel="`pwd`"
if [ "x${cpack_prefix_dir}x" != "xx" ]
then
  toplevel="${cpack_prefix_dir}"
fi

echo "The archive will be extracted to: ${toplevel}"

if [ "x${interactive}x" = "xTRUEx" ]
then
  echo ""
  echo "If you want to stop extracting, please press <ctrl-C>."

  if [ "x${cpack_skip_license}x" != "xTRUEx" ]
  then
    more << '____cpack__here_doc____'
LICENSE
=======

This is an installer created using CPack (https://cmake.org). No license provided.


____cpack__here_doc____
    echo
    while true
      do
        echo "Do you accept the license? [yn]: "
        read line leftover
        case ${line} in
          y* | Y*)
            cpack_license_accepted=TRUE
            break;;
          n* | N* | q* | Q* | e* | E*)
            echo "License not accepted. Exiting ..."
            exit 1;;
        esac
      done
  fi

  if [ "x${cpack_include_subdir}x" = "xx" ]
  then
    echo "By default the solver will be installed in:"
    echo "  \"${toplevel}/solver-0.1.0.0-Linux\""
    echo "Do you want to include the subdirectory solver-0.1.0.0-Linux?"
    echo "Saying no will install in: \"${toplevel}\" [Yn]: "
    read line leftover
    cpack_include_subdir=TRUE
    case ${line} in
      n* | N*)
        cpack_include_subdir=FALSE
    esac
  fi
fi

if [ "x${cpack_include_subdir}x" = "xTRUEx" ]
then
  toplevel="${toplevel}/solver-0.1.0.0-Linux"
  mkdir -p "${toplevel}"
fi
echo
echo "Using target directory: ${toplevel}"
echo "Extracting, please wait..."
echo ""

# take the archive portion of this file and pipe it to tar
# the NUMERIC parameter in this command should be one more
# than the number of lines in this header file
# there are tails which don't understand the "-n" argument, e.g. on SunOS
# OTOH there are tails which complain when not using the "-n" argument (e.g. GNU)
# so at first try to tail some file to see if tail fails if used with "-n"
# if so, don't use "-n"
use_new_tail_syntax="-n"
tail $use_new_tail_syntax +1 "$0" > /dev/null 2> /dev/null || use_new_tail_syntax=""

extractor="pax -r"
command -v pax > /dev/null 2> /dev/null || extractor="tar xf -"

tail $use_new_tail_syntax +155 "$0" | gunzip | (cd "${toplevel}" && ${extractor}) || cpack_echo_exit "Problem unpacking the solver-0.1.0.0-Linux"

echo "Unpacking finished successfully"

exit 0
#-----------------------------------------------------------
#      Start of TAR.GZ file
#-----------------------------------------------------------;
� 6�ab �Zmo�H�3�aDO�}!��)%|@ג;��z�I��7�W��zi����[�cCz�=?xٗٵggf�1�;���a��Sl���i�h���*����B���$� )���Ⱥ\��l�£&aK�b��~y��}��/��e��|^��yh��]������$UW�.`��tE��P��9����v���F���G	2g��z���n>�dfR��Z�'�dS�w��F;f&v8�Qjԁ�a�L� �<Y3��XQMX�Q����\^���k�Y��p�R̈YJkr(y�z���9��X-&�}$~5$��1.�]�4��p���{Z�sK���sK[K����٠5�r�����["�%G��|�6Nɔ�mbR.)?,D�	�s��T�1ţ��w�A��)���ދ� y�_R����%Y��x��o�QK�i��q��@���%\Y���`�<���H�$�:���������~Fd�����>`�zm���̑g��.�������)���k��m̰�g��A��ds������m������Y�KnV�!�u?^��3��>�wW���5�"�������{�p3`�M���1�#�އ������Gl��Q#�M��lQ�`�e��~�����S����7�3no�ݞq�>��ۉ��[@�2o1�E?r�����?�������L��9zo%5� ���'�̑�9��iz����wsb�g&����B~'֗ɪ���#�y�("�gO�_���?I��*�+	�GtNQ�����*�����_��M��)���ŕv:�����`����4�_]lG�ZD��b�/.XQ�(��⢔f	m� n���V2��z���p6t@�2`tB�o��\��ƞE0;��4�ӜX@�q'#6���P��y8N�Wh���9���0Ԭ�s�K"��E1��+�T�?� }��]���~����'˒^������4o�s��YL�U��_)xC�����D�_e�?���-��e=��DY�%I��?A�+�/������~^ lb�w�����Ơ6���"Y�\�ϼ��E�����%���H�������<ن���z�H0C3��61��
�%&=S�B�
{ÿ�D� 0  