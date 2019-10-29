# Coverage
Coverage information -> coverage analysis tool -> coverage reports (read by humans)
## Why coverage?
- simulation is based on limited execution samples
-- cannot run all possible scenarios
-- need to know that all (important) areas of the DUV are verified
- identify features (of the spec and implementation)

## Coverage goals
- measure the quality of a set of tests - gives ability to see what has not been verified
- coverage completeness does not imply functional correctness
- help create regression suites - ensure that all parts of the DUV are covered by regression suite
- provide stopping criteria for unit testing
- improve understanding of the design

## Coverage types
### Code coverage
- coverage models are based on the HDL code
-- implicit, implementation coverage
- coverage models are syntactic
-- model definition is based on syntax and structure of the HDL
- generic modules - fit many programming languages
- scope
-- is there a piece of code that has not been exercised
- useful for profiling
-- e.g. gcov
-- run coverage on testbench to indicate what areas are executed most often
-- gives insight on what to optimize
- types of code coverage models
-- control flow
-- data flow
-- mutation

#### Control flow models
- routine, function call, function return, statement (block), branch/path, expression/condition, loop (all possible number of iterations in (bounded) loops are executed)
- mutation coverage
-- designed to detect simple mistakes in the code i.e. typos
-- mutation is considered covered if we found a test that can distinguish between the mutation and the original

### Code coverage models for hardware
- toggle coverage
-- each signal changed its value from 0 to 1 and from 1 to 0
- all-values coverage

### Code coverage strategy
- set minimum % of code coverage
- generally 90% or 95% goal for statement, branch or expression coverage
- avoid setting a goal lower than 80%

### Modified Condition/Decision coverage
- conditions - literals/inputs in a boolean expression
- decision - output of a boolean expression
- decision coverage = branch coverage
- condition/decision coverage - requires that each condition toggles and each decision toggles
- MC/DC coverage requires that each condition be shown to independently affect the outcome of the decision while fulfilment of the condition/decision coverage requirements
