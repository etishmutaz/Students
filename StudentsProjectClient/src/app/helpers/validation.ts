import { AbstractControl, FormControl, ValidatorFn, Validators } from '@angular/forms';


export class validation {


    static resources = {
        regularExpressions: {
            numbers: '^[0-9]+$',
            Letters: '/^[a-z\u0590-\u05fe]+$/i',
            hebrew: /^[\/א-ת ]*$/,
        }
    }


    static validationMessages = {
        name: [{
            required: 'שדה חובה: שם פרטי ושם משפחה',
            pattern: 'בשדה זה יש להזין אותיות בעברית בלבד',
            maxLength: 'מקסימום 20 אותיות'
        }],
    }


    static NameValidators = [
        Validators.required,
        Validators.pattern(validation.resources.regularExpressions.hebrew),
        Validators.maxLength(20)
    ];





    static checkVal(valueID: any) {
        return (isNaN(valueID) || Number(valueID) <= 0 || valueID.length > 9);
    }

    static isValidID(valueID: any) {
        if (this.checkVal(valueID)) {
            return false;
        }
        var sum = 0;
        var arrChars = valueID.split('');
        for (var i = 0; i < arrChars.length; i++) {
            var temp = Number(arrChars[i]) * ((i % 2) + 1);
            sum += Math.floor(temp / 10) + temp % 10;
        }
        return (sum % 10) === 0;
    }

    static isValidIsraeliID() {
        return (control: FormControl): { [key: string]: boolean } | null => {
            if (!control.value) {
                return null;
            }
            if (!this.isValidID(control.value)) {
                return { 'isValid': true }
            }
            return null;
        };
    }





    getNameError(error: any, nameControle: string) {
        for (let e in error) {
            if (error[e]) {
                return validation.validationMessages.name[e];
            }
        }
    }







}