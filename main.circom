// define the circum compiler/language version
pragma circom 2.0.3;

// templates define a blueprint for a circuit object
// that can be instantiated in other templates or components.
template Multiplier2(){
   // two private input signals
   signal input in1;
   signal input in2;

   // a single output signal
   signal output out;

   // the value of the output signal is
   // the product of the two input signals
   out <== in1 * in2;

   // print debug output
   log(out);
}

component main {public [in1,in2]} = Multiplier2();

/* INPUT = {
    "in1": "5",
    "in2": "11"
} */
