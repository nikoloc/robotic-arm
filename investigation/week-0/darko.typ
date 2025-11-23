#set text(
  font: "Lexend",
  size: 12pt,
)

#show link: it => underline(offset: 2pt, text(fill: blue, it))

#show heading: it => block(
  above: 1.8em,
  below: 1.2em,
  it,
)

= Week 1

== Goal

The general goal for the project is to make a robotic arm with a single joint operating in a polar plane.
Such design involves two degrees of freedom:
+ for the rotation of the arm
+ for the length of the arm.

My proposal is making incremental improvements on the design in order to make the arm more modular each time. Rough
scratch would be:
+ An arm that can move in the polar plane, with a simple API for moving to a specific point, moving along a line
  specified by two points, along a circle or desired radius etc.
+ Making it do a single thing - drawing on the paper is my idea for this step as it seems like a natural proggression
  and should not be too hard to add on top of previous step.
+ Remaking the arm part into the one with a modular end and reimplementing the previous stop so it fits the newly
  constructed arm.
+ From this point on we should be able to make whatever we want. We may want to integrate it with some computer vision
  software so it can do more complex tasks like grabbing objects, solving sudoku, playing chess etc.

== Project details

=== Parts

First thing we need to decide on is the type of microcontroller to use. My proposal is to go with
#link("https://www.arduino.cc/")[Arduino] Uno - we are both familiar with using it, it is fairly cheap and there are a
lot of resources online. On the conrary, going with the cheap parts means sacrificing on the precision and reliabity.

Next thing is motors - I think the must here are servo motors. There are a lot of them on the market in all price
ranges; we need to do some more reasearch on the specific models to use taking into account the precision, price, power
they can produce and compatibility with the choosen microcontroller and other parts. It is important to keep the weight
of the arm part of the robot fairly light in order for the servo to keep up.

For the custom parts 3d-printed ones seem like the best bet. There may be printer available on the faculty, but the
prining should not be that expensive if that's not the case. I am open for other options, but they do not seem viable
once we get to step 3 since the parts will inevitably become more complex.

=== Software

If we go with Arduino, Arduino software seems pretty good. Arduino basically uses C++ with its custom
#link("https://docs.arduino.cc/arduino-cli/")[arduino-cli] for compiling, testing and vendoring the software onto a chip.

C++ generally seems like a nice options since it has a broad library selection, like
#link("https://github.com/opencv/opencv")[OpenCV] for computer vision later.

We should also learn some 3d modeling in #link("https://github.com/opencv/opencv")[Blender] or an alternative.

Other than that I am using #link("https://github.com/typst/typst")[typst] to type these documents, and we have setup a
#link("https://github.com/nikoloc/robotic-arm/")[Github repository] for collaboration.

== References for future research
- #link("https://schmidscience.com/what-does-robotics-polarity-mean.html")[What Does Robotics Polarity Mean]
- #link("https://electricalworkbook.com/polar-robot/")[What is Polar Robot? Explanation, Applications & Advantages)]
- #link("https://www.youtube.com/watch?v=9luoSIDe-hI")[Polar coordinates robotic arm]
