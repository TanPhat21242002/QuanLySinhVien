package net.javaguides.sms.controller;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.beans.factory.annotation.Autowired;

import net.javaguides.sms.entity.Student;
import net.javaguides.sms.repository.StudentRepository;

@RestController
@RequestMapping("/api/students")
public class StudentRestController {
	
	@Autowired
	private StudentRepository studentRepository;
	// Get all students
	@GetMapping
	public List<Student> getAllStudents(){
		return this.studentRepository.findAll();
	}
	// Get Student by id
	@GetMapping("/{id}")
	public Student getStudentById(@PathVariable (value = "id") long studentId) {
		return this.studentRepository.findById(studentId).orElse(null);
	}
	// create student
	@PostMapping
	public Student createStudent(@RequestBody Student student) {
		return this.studentRepository.save(student);
	}
	// update student
	@PutMapping("/{id}")
	public Student updateStudent(@RequestBody Student student,@PathVariable ("id") long studentId) {
		Student existingStudent = this.studentRepository.findById(studentId).orElse(null);
		existingStudent.setFirstName(student.getFirstName());
		existingStudent.setLastName(student.getLastName());
		existingStudent.setEmail(student.getEmail());
		return this.studentRepository.save(existingStudent);
	}
	// delete student
	@DeleteMapping("/{id}")
	public ResponseEntity<Student> deleteStudent(@PathVariable ("id") long studentId){
		Student existingStudent = this.studentRepository.findById(studentId).orElse(null);
		this.studentRepository.delete(existingStudent);
		return ResponseEntity.ok().build();
	}
}
