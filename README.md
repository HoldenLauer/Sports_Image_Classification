<p align="center">
    <img src="https://github.com/HoldenLauer/Dallas_Group_Project/blob/Nicole/Images/header_photo.jpg"
p>
<h1 align="center">
Final Project - Sports Images Classification
</h1>

## Table of Contents
- [Topic](#id-Topic)
- [Technologies Used](#id-tu)
    - [Data Preprocessing](#id-tu-dp)
    - [Database Storage](#id-tu-db)
    - [Machine Learning](#id-tu-mlm)
    - [Dashboard](#id-tu-dashb)
- [Data](#id-Data)
    - [Data Exploration](#id-DataExploration)
    - [Analysis](#id-Analysis)
- [Machine Learning Model](#id-mlm)
    - [Questions](#id-Questions)
    - [Data Preprocessing](#id-DataPreprocessing)
    - [Features](#id-Features)
    - [Training and Testing](#id-TnT)
    - [Machine Learning Model](#id-Model)
    - [Model Accuracy](#id-Accuracy)
- [Looking Ahead](#id-LookingAhead)
    - [Possible Improvements](#id-PI)
    - [Recommendations for Future Analysis](#id-RFA)

<div id='id-Topic'/>

## Topic
For our project, we chose to use images to train a classification model to determine which sport is being shown in the image. We selected this topic because as a group we are interested in working with image classification. As avid sports fans, we decided to combine our interests and make a model that will classify sports images. Our dashboard also includes some fun ways for sports fans to see which sports are included in the dataset. To learn more about our project, check out our [Sports Images Classification Presentation](https://docs.google.com/presentation/d/1-S3S3BavjbAaPhXl2o1AKQ4tD0uZM0gvGFtWtwbuPRY/edit#slide=id.g1cc6198fd61_0_328) on Google Slides.

<p align="center">
    <img src="https://github.com/HoldenLauer/Dallas_Group_Project/blob/Nicole/Images/topic_photo.jfif" 
        width="1000" 
        height="600" 
        style="display: block; margin: 0 auto" /
p>

<div id='id-tu'/>

## Technologies Used

<div id='id-tu-dp'/>

<ins>Data Processing</ins>

To process our data we mainly used excel. We added an additional feature to our dataset by categorizing each sport into 14 bins. Initially, we manually sorted our sports into their respective categories. Then, we used V-Lookup to add the category to each image. 

<div id='id-tu-db'/>

<ins>Database Storage</ins>

We used PostgreSQL to store our data. We wanted to keep our data in a database so that we could easily join tables and access them from our machine learning model. Our model accesses the training and testing images directly from our SQL database. 

<div id='id-tu-mlm'/>

<ins>Machine Learning</ins>

We used two different models for our machine learning. First, we used a sequential machine learning model to layer down the images. Then, we used MobileNet2 because it specifically trained to classify images. We tested both models to see which one would give us a higher accuracy. 

<div id='id-tu-dashb'/>

<ins>Dashboard</ins>

For our [dashboard](https://public.tableau.com/app/profile/willow4625/viz/Histogram-Segment2/SheetRelations?publish=yes), we used Tableau to create a bar graph to display the different sports that were depicted in the images from our dataset. We wanted viewers of our project to know how robust the dataset was as it covers 100 different sports. Our initial bar chart shows the number of images in each category of sport. For example, there are 2,502 images of 'Ball Sports'. Our dashboard is interactive as well because you can click on one of the categories to see which sports are contained within that category. Using the 'Ball 'Sports' example, you can see that there are 16 individual sports within that category including football, baseball, basketball, etc. 

<div id='id-Data'/>

## Data

<div id='id-DataExploration'/>

<ins>Data Exploration</ins>

The dataset we chose includes almost 15,000 rows of data that includes the file path to our images and the sport that the image is portraying. Our dataset came from [Kaggle, 100 Sports Image Classification](https://www.kaggle.com/datasets/gpiosenka/sports-classification). The dataset includes images from one hundred different sports. Our data source contains sets of training, testing, and valid images for our machine learning model. The original dataset was compiled from internet searches and posted on kaggle. There are no duplicate images in the dataset as the original creator of the dataset used a program to check for duplicates. With a clean dataset, we created an [Entity Relationship Diagram (ERD)](https://github.com/HoldenLauer/Dallas_Group_Project/blob/Nicole/Images/ERD.png) and a SQL database on postgreSQL.

<div id='id-Analysis'/>

<ins>Analysis</ins>
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

For this project, we chose to use a sequential machine learning model to layer down the images. One reason we chose this model is because it is efficient for loading in the images from our dataset. Within the layers, we simplified the image to a more pixelated 2D image to train our model because initially the RGB values were too robust for our model. Ideally, we wanted to keep the input values smaller, so we scaled the data down for a more optimal model.

After testing our sequential model, we decided to try a second model to see if we could improve our accuracy. As Keras includes some pretrained applications, we decided to use one that is trained to classify images, MobileNet2. Further along in our project we will include the results of testing both models and explain which one we ultimately feel was best for this project. 

<div id='id-Accuracy'/>


<ins>Model Accuracy</ins>

Currently, our sequential model can correctly predict sports images at 41.27%. The MobileNet2 model is accurately predicting the correct sport 90.10% of the time. Once we are completely finished with training our models, we will add line graphs showing the accuracy and loss of our models. We will also add information and images of our confsion matrix. 

<div id='id-LookingAhead'/>

## Looking Ahead

<div id='id-PI'/>

<ins>Possible Improvements</ins>

One thing we would change about our project is we would want to make our dashboard more interactive. Due to time constraints, we added only one interactive element. However, if we were going to do something different, we would make it possible for people to adjust our sports vs. cost table to filter sports based on their cost. That way, parents could see only the sports that are within their budget. 

<div id='id-RFA'/>

<ins>Recommendations for Future Analysis</ins>

For the future, we recommend creating a model that would show how accurately it is able to predict specific categories of sports. For example, it would be interesting to know if our model is able to predict "Ball Sports" with a higher accuracy than "Water Sports." We hypothesize that the model would be better able to predict sports with more identifiable equipment, and it would be interesting to see the results of categorical modeling. 
