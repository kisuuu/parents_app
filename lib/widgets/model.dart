class Student {
  String? teacherName;
  String? subjectName;
  String? dueDate;
  String? postingDate;
  String? instruction;
  String? assignmentTitle;

  Student({
    this.teacherName,
    this.subjectName,
    this.dueDate,
    this.postingDate,
    this.instruction,
    this.assignmentTitle,
  });
}

List<Student> allStudent = [
  Student(
    teacherName: "Mrs. Shalini Gupta",
    subjectName: 'EVS',
    dueDate: '30 April 2022',
    postingDate: 'Friday 22 April',
    assignmentTitle: 'EVS Journal',
    instruction:
        '1. Lorem Ipsum is simply dummy text\n2. Lorem Ipsum is simply dummy text\n3. Lorem Ipsum is simply dummy text',
  ),
  Student(
    teacherName: "Mrs. sai khot",
    subjectName: 'Maths',
    dueDate: '30 April 2022',
    postingDate: 'Friday 22 April',
    assignmentTitle: 'EVS Journal',
    instruction:
        '1. Lorem Ipsum is simply dummy text\n2. Lorem Ipsum is simply dummy text\n3. Lorem Ipsum is simply dummy text',
  ),
  Student(
    teacherName: "Mrs. kishan poriya",
    subjectName: 'English',
    dueDate: '30 April 2022',
    postingDate: 'Friday 22 April',
    assignmentTitle: 'EVS Journal',
    instruction:
        '1. Lorem Ipsum is simply dummy text\n2. Lorem Ipsum is simply dummy text\n3. Lorem Ipsum is simply dummy text',
  ),
  Student(
    teacherName: "Mrs. Shal Gupta",
    subjectName: 'Science',
    dueDate: '30 April 2022',
    assignmentTitle: 'EVS Journal',
    postingDate: 'Friday 22 April',
    instruction:
        '1. Lorem Ipsum is simply dummy text\n2. Lorem Ipsum is simply dummy text\n3. Lorem Ipsum is simply dummy text',
  ),
];
