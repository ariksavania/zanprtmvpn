#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY�l�  ���E����?�ޮ����    @�d�[I�=4S� �4)�����i�4�d��i Љ���؞���h�   h M �44���@@1# H���M�O�i�z�)臩�S�4�OP������@�"(������N��R$��,�y/�Y�V?�� �ؙ�-���@*P��rK�X���*,V��Q3W=	���!�( �ԨOP�䱣5�����e/�q8�ֆ���j�
6!X�F�]̐��*Ȧ���]�MU�[mZ�s�6
���'����6����p|2��~!�#u2��XV܍Z8����^���s?&�����AX+٥�*��nN�
Rk<�!5{;!נ\ߝ��[�,d�{�Y����LHHa($���5����O*�"0A��Q� �m{bM��1���Ii�!t��GG-�G�;lE{}�3�D��P]xHNwR�2�d�q���?�>�.�%2S��~2��BBS0WlyY�;�M�ąN 31���`�h]��M�H���#; ��ǚ�cnY�ҭ�P�fA�������2g&AM�]HC�d��Y��p�.��! /J��*HV�0w[�ǸXa�%���m�|Ʉ�Ofc`ȳFR�!q.E��lFNItL?3�h�`f� p�8�(ǀ�o�����)s�l�fc�u�"���T��T�k�`�N�|�A;�kW+$�*� 0X��(�ʹ�<L)y���uqh���B�$:��G��0���$��҅�4EJ�ie
�em�����1,���E� �ܜ��j�z������X�1��I��ZRU/���)�[e@�