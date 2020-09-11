![Alt Text](https://media.giphy.com/media/mCJkH5qhf3XQ7upmF6/giphy.gif)

  ## Executive Summary
  ##  Introduction
   #### Purpose 
The purpose of this project report is to analyze current problems within the Southwest System and suggest improvements for the system. Analysis of the system had been made by the previous project and recommendations were also made at the conceptual level. In this report we will make more improvements of the previous project and make revisions that are required. 
    
   #### Problem Definition 
There are some problems within the current Southwest Airlines website. First, Southwest Airlines does not have any code-sharing contracts with other airlines. This limits their customer pool and prevents them from growing to a bigger airline. If Southwest Airlines had multiple contracts from international airlines, they would be able to attract more international customers into their business.  

The current Southwest Airlines website does not have an option for travelers going to multiple destinations when they make a reservation. Customers must make individual reservations for each flight. We believe that resolving this issue will improve the quality of Southwest Airlines service. Also, Southwest Airlines does not have a system to receive direct customer feedback. There might be some suggestions and recommendations from customers however, the company does not have any system to gather this information. Our team believes that implementing this system will help the marketing team advertise Southwest and improve the quality of the service. This will also give Southwest Airlines the reputation of frequent flyer interaction and their motivation to improve their service. 
  ##  Systems Analysis Updates
  #### Function Model 
  <img width="780" alt="Screen Shot 2020-09-11 at 1 45 45 PM" src="https://user-images.githubusercontent.com/34618387/92963345-e6c0e000-f437-11ea-9679-2100749193f7.png">
<img width="901" alt="Screen Shot 2020-09-11 at 1 46 11 PM" src="https://user-images.githubusercontent.com/34618387/92963333-e32d5900-f437-11ea-8527-1973b0b655a4.png">
<img width="939" alt="Screen Shot 2020-09-11 at 1 46 04 PM" src="https://user-images.githubusercontent.com/34618387/92963340-e4f71c80-f437-11ea-9a81-47cab0264769.png">
<img width="910" alt="Screen Shot 2020-09-11 at 1 45 57 PM" src="https://user-images.githubusercontent.com/34618387/92963343-e6284980-f437-11ea-8b17-a339a09d9952.png">
  



  ##  Database Design
  #### Data Model 
The Figure 5 diagram depicts the structure of the Southwest Airlines booking system by indicating the system’s classes, attributes, and the relationships among the classes. For example, a customer can have zero or many bookings, a booking consists of one flight or many flights, one or many bookings can have zero or one book handling, a payment pays for zero or many book handling, and a customer has one or many payments. 
  <img width="1095" alt="Screen Shot 2020-09-11 at 1 46 30 PM" src="https://user-images.githubusercontent.com/34618387/92963568-4ae3a400-f438-11ea-983b-b75fe9c92c4f.png">
  <img width="569" alt="Screen Shot 2020-09-11 at 1 51 41 PM" src="https://user-images.githubusercontent.com/34618387/92965772-03f7ad80-f43c-11ea-8b6c-65335d1f4be9.png">
  
  #### Use Case Model 
  The Use Case Model is a collection of related use case diagrams that showcase the Southwest Airlines System. The airline’s System has two types of actors—customers and administrators. The customers will be interacting with the system to book flights, manage different aspects of their flights, and leave feedback. The administrators will use the System to manage the feedback from customers. The context diagram represents the whole system as a single use case. Following the context diagram is the expansion into a level 0 use case diagram detailing more specific functions within the Southwest Airlines System. Furthermore, the level 0 use case diagram becomes more detailed in level 1 use case diagrams. 
  <img width="995" alt="Screen Shot 2020-09-11 at 1 46 43 PM" src="https://user-images.githubusercontent.com/34618387/92963740-91390300-f438-11ea-92b8-faddc05d5278.png">
<img width="1003" alt="Screen Shot 2020-09-11 at 1 46 51 PM" src="https://user-images.githubusercontent.com/34618387/92963747-9302c680-f438-11ea-845f-991b514d1a17.png">
<img width="875" alt="Screen Shot 2020-09-11 at 1 46 59 PM" src="https://user-images.githubusercontent.com/34618387/92963750-9433f380-f438-11ea-8bbe-46fcb827c65e.png">
<img width="930" alt="Screen Shot 2020-09-11 at 1 47 04 PM" src="https://user-images.githubusercontent.com/34618387/92963751-9433f380-f438-11ea-9693-cb65e5cd687c.png">
<img width="825" alt="Screen Shot 2020-09-11 at 1 47 09 PM" src="https://user-images.githubusercontent.com/34618387/92963752-94cc8a00-f438-11ea-8ba1-ec6bff3af47c.png">
<img width="904" alt="Screen Shot 2020-09-11 at 1 47 19 PM" src="https://user-images.githubusercontent.com/34618387/92963753-94cc8a00-f438-11ea-9340-2d2b5c494246.png">
  #### Class Diagram 

The system has the following data objects mentioned in its description: 
Customer 
Administrator 
Payment Processor 
Management 
These data objects are defined clearly by specifying their attributes. Figure 4. depicts the structure of System by indicating the system’s classes, attributes, and relationships among the classes. 
<img width="993" alt="Screen Shot 2020-09-11 at 1 47 42 PM" src="https://user-images.githubusercontent.com/34618387/92964059-16bcb300-f439-11ea-88df-8217e09b4211.png">

#### Validation (cross-check) of the Function and Data Models against each other 
The class diagram (data model) and use case model (function model) are made to be complimentary with each other. For this reason, every object that is identified in a case must have a matching function that goes with it, and these functions must have data objects. The Data Object-Function matrix is used to show the consistency between our function and data models. An “X” is used to show which data object is operated by specific function(s). 
<img width="763" alt="Screen Shot 2020-09-11 at 1 48 01 PM" src="https://user-images.githubusercontent.com/34618387/92964063-191f0d00-f439-11ea-8565-c1b59649cbeb.png">


  ##  UI Design
  
  #### Introduction 

We describe a user-interface design of the Southwest Airlines system. The system is web-based, and the master layout is described below. Following that will be the menu bar design and the layout for the webpage of each function. Lastly, a storyboard will illustrate the interactions between the user and the system. The storyboard will specify how the system will respond to users’ actions. 

#### Master Layout (Template) for the webpages 

Figure shows an overall template to be used by the system. The webpage layout consists of the following major subsections: 

Navigation Bar. The menu bar contains the menu items. 

Header. This subsection includes a heading. 

Title. Each webpage will have its own title. 

Body. This subsection holds the content. 

<img width="684" alt="Screen Shot 2020-09-11 at 1 49 18 PM" src="https://user-images.githubusercontent.com/34618387/92964715-2f799880-f43a-11ea-87c0-4489005ab91d.png">
<img width="722" alt="Screen Shot 2020-09-11 at 1 49 32 PM" src="https://user-images.githubusercontent.com/34618387/92964722-31dbf280-f43a-11ea-939b-993b7a549f3f.png">
<img width="697" alt="Screen Shot 2020-09-11 at 1 49 40 PM" src="https://user-images.githubusercontent.com/34618387/92964724-32748900-f43a-11ea-8dec-9fe7069be36d.png">
<img width="694" alt="Screen Shot 2020-09-11 at 1 49 45 PM" src="https://user-images.githubusercontent.com/34618387/92964729-33a5b600-f43a-11ea-88d0-7111d2fc7b6b.png">


#### Storyboard
The storyboard for the Southwest Airlines system. Each node in the storyboard represents a webpage (screen). The storyboard shows what webpages are navigable from a given webpage.
<img width="716" alt="Screen Shot 2020-09-11 at 1 49 56 PM" src="https://user-images.githubusercontent.com/34618387/92964730-343e4c80-f43a-11ea-8718-e8c45a21ac93.png">

  ##  System Internal Design and Logic Specifications
The system internal design and logic specifications are explained in this section. The system internal design will show interactions that occur internally (how classes collaborate to support use cases, documented through UI). Additionally, using a Model-View-Controller pattern, the use case realizations will be shown. Also, a class diagram showing the classes and interdependencies will be shown. 

#### Function (or use case) realization using Model-View-Controller pattern 

The following are use cases available to the users and displayed on the menu bar. 

Manage Reservation 

Manage Feedback 

Manage Flight 

Manage Airplane/Airport 

Monitor Sales 

The menu bar displays the use cases and the following 3 use cases are being realized: 

Manage Reservation (displayed as “Reservation” on menu bar). When clicked by users, it will display and let users make a new reservation. This is equivalent to the use case “Book Reservation”. 

Manage Feedback (displayed as “Feedback” on menu bar). When clicked by users it will display and let the users give feedback about their flight. This is equivalent to the use case “Provide Feedback”. 

Manage Flight (displayed as “Flights” on menu bar). When clicked, the user will be able to add a flight to the system. This is equivalent to the use case “Add Flight”. 
<img width="669" alt="Screen Shot 2020-09-11 at 1 50 32 PM" src="https://user-images.githubusercontent.com/34618387/92965325-36ed7180-f43b-11ea-8273-b9910810321e.png">
<img width="655" alt="Screen Shot 2020-09-11 at 1 50 58 PM" src="https://user-images.githubusercontent.com/34618387/92965328-38b73500-f43b-11ea-9adc-eedb6b7630f2.png">



#### System Component design 

Subsystems in the design are used to group together software classes in an organized way. The software classes are sorted based on view, functionality, or any basis that helps provide a solid grouping of the system. The software classes below are divided into three different subsystems; Views (UI), Controllers (control classes), and Models (data access and business logic). The subsystems are described below. 

#### Views 

The software classes that are used to deal with UI are grouped together as Views. The following UI related classes are based upon the use case realizations: 

ReservationView 

FeedbackView 

FlightView 

All UI related classes will be organized into a single software module. 

#### Controllers 

Software classes needed to implement the connection between Views and Models are in the Controllers subsystem. These controller classes are: 

ReservationController 

FeedbackController 

FlightController 

All controller related classes will be organized into a single, separate software module. 

#### Models 

Software classes used to implement data access and business logic are a part of the Models subsystem. The model classes are: 

ReservationModel 

FeedbackModel 

FlightModel 

All model related classes will be organized into a single, separate software module. 

#### Communication components to interact with External Systems 

The Southwest Airlines’ system has two software classes that will communicate with third party systems. The Payment system will need to be processed by third party payment vendors and the Workorder system may need to interact with outside repair teams. 

#### Views  

WorkorderView  

PaymentView 

#### Controllers 

WorkorderController  

PaymentController 

#### Models 

WorkorderModel  

PaymentModel  

 #### Design Class Diagram 

<img width="711" alt="Screen Shot 2020-09-11 at 1 51 20 PM" src="https://user-images.githubusercontent.com/34618387/92965626-bbd88b00-f43b-11ea-9c56-ed9ec6ea3ce8.png">

### Deployment Model 

The deployment model shows the hardware used to host the various parts of a software system. Figure 7 shows the model for Southwest Airlines’ application deployment model. The application is web-based, and the nodes communicate using TCP/IP protocols. 
<img width="778" alt="Screen Shot 2020-09-11 at 1 51 30 PM" src="https://user-images.githubusercontent.com/34618387/92965636-bed37b80-f43b-11ea-9f34-664d743a2b74.png">
