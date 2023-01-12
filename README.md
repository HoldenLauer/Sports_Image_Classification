<p align="center">
    <img src="https://github.com/HoldenLauer/Dallas_Group_Project/blob/Nicole/Images/header_photo.jpg"
p>
<h1 align="center">
Final Project - Sports Images Classification
</h1>

## Table of Contents
- [Communication Protocol](#id-ComProtocol)
- [Topic](#id-Topic)
- [Database](#id-Database)
- [Machine Learning Model](#id-mlm)
    - [Questions](#id-Questions)
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

<div id='id-Database'/>

## Database
The dataset we chose includes almost 15,000 rows of data that includes the file path to our images and the sport that the image is portraying. Our dataset came from [Kaggle, 100 Sports Image Classification](https://www.kaggle.com/datasets/gpiosenka/sports-classification). The dataset includes images from one hundred different sports. Our data source contains sets of training, testing, and valid images for our machine learning model. The original dataset was compiled from internet searches and posted on kaggle. There are no duplicate images in the dataset as the original creator of the dataset used a program to check for duplicates. With a clean dataset, we created an [Entity Relationship Diagram (ERD)](https://github.com/HoldenLauer/Dallas_Group_Project/blob/Nicole/Images/ERD.png) and a SQL database on postgreSQL.

<div id='id-mlm'/>

## Machine Learning Model

<div id='id-Questions'/>

<ins>Questions</ins>
- Is the input image showing an image of football or basketball? 
- How accurately can our model predict if the image is football or basketball?
- Are we able to train our model to accurately predict 2 or more sports?
- Is deep learning an effective model for image classification? 
- How will sports fans be able to interact with the dashboard from this project? 

<div id='id-Model'/>

<ins>Machine Learning Model</ins>
For this project, we chose a deep learning model. 
