import { Component, OnInit } from '@angular/core';
import { Product } from '../models/product';
import { ProductService } from '../services/product.service';

@Component({
  selector: 'app-products',
  templateUrl: './products.component.html',
  styleUrls: ['./products.component.css']
})
export class ProductsComponent implements OnInit {
  constructor(private service: ProductService) {
    
  }
  ngOnInit(): void {
    this.service.getProducts().subscribe(
      data => {
        this.products = data
      },
      error => {
        
      },
      () => {
        
      }
    )
  }
  products: Product[] = []
}
