import org.scalacheck.Properties
import org.scalacheck.Prop.forAll

object SampleSpecification extends Properties("A sample test specification") {

  property("testList") = forAll { (l1: List[Int], l2: List[Int]) =>
    l1.size + l2.size == (l1 ::: l2).size
  }

  property("Check concatenated string") = forAll { (a:String, b:String) =>
    a.concat(b) == a + b}

}