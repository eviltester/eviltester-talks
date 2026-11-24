<!-- Slide 1 -->

# Practical Experiences with Graph Based Testing

Alan Richardson

StarEast 2003

alan@compendiumdev.co.uk

V1.0

![Original cover, including the Compendium Developments logo](images/slide-01-composition.png)

---

<!-- Slide 2 -->

# Overview

![Original slide 2, preserving diagrams, screenshots and layout](images/slide-02-composition.png)

---

<!-- Slide 3 -->

# Part 1 - Intro

![Original slide 3, preserving diagrams, screenshots and layout](images/slide-03-composition.png)

---

<!-- Slide 4 -->

# Directed Graphs

- Nodes (vertices)
- Links (edges)
- Paths are link sequences
- Coverage
- Simple Abstract Model
- Beizer, Binder
- Not Extensively used in testing

![Original slide 4, preserving diagrams, screenshots and layout](images/slide-04-composition.png)

---

<!-- Slide 5 -->

# Design Techniques and Models

- Sequence, Selection Iteration
- Abstraction
- Input + Output
- Automatic Generation

![Original slide 5, preserving diagrams, screenshots and layout](images/slide-05-composition.png)

---

<!-- Slide 6 -->

# The Test Script Model

- Supported by test tools
- Focus on scripts
- There will be a set of scripts that are all very similar
- Hierarchies
- No Structural Model

![Original slide 6, preserving diagrams, screenshots and layout](images/slide-06-composition.png)

---

<!-- Slide 7 -->

# Part 2 - Usage

![Original slide 7, preserving diagrams, screenshots and layout](images/slide-07-composition.png)

---

<!-- Slide 8 -->

# First Steps in Test Case Design

- Paper &amp; Pen
- Secret
- Test Design from Path Coverage
- Xref to Test conditions
- Spot Test Analysis Errors

![Original slide 8, preserving diagrams, screenshots and layout](images/slide-08-composition.png)

---

<!-- Slide 9 -->

# Test Script Development

- Too many scripts
- Not enough time
- Nodes &amp; Edges have description
- Define test data
- Use Paths as script definitions
- Auto Perl Path Generation

↓

![Original slide 9, preserving diagrams, screenshots and layout](images/slide-09-composition.png)

---

<!-- Slide 10 -->

# The Script Meta Model

- Multiple models
- Model convergence
- Scripts are a side effect
- Derivation is key
- No tool support

![Original slide 10, preserving diagrams, screenshots and layout](images/slide-10-composition.png)

---

<!-- Slide 11 -->

# Graphs as Communication

- Graph construction is an iterative process
- Design models poor – test models take over
- Communicates my understanding
- Understanding finds defects early
- Demonstrate scope
- Visibility of testing

![Original slide 11, preserving diagrams, screenshots and layout](images/slide-11-composition.png)

---

<!-- Slide 12 -->

# Beta &amp; Exploratory Testing

- Best use paper &amp; pen
- Persist in tool later
- Use tool for auto layout
- Careful testing web apps

![Original slide 12, preserving diagrams, screenshots and layout](images/slide-12-composition.png)

---

<!-- Slide 13 -->

# Visualisation of project state

- Graphs in use early
- Project structure
- Graph visualisation
    - Defect Density
    - Testing started
    - Testing finished

---

<!-- Slide 14 -->

# Part 3 – Your Usage

![Original slide 14, preserving diagrams, screenshots and layout](images/slide-14-composition.png)

---

<!-- Slide 15 -->

# How to use Graphs in Testing

- Pictures (1)
- Communication
- Understanding
- Test case derivation

- Annotated Diagrams (2)
- …
- Path coverage
- Scripts {edges} + Data
- Humans allow ambiguity
- Work with Graph (3) →

---

<!-- Slide 16 -->

# Graph Markup Languages (3)

- Structured Text is easy
- Output rather than representation
- XML poor tool support
- Put your programming hat on

| XML | Structured Text |
| --- | --- |
| XGMML GXL GraphXML GraphML Graphotron | GraphViz (Dot) GML |

No Longer Just a Diagram

![Original slide 16, preserving diagrams, screenshots and layout](images/slide-16-composition.png)

---

<!-- Slide 17 -->

# Programming Graphs

- Links
    - ID, Name, FromNode, ToNode, Description
- Nodes
    - ID, Name, Description
- Paths
    - ID, Description, Link\*

---

<!-- Slide 18 -->

# Example Tool: GraphViz

- AT&amp;T
- www.graphviz.org
- Frontends: dotty, tintfu, jGraph, Compendium-ta
- Automatic layout
- By hand

```dot
digraph G2 {
rankdir = LR;
node16[label = "start application (16)"];
node17[label = "main window (17)"];
node18[label = "exit application (18)"];
node19[label = "file edit window (19)"];
node17 -> node19[ label = "open file (23)"];
node19 -> node19[ label = "edit file (24)"];
node19 -> node19[ label = "save file (25)"];
node19 -> node17[ label = "close file (26)"];
node16 -> node17[ label = "start (27)"];
node17 -> node18[ label = "exit (28)"];
}
```

![Original slide 18, preserving diagrams, screenshots and layout](images/slide-18-composition.png)

[Original DOT example and generated preview](../examples/graphs/).

---

<!-- Slide 19 -->

# Example Tool: VGJ &amp; GML

- VGJ – web based, not maintained
- GML
- Graphlet uses GML

```gml
graph [
comment "G2"
directed 1
id 42
label "Graph G2"
node [ id 16 label "start application (16)" ]
node [ id 17 label "main window (17)" ]
node [ id 18 label "exit application (18)" ]
node [ id 19 label "file edit window (19)" ]
edge [ source 17 target 19 label "open file (23)" ]
edge [ source 19 target 19 label "edit file (24)” ]
edge [ source 19 target 19 label "save file (25)” ]
edge [ source 19 target 17 label "close file (26)” ]
edge [ source 16 target 17 label "start (27)” ]
edge [ source 17 target 18 label "exit (28)” ]
]
```

![Original slide 19, preserving diagrams, screenshots and layout](images/slide-19-composition.png)

---

<!-- Slide 20 -->

# Other Tools

- Process Revolution
    - www.siliconmindset.com
- Compendium-TA
    - www.compendiumdev.co.uk/compendium-ta
- \[See paper\]

![Original slide 20, preserving diagrams, screenshots and layout](images/slide-20-composition.png)

---

<!-- Slide 21 -->

# Conclusions

- Scripts are paths
- Coverage
- Script Meta Model
- Graph tools – Auto Layout
- Work with Graph not diagram

---

<!-- Slide 22 -->

# For More Info

- Read
    - The supporting paper
    - Beizer
        - Software Testing Techniques
        - Black Box Testing
    - Binder, Testing Object-Oriented Systems
- Visit
    - www.compendiumdev.co.uk/stareast2003.htm
- Try using graphs
