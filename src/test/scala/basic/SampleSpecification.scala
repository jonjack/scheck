package basic

import org.scalacheck.Properties
import org.scalacheck.Prop.forAll
import org.scalacheck.Prop._

object SampleSpecification extends Properties("A sample test specification") {

  property("testList") = forAll { (l1: List[Int], l2: List[Int]) =>
    l1.size + l2.size == (l1 ::: l2).size
  }

  /**
   * See https://github.com/oscarrenalias/scalacheck-cookbook/blob/master/markdown/analyzing-test-data.md
   */
  property("Check concatenated string") = forAll { (a:String, b:String) =>
    collect(a, b) {
      a.concat(b) == a + b
    }
  }

}