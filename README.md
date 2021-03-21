# Simple Hand-Written Digit Classifier

A simple hand-written digit classifier which can classify digits with 98% accuracy.
You can visit the [website here](https://towardsdatascience.com/deploying-a-simple-machine-learning-model-into-a-webapp-using-tensorflow-js-3609c297fb04) to try this yourself.

# Project components

## Dataset

- We are using the MNIST dataset to train and test our model to recognise digits.
- You can view the [dataset here.](https://www.kaggle.com/c/digit-recognizer/data)

## Model

- A dense neural network with architecture:
  
| Layer | Activation   | Neurons |
| ---   | ---          | ---     |
|  1    | ReLU         | 784     |
|  2    | ReLU         | 10      |
|  3    | Softmax      | 10      |

- Trained on the MNIST dataset for 60 epochs using back propagation.

## UI

- A website made using __Vue js__ to test and showcase the classification prowess of the model.
- You can visit the [website here.](https://towardsdatascience.com/deploying-a-simple-machine-learning-model-into-a-webapp-using-tensorflow-js-3609c297fb04)

# To build this on your computer

1. ```cd``` to where you want the project to live
2. Run these commands:
```
git clone "git@github.com:Varun487/WrittenDigitClassifier.git"

```

# Credits

This project is inspired by a [medium article by Carlos Aguayo.](https://towardsdatascience.com/deploying-a-simple-machine-learning-model-into-a-webapp-using-tensorflow-js-3609c297fb04)
