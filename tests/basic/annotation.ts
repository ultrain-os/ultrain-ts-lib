import { Contract } from "../../src/contract";

class Car implements Serializable {
  @primaryid
  uid: id_type;
  name: string;
  year: i32;

  toString(): string {
    return "name: " + this.name + ". year: " + this.year.toString();
  }
}


class TestAnnotation extends Contract {

}