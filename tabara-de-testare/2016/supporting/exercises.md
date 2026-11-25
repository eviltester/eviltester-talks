# Exercises

## Frameworks

Do you use any off the shelf frameworks?

* Evaluate them and see if you could achieve the same ends with a more basic setup
* Do you rely on the framework for everything?
* What %age of your automated execution has the framework infiltrated? That is the amount of 'stuff' that you have 'at risk' if the framework fails you


Have you built a framework?

* For the code you have written to support your automated execution, how much of it forces you to work in a certain way, and how much of it can you plug together and use independently?
* Are there automated paths you are not executing because your framework stops you?

## Intermittent Tests

* If you have intermittent tests have you examined them for synchronisation issues or do you accept their failure as random?
* What stops you addressing the intermittency and treating it as a real problem?

## Automated Support for Interactive Exploration

* Do you use your automated abstractions to support your manual interactive exploration?
* If not - why not? The value of this is immense

## Data Variation

* Evaluate your test code, how much of it is 'the same path' with hard coded data?
* Is the hard coded data 'invariant' data i.e. it controls the path, or is it 'variant' data (the path does not depend on it). If the hard coded data is not variant, investigate how you could randomise it across an equivalence class.

## Automation

* Write down a description of your automation approach and how you automate
* Now re-write it without using the word 'automation'. Is it any clearer? Did it expose any gaps in your strategy?
* Try going all day without using the word 'automation'
