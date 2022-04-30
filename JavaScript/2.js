// 1. Скрипт должен на вход принимать строку.
//  2. После проверки строки выводить в консоль сообщение где будет конкретно написано, что не так в ведённой строке.
function line(type){

if (typeof type == 'string'){

     // 3. Минимум 5 символов в строке
     if (type.length >=5){}
    else console.log('length <5')
    // 4. Максимум 64 символа в строке 
    if (type.length <=64){}
    else console.log('length >64')
    // 5. В строке должны быть буквы
    if (/[A-Za-zA-Яа-я]/.test(type)){ }
    else console.log('add_letters')
    // 6. Должна быть хотя бы одна буква в верхнем регистре
    if (/[A-ZА-Я]/.test(type)){ }
    else console.log('add_uppcase_latters')
    // 7. Должна быть хотя бы одна цифра
    if (/[0-9]/.test(type)){ }
    else console.log('add_numbers')
    // 8. Должна быть хотя бы одна @
    if (type.includes('@')){ }
    else console.log('add_@')
    // 9. Строка не должна быть пустой
    if (type.length >0){}
    else console.log('empty_line')

}

else  console.log('type_not_string')
}
line()