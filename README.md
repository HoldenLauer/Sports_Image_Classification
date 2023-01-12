<p align="center">
    <img src="https://github.com/HoldenLauer/Dallas_Group_Project/blob/Nicole/Images/header_photo.jpg"
p>
<h1 align="center">
Final Project - Sports Images Classification
</h1>

## Table of Contents
- [Communication Protocol](#id-ComProtocol)
- [Topic](#id-Topic)
- [Data](#id-Data)
    - [Data Exploration](#id-DataExploration)
    - [Analysis](#id-Analysis)
- [Machine Learning Model](#id-mlm)
    - [Questions](#id-Questions)
    - [Data Preprocessing](#id-DataPreprocessing)
    - [Features](#id-Features)
    - [Training and Testing](#id-TnT)
    - [Model](#id-Model)

<div id='id-ComProtocol'/>

## Communication Protocol
As a group, we will communicate primarily through zoom and slack. All team members are committed to sharing updates asynchronously through slack and meeting via zoom when we need to work together.

<div id='id-Topic'/>

## Topic
For our project, we chose to use images to train a classification model to determine which sport is being shown in the image. We selected this topic because as a group we are interested in working with image classification. As avid sports fans, we decided to combine our interests and make a model that will classify sports images. Our dashboard also includes some fun ways for sports fans to interact with NFL data and statistics. To learn more about our project, check out our [Sports Images Classification Presentation](https://docs.google.com/presentation/d/1-S3S3BavjbAaPhXl2o1AKQ4tD0uZM0gvGFtWtwbuPRY/edit#slide=id.g1cc6198fd61_0_328) on Google Slides.

<p align="center">
    <img src="https://github.com/HoldenLauer/Dallas_Group_Project/blob/Nicole/Images/topic_photo.jfif" 
        width="1000" 
        height="600" 
        style="display: block; margin: 0 auto" /
p>

<div id='id-Data'/>

## Data

<div id='id-DataExploration'/>

### Data Exploration
The dataset we chose includes almost 15,000 rows of data that includes the file path to our images and the sport that the image is portraying. Our dataset came from [Kaggle, 100 Sports Image Classification](https://www.kaggle.com/datasets/gpiosenka/sports-classification). The dataset includes images from one hundred different sports. Our data source contains sets of training, testing, and valid images for our machine learning model. The original dataset was compiled from internet searches and posted on kaggle. There are no duplicate images in the dataset as the original creator of the dataset used a program to check for duplicates. With a clean dataset, we created an [Entity Relationship Diagram (ERD)](https://github.com/HoldenLauer/Dallas_Group_Project/blob/Nicole/Images/ERD.png) and a SQL database on postgreSQL.

<div id='id-Analysis'/>

### Analysis
We did not need to do much in terms of cleaning our data or checking for duplicates because this was already completed by the original creator of the dataset. After establishing that our dataset was clean, we decided to add a "Category" field to our sports image csv. We wanted to group the sports into categories so that we could more easily visualize the different types of sports in our dataset. We created 14 categories to capture our dataset, making it more manageable than looking at 100 individual sports. We categorized our sports and added a column to our sports image csv using V-Lookup.

<div id='id-mlm'/>

## Machine Learning Model

<div id='id-Questions'/>

<ins>Questions</ins>
- Is the input image showing an image of football or basketball? 
- How accurately can our model predict if the image is football or basketball?
- Are we able to train our model to accurately predict 2 or more sports?
- Is deep learning an effective model for image classification? 
- How will sports fans be able to interact with the dashboard from this project? 

<div id='id-DataPreprocessing'/>

<ins>Data Preprocessing</ins>
For our machine learning model, our data did not require preprocessing. One thing we did want to display in our machine learning document is a sample of images from our training and testing datasets. In order to display sample images, we plotted a figure using a for loop that pulled 9 random photos from the dataset and display the image and the label of the sport displayed in the image. 

<div id='id-Features'/>

<ins>Features</ins>
We used two main features in our machine learning model, both of which came with our dataset. The first feature we needed to us was the filepath. The filepath column contained the filepath to each individual image in our image sets. This was essential in showing our model where to retrieve the images it would be testing with. The next feature in our dataset is the label. We needed this column of data because it told our model which sport was being displayed in the image it was viewing. This was ultimately what we created our model to predict. 

Our dataset also came with a dataset column, which separated the images into training, testing, and validating sets. While this feature was helpful for our knowledge when we were exploring the data, we ultimately left it out of our model because we found it was easier to use the filepath to assign images to their respective sets.

The last feature in our dataset, bins, was not needed in our machine learning model because our model did not need to know which category we assigned each sport to. We did not feel that the category would add anything to our model because we wanted it to predict the label based soley on the image. 

<div id='id-TnT'/>

<ins>Training and Testing</ins>

Our dataset came already split into training, testing, and validating sets. In a column of our csv, it states which set the image belongs to. Additionally, the filepath contained the words 'train,' 'test,' or 'valid.' Ultimately, we used pathlib to find these key words within the filepath column of our dataset. Within our variables for our image sets, we also included parameters for image size and batch size. With all of these factors in place, we had our training, testing, and validating sets of images and were ready to train our model. 

<div id='id-Model'/>

<ins>Machine Learning Model</ins>
For this project, we chose a deep learning model. 
