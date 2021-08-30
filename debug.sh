# export LD_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu
INSTALL_PATH=$HOME/local
LIB_PATH=$HOME/local/lib

# make clean
# sudo make uninstall 

make clean
make uninstall 

# --with-extdict-ru 
# --with-extdict-zh --with-extdict-zhy   # useless
./autogen.sh
./configure --with-extdict-cmn  --prefix $INSTALL_PATH
make cmn
make LIBDIR=$LIB_PATH install
echo "ㄅㄆㄇㄈㄉㄊㄋㄌㄎㄍㄏㄐㄑㄒㄗㄘㄙㄓㄔㄕㄖ我愛羅" | phonemize -l cmn
# po5̄ pʰo5̄ mo5̄ fo5̄ tə5̄ tʰə5̄ nə5̄ lə5̄ kʰo5̄ ko5̄ xo5̄ tɕi5̄ tɕʰi5̄ ɕi5̄ tsɨɨ̄ tsʰɨɨ̄ sɨɨ̄ ʈʂi.5̄ ʈʂʰi.5̄ ʂi.5̄ ʐi.5̄ wo5̌ ai5̀

# Can't read dictionary file: '/home/jrm/github/testtt/espeak-ng/espeak-ng-data/cmn_dict' 

# zcs

# # Test installation
# find /usr/lib | grep libespeak-ng  # doesn't mean it's installed...
# echo "一" | phonemize -l cmn


# /usr/local/bin/espeak
# /usr/local/bin/espeak-ng


# After modifying ph_cmn
# tʰə5 tə5 kʰo5 ko5 tɕi5 tɕʰi5 tsi̪5 tshi̪5 ts.i.5 ts.hi.5 s.i.5i.5

# phoneme i[ //after ts tsh s
#   vwl  starttype #i  endtype #i
#   length 250
#   ipa ɨ
#   FMT(vowel/i#_7)
# endphoneme
# # Gives:
# #   po5 pʰo5 mo5 fo5 tə5 tʰə5 nə5 lə5 kʰo5 ko5 xo5 tɕi5 tɕʰi5 ɕi5 tsɨɨ tsʰɨɨ sɨɨ ʈʂi.5 ʈʂʰi.5 ʂi.5 ʐi.5   


# Issue
# 1. i cannot be transcribed into IPA i- correctly (thy will duplicate)
# 2. additional tones pop out regardless


# Knonw
# 1. number digits can only be assumed for tones


# # WTF?
# espeak-ng -X -v cmn ㄅㄆ
# Found: 'ㄅ' [poV]
# Found: 'ㄆ' [phoV]
# p'o55V_| ph'o55V_|
