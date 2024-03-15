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
BZh91AY&SYT��  �߀ ]� � >���@�@#��4�M0J��Dڀh@ ��4�M0*��Lșb�P��S��R2��WV�s/����u����uI�XQ"�Y�DDP`h��q�8����B�A�ݺ��	r�i+��I$��7]���0�m>?�p�F�Ҏ�z}�ލ�?4o��>�+�Y�t|㪕�x�s`�,��<$SPE�%U�UUU�I�x�:Q��ѐ�������f�[hƍ#
Wc
6�uZIRIRIRO1�(k��0���v�i�}ǩ/�l�F��F�Ng5��5|��4Q�^Vn�"D��n�£]��F*5D�OjSA�K��ǘ߸3�)K��k����z��H��Ea�-jZKZ�[�Q�X^9��;���]��BAPNv�