#LESSON6HW

     Вам предстоит разработать систему для обработки данных о студентах. Система должна уметь:

     1.  Хранить информацию о студентах: Для каждого студента необходимо хранить следующую информацию:
         *   Имя (String)
         *   Возраст (Int)
         *   Оценки по предметам (Dictionary, где ключ - название предмета (String), значение - оценка (Int))
         *   Набор (Set) посещенных факультативов (String)

         Используйте кортеж для представления данных об одном студенте: (name: String, age: Int, grades: [String: Double], optionalSubjects: Set<String>)

     2.  Создать массив студентов: Создайте массив, содержащий данные о нескольких студентах (минимум 5).

     3.  Реализовать функции для обработки данных:
         *   calculateAverageGrade(student: Student) -> Double?: Функция должна принимать кортеж студента и возвращать его средний балл по всем предметам. Если у студента нет оценок, функция должна вернуть nil.

         *   findStudentsByAge(students: [Student], age: Int) -> [Student]: Функция должна принимать массив студентов и возраст, и возвращать новый массив, содержащий только студентов указанного возраста. Используйте функцию высшего порядка filter.

         *   getTopStudents(students: [Student], top: Int) -> [(name: String, averageGrade: Double)]: Функция должна принимать массив студентов и количество "top", и возвращать массив кортежей (name: String, averageGrade: Double), содержащий информацию о "top" лучших студентах по среднему баллу.  Используйте функции высшего порядка map, filter, sorted и prefix. Если для каких-то студентов не удалось вычислить средний балл (отсутствуют оценки) - их учитывать не нужно.

         *   getUniqueOptionalSubjects(students: [Student]) -> Set<String>:  Функция должна принимать массив студентов и возвращать множество, содержащее все уникальные названия факультативов, которые посещают студенты из массива. Используйте функцию высшего порядка reduce или flatMap.

     4.  Вывести результаты: Выведите на консоль:

         *   Информацию о всех студентах (имя, возраст, средний балл, посещаемые факультативы).
         *   Список студентов определенного возраста (например, 20 лет).
         *   Список топ-3 лучших студентов по среднему баллу.
         *   Список всех уникальных факультативов, посещаемых студентами.

     Бонус:
     •  Реализуйте функцию, которая будет находить студента с самым большим количеством посещаемых факультативов.
     
