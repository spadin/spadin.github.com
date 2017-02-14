---
layout: post
title: Behavioral Cloning
description: Built and trained a convolutional neural network for end-to-end driving in a simulator, using TensorFlow and Keras.
image: assets/images/behavioral-cloning.jpg
---

### Project description

Built and trained a model that determines the steering angle the car needs to
take to round the track. The [open-source simulator][1] has a training mode and
an autonomous mode. In training mode, the user records their driving around the
track. Photos from a left, center and right camera through the driver's
perspective are written to file along with the speed and steering angle. That's
enough data to train a convolutional neural network. With a trained CNN,
autonomous mode can be used to see how the model performs on the track.

* [Source code][2]
* [Project writeup][3]

[1]: https://github.com/udacity/self-driving-car-sim
[2]: https://github.com/spadin/behavioral-cloning
[3]: https://github.com/spadin/behavioral-cloning/blob/master/README.md
