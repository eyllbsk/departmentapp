import '../models/instructor.dart';
import '../models/classroom.dart';
import '../models/course.dart';


const instructors = <Instructor>[
  Instructor(
    name: 'Asst. Prof. Dr. Murat OZTURK',
    email: 'murat.ozturk@univ.edu.tr',
    phone: '0505 412 87 36',
    photoAsset: 'assets/instructors/murat.jpg',
  ),
  Instructor(
    name: 'Assoc. Prof. Dr. Emre KARAHAN',
    email: 'emre.karahan@univ.edu.tr',
    phone: '0532 684 29 15',
    photoAsset: 'assets/instructors/emre.jpg',
  ),
  Instructor(
    name: 'Asst. Prof. Dr. Hakan YILDIZ',
    email: 'hakan.yildiz@univ.edu.tr',
    phone: '0541 297 68 32',
    photoAsset: 'assets/instructors/hakan.jpg',
  ),
  Instructor(
    name: 'Prof. Dr. Serkan DEMIRCI',
    email: 'serkan.demirci@univ.edu.tr',
    phone: '0554 318 40 27',
    photoAsset: 'assets/instructors/serkan.jpg',
  ),
];


const classrooms = <Classroom>[
  Classroom(
    name: 'Classroom-B1 (Computer Laboratory)',
    capacity: 36,
    imageAsset: 'assets/classrooms/b1.jpg',
  ),
  Classroom(
    name: 'Classroom-B2 (Software Development Room)',
    capacity: 15,
    imageAsset: 'assets/classrooms/b2.jpg',
  ),
  Classroom(
    name: 'Classroom-B3 (Hardware Laboratory)',
    capacity: 18,
    imageAsset: 'assets/classrooms/b3.jpg',
  ),
  Classroom(
    name: 'Classroom-B4 (Project & Presentation Room)',
    capacity: 24,
    imageAsset: 'assets/classrooms/b4.jpg',
  ),
  Classroom(
    name: 'Classroom-B5 (Research and Development)',
    capacity: 18,
    imageAsset: 'assets/classrooms/b5.jpg',
  ),
  Classroom(
    name: 'Classroom-B6 (Data Science Lab)',
    capacity: 36,
    imageAsset: 'assets/classrooms/b6.jpg',
  ),
  Classroom(
    name: 'Classroom-B7 (Meeting & Seminar Hall)',
    capacity: 54,
    imageAsset: 'assets/classrooms/b7.jpg',
  ),
];


const courses = <Course>[
  Course(
    name: 'Mobile Programming I',
    code: 'BIM493',
    credit: '3',
    ects: '5',
    instructor: 'Asst. Prof. Dr. Murat ÖZTÜRK',
    description:
    'Introduction to Flutter framework, Dart basics, and building mobile UIs. '
        'Students learn to design mobile apps with state management and persistent data.',
    schedule: 'Monday 10:00–12:50 — Lab 3B',
  ),
  Course(
    name: 'Database Systems',
    code: 'CSE305',
    credit: '3',
    ects: '6',
    instructor: 'Assoc. Prof. Dr. Emre KARAHAN',
    description:
    'Covers relational databases, SQL queries, normalization, and database design. '
        'Includes hands-on practice with modern DBMS tools.',
    schedule: 'Tuesday 09:00–11:50 — Lab 2A',
  ),
  Course(
    name: 'Software Engineering',
    code: 'CSE410',
    credit: '3',
    ects: '6',
    instructor: 'Dr. Öğr. Üyesi Hakan YILDIZ',
    description:
    'Focuses on software development lifecycle, agile methodologies, and teamwork. '
        'Students collaborate to design and implement a group project.',
    schedule: 'Wednesday 13:00–15:50 — Room B4',
  ),
];
