# Data information
Three files are contained under /data folder. Below is a brief description for
each file.

## - gender_submission.cvs

An example of what a submission file should look like.
These predictions assume only female passengers survive.

## - test.cvs

Test data to check the accuracy of the model created
The test set should be used to see how well your model performs on unseen data.
For the test set, we do not provide the ground truth for each passenger.
It is your job to predict these outcomes. For each passenger in the test set,
use the model you trained to predict whether or not they survived the sinking
of the Titanic.

## - train.cvs

The training set should be used to build your machine learning models.
For the training set, outcome is provided (also known as the “ground truth”)
for each passenger. Your model will be based on “features” like passengers’
gender and class.

# Variable Notes

pclass: A proxy for socio-economic status (SES)
1st = Upper
2nd = Middle
3rd = Lower

age: Age is fractional if less than 1. If the age is estimated, is it in the form of xx.5

sibsp: The dataset defines family relations in this way...
Sibling = brother, sister, stepbrother, stepsister
Spouse = husband, wife (mistresses and fiancés were ignored)

parch: The dataset defines family relations in this way...
Parent = mother, father
Child = daughter, son, stepdaughter, stepson
Some children travelled only with a nanny, therefore parch=0 for them.

embarked: Port of Embarkation. C = Cherbourg, Q = Queenstown, S = Southampton
