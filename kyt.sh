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
BZh91AY&SY<��t  ��� }���oޮ����    P����pEQ�����L��4�  4P   �3D��A��   @ �� "�hAO�M�H�z L��i��h
�U   �  4    I I��d4Ч�)����h2z�A��M�[i�4���|�'sV��ݞ00Bp��ε��#L����'��QU;�ITĥ���N=��(��������A�M�X��N���+��1)}�fڟB�W�����h;^ɦ+�ۍ�Xt��rO߂�
ֶ�^�#����|�)=�3FІ���P�m����b٪qE���ډ!�Thy!#be��iy�C�,�����>�aG��|�=���� �C����,(�`�w-�� (,hة�9�sA�3�/�:z�KĚ��
A�P�����賃�幊#G�bE|v���HM����\��g�@!��޶	"���	�͕��� ��2	�d󉶙5�RY�+�_��`�	�z&�J����JG��:��E�A��8D���8t���b�.\Z�(1���x)���c &\�IRU�M�x�S�4�>ɏلu�s����\��$~A�L~m��4��?�+��G~��*cŦn�XXʹvq��As2�Ī3�ȁ2�bl�X�EZ�MC�����km`-��+��]�p��2@�q=��
11��C&81�c�-u
E�k���3ǘ"�Z�����m�Fk�ښ���p�qM����{XynM�aш��p�,�Oy1�v���,Xe8L˱^��K�1�m�k��v�`F��VwB,8eFU�����<��p.A=����F�	PU~���,ىiI��R��##��AJdV�y㌄Bv���S
wJM���x/�4�2���H�P��v�DcY;�f��s��V��TL˥0Y>�yfN
�9�A�^(h�
l���` �	��砿ײq☟M$!� )V�b.��9>� ��0 ��w$S�	�L�@