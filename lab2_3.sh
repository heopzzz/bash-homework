#!/bin/bash
clear

echo "------------------------------------------------------"
echo "3. Дано известное высказывание Уоррена Баффетта"
echo "BUFFETT=\"Life is like a snowball. The important thing is finding wet snow and a really long hill.\""
echo ""
echo "Произвести со строкой BUFFETT следующие манипуляции:"
echo "1) Заменить первое 'snow' на 'foot'"
echo "2) Удалить второе 'snow'"
echo "3) Заменить 'finding' на 'getting'"
echo "4) Удалить все символы, следующие после слова 'wet'"
echo "------------------------------------------------------"
buffet="Life is like a snowball. The important thing is finding wet snow and a really long hill."
echo "0) $buffet"
echo "------------------------------------------------------"

buffet=${buffet/snow/foot}
echo "1) $buffet"

buffet=${buffet//snow}
echo "2) $buffet"

buffet=${buffet/finding/getting}
echo "3) $buffet"

buffet=${buffet%%wet*}
echo "4) $buffet"

echo "------------------------------------------------------"
echo "Have a good day!"
echo "------------------------------------------------------"
