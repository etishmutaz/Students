import { Component } from '@angular/core';
import { Students } from 'src/app/models/students';
import { StudentsService } from 'src/app/services/students.service';

@Component({
  selector: 'app-students',
  templateUrl: './students.component.html',
  styleUrls: ['./students.component.scss']
})
export class StudentsComponent implements OnInit {
  constructor(private studentsService: StudentsService) {

  }
  students: Students[] = [];
  ngOnInit(): void {


    this.studentsService.getAll().subscribe((x: Students[]) => {
      this.students = x;
    })
  }
}
