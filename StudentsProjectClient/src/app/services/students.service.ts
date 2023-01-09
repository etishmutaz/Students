import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Students } from '../models/students';

@Injectable({
  providedIn: 'root'
})
export class StudentsService {

  constructor(private http: HttpClient) { }
  getAll(): Observable<Students[]> {
    return this.http.get<Students[]>('GetStudents');
  }
  addStudent(student: Students): Observable<Students> {
    return this.http.post<Students>('AddStudent', student);
  }
}
