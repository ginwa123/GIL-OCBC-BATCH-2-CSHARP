import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'customfilesize'
})
export class CustomfilesizePipe implements PipeTransform {

  transform(value: number, extension: string = "MB"): unknown {
    return `${(value / 1024 * 1024).toFixed(2)} ${extension}`
  }

}
