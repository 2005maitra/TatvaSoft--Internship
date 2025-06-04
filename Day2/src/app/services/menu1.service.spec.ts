import { TestBed } from '@angular/core/testing';

import { Menu1Service } from './menu1.service';

describe('Menu1Service', () => {
  let service: Menu1Service;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(Menu1Service);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
