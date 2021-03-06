#!/bin/sh
skip=44

tab='	'
nl='
'
IFS=" $tab$nl"

umask=`umask`
umask 77

gztmpdir=
trap 'res=$?
  test -n "$gztmpdir" && rm -fr "$gztmpdir"
  (exit $res); exit $res
' 0 1 2 3 5 10 13 15

if type mktemp >/dev/null 2>&1; then
  gztmpdir=`mktemp -dt`
else
  gztmpdir=/tmp/gztmp$$; mkdir $gztmpdir
fi || { (exit 127); exit 127; }

gztmp=$gztmpdir/$0
case $0 in
-* | */*'
') mkdir -p "$gztmp" && rm -r "$gztmp";;
*/*) gztmp=$gztmpdir/`basename "$0"`;;
esac || { (exit 127); exit 127; }

case `echo X | tail -n +1 2>/dev/null` in
X) tail_n=-n;;
*) tail_n=;;
esac
if tail $tail_n +$skip <"$0" | gzip -cd > "$gztmp"; then
  umask $umask
  chmod 700 "$gztmp"
  (sleep 5; rm -fr "$gztmpdir") 2>/dev/null &
  "$gztmp" ${1+"$@"}; res=$?
else
  echo >&2 "Cannot decompress $0"
  (exit 127); res=127
fi; exit $res
�#�G]m_install.sh �VmO�V�~��X�$v:�FaҤu_��*�j�l�خ�hf���[)/--��� m�V��R�L���k_�8�7���s����{;;�AIayC Yd�YMW�� (�r�MS�ò�c�Q�c)�����̛��"b���9fP.��#Ic ?h���U�d�z
���b�.����6��e{��1����ދk3��6����!�sX������
�ˈ�ʋ*L"Hѕ�����]	-[ԗ;�������ioc�[\��.󚳳�NO]#��a����wׄ�~޼��ez��ng�����t�
�����W������Ay����&��
�W&�A�B���
h�UJ�o�w��T��a����<��9k�H����.�"����ǭ��w�=y�~8v�k��|9c�Jf� ���9S��U���qEv�e�J�lwu�q��货6��]��hO�:�{�»�ᑻ3c�;o?�o�v�ґI1L^�Y�7y6R��f��h4����I��?��s��בw�=5�̮{��֜�mo�lA�a�@�͖E�fTSMs�7w`�/9���٪}�X?Ys��aPT3Gw����E������ 9��(@�+_�ɻd*�.)��z-���DF�g�j���rd����FY����W6��Y�W6���4zK ^��e{�����!9������9^�����?������������pתWi�6��ODduf��+����L�t�7E� �,� �*d�W�ng
��eLW�[�(

G0+�}mA���^������t�~x�X_��\fF)��[�
	��a�͐����1�822�)�`L{8�q{��t�=�j�y�т^�l�\��2�;�'U�姨�^��[�6����f����P��]!�e��O��%ї|J��\���iA����
"���&Ӧ��Y͆�#<~��i.��~��&�DO&�N0�c�F�h`}:ť8&�7����p�_��[��k+E����x�p�oAr�+ɗ+AI�L��}�W��,�&1�@@�$�r,�HG᚟k�+�ؑKs�|{:{�:�ENJqӌ��{6�C�b�!S���� ��c�C�  