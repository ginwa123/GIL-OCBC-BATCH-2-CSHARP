import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import { DummyModModule } from './dummy-mod/dummy-mod.module';
import { MediaComponent } from './dummy-mod/media/media.component';
import { NoencapsulaionComponent } from './noencapsulaion/noencapsulaion.component';
import { EncapsulationComponent } from './encapsulation/encapsulation.component';
import { ShadowdomencapsulationComponent } from './shadowdomencapsulation/shadowdomencapsulation.component';


@NgModule({
  declarations: [
    AppComponent,
    NoencapsulaionComponent,
    EncapsulationComponent,
    ShadowdomencapsulationComponent
  ],
  imports: [
    BrowserModule,
    DummyModModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
