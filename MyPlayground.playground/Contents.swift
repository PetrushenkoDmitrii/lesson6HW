import UIKit

var greeting = "Hello, playground"
    


typealias Student = (name: String, age: Int, marks: [String: Int], facultative: Set<String>)
let students: [Student] = [
    ("Elik", 19, marks: ["math": 8, "physics": 7, "history": 6], facultative: ["music", "dancing", "swimming"]),
    ("Lera", 21, marks: ["math": 4, "physics": 5, "history": 9], facultative: ["dancing", "swimming"]),
    ("Vlad", 20, marks: ["math": 8, "physics": 10, "history": 10], facultative: ["music", "football"]),
    ("Kirill", 18, marks: [:], facultative: ["music"]),
    ("Anna", 21, marks: ["math": 7, "physics": 8, "history": 2], facultative: ["ballet"])
]


func calculateAverageGrade(student: Student) -> Double? {
    if student.marks.isEmpty {
        return nil
    } else {
        var sum = 0
        for (_, value) in student.marks {
            sum += value
        }
        return Double(sum) / Double(student.marks.count)
    }
}


for student in students {
    if let averageGrade = calculateAverageGrade(student: student) {
        print("\(student.name) имеет среднюю оценку: \(averageGrade)")
    } else {
        print("\(student.name) не имеет оценок")
    }
}
  

func findStudentsByAge(students: [Student], age: Int) -> [Student] {
    return students.filter { $0.age == age }
}
print(findStudentsByAge(students: students , age: 19))



func getTopStudents(students: [Student], top: Int) -> [(name: String, averageGrade: Double)] {
    let studentsWithMarks = students.filter { !$0.marks.isEmpty }
    let studentsWithAverageGrade = studentsWithMarks.map { student in
        let average = calculateAverageGrade(student: student)
        return (name: student.name, averageGrade: average ?? 0.0)
    }
    let topStudents = studentsWithAverageGrade.sorted { $0.averageGrade > $1.averageGrade }
    return Array(topStudents.prefix(top))
}
print(getTopStudents(students: students, top: 3))

func  getUniqueOptionalSubjects(students: [Student]) -> Set<String> {
    let allFacultative = students.flatMap { $0.facultative }
    // TODO: Названия переменных всегда с маленькой буквы
    let UniqueFacultative = Set(allFacultative)
    return UniqueFacultative
}

print(getUniqueOptionalSubjects(students: students))
