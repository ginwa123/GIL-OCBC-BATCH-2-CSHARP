import { Injectable } from '@angular/core'
import { Observable, of } from 'rxjs'
import { PRODUCT, Product } from '../models/product'

@Injectable({
  providedIn: 'root'
})
export class ProductService {



  constructor() { }

  getProducts() {
    const products = of(PRODUCT)
    const aaa = 1231
    console.log("fetched list of products")
    console.log("adasdsa")
    console.log("sadsa")
    return products
  }

}
