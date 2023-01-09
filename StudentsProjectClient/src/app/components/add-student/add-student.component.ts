import { Component } from '@angular/core';
import { validation } from 'src/app/helpers/validation';
import { City } from 'src/app/models/city';
import { Students } from 'src/app/models/students';
import { CityService } from 'src/app/services/city.service';
import { StudentsService } from 'src/app/services/students.service';
@Component({
  selector: 'app-add-student',
  templateUrl: './add-student.component.html',
  styleUrls: ['./add-student.component.scss']
})
export class AddStudentComponent implements OnInit {
  cities: City[] = [];
  constructor(private studentsService: StudentsService,
    private cityService: CityService) {

  }
  studentsForm = new FormGroup(
    {
      FirstName: new FormControl(
        '',
        Validators.compose([
          Validators.required,
          Validators.maxLength(20),
          Validators.pattern(
            validation.resources.regularExpressions.hebrew
          ),
        ])
      ),
      LastName: new FormControl(
        '',
        Validators.compose([
          Validators.required,
          Validators.maxLength(20),
          Validators.pattern(
            validation.resources.regularExpressions.hebrew
          ),
        ])
      ),
      DateOfBitrh: new FormControl(
        new Date().toISOString().substring(0, 16),
        Validators.compose([
          Validators.required

        ])
      ),
      IsraelID: new FormControl(
        '',
        Validators.compose([
          Validators.required,
          validation.isValidIsraeliID(),
        ])
      ),
      CityID: new FormControl(
        '',
        Validators.compose([
          Validators.required
        ])
      ),
    }

  )
  ngOnInit(): void {
    this.cityService.getAll().subscribe((X: City[]) => { this.cities = X; })

  }
  save() {
    const s = <Students>this.studentsForm.value;
    this.studentsService.addStudent(s).subscribe((X: Students) => {
      if (X && X.Id !== 0) {
        Swal.fire('', 'השמירה בוצעה בהצלחה', 'success');

      }
    })

  }

}
