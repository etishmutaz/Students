import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AddStudentComponent } from './components/add-student/add-student.component';
import { StudentsComponent } from './components/students/students.component';

const routes: Routes = [ {
  path: '',
  component: StudentsComponent,
  pathMatch: 'full'
},
{ path: 'students', component: StudentsComponent },
{ path: 'add-student', component: AddStudentComponent }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
