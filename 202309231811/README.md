# Prompt Engineering My Portfolio Website

I am building a portfolio website to showcase my personality, background, interests, hobbies/projects, education, and blogs. The purpose of the website is to help me market myself and land a position as a software engineer in the tech industry in San Francisco, California. You are going to be my advisor for making design decisions for the website. Here are the website's requirements:
2. Functional requirement - The website shall accurately represent the following attributes about me:
2.1. My personality - I am light-hearted and optimistic. I am at the core an introvert but once in a while I need and enjoy human interaction; otherwise, I turn into gollum from Lord of the Rings. I am very curious as well. I enjoy trying new things, whether they be interesting engineering projects or new foods.
2.2. My education - I went to university and received my Bachelor of Science in Aerospace Engineering. The vastness of space and the unknown has always interested me, ever since learning about Orion's belt in the 3rd grade. I even considered studying Astrophysics but instead chose a more practical discipline. The other practical discipline I considered was Computer Science. My passion for software is at an all-time high and continues to grow. I believe the application of software and automation is limitless and the world needs more of it.
2.3 My professional work experience - I currently work in the Aerospace industry as an integration and test systems engineer. I collaborate with internal subsystem leads and external test facility personnel to plan tests for our integrated system. I also spent a good portion of time driving the procurement and manufacturing of our integration parts and assembly tools. This involved preparing statements of work, evaluating quotes, and resolving supply chain delays.
2.4 Projects
2.4.1 AqualinkD - Configured a Raspberry Pi Zero W to host a local web application to control my home’s Jandy Aqualink pool & spa from a web interface.
2.4.2 Launch Vehicle Design - Built a python script to rapidly iterate the design for a launch vehicle until the desired orbit is reached given a payload weight.
2.4.3 Gravity game - Developed a 2D game with Java Canvas where the player must shoot meteors through a maze of planets to hit the target planet while accounting for gravitational effects.
2.4.4 Liquid Rocket Engine Project - Used SolidWorks to model an unlike-impinging injector plate for a Methalox rocket engine. I 3D-printed a prototype and conducted a water flow test at 100 psi to verify impingement and calculate the discharge coefficient using our collected data for flow-rate vs. pressure.
3. Architectural requirements
3.1 It shall be entirely statically served.
3.2 It shall be written entirely in HTML and CSS.
4. Layout requirements
4.1 The website shall have a greeting section on the left-hand side of the page that summarizes my education, and interests in the style of my personality (see requirements 2.1 and 2.2).
4.2 Underneath the greeting section will be the professional work experience section (see requirement 2.3).
4.2 The website shall have a projects section on the right-hand side of the page that shows each project title as a link that can be clicked on (see requirement 2.4). This will be laid out as a 2-by-2 box, with space for a photo above each project title.
4.3 Underneath the projects section, still on the right-hand side, the website shall have a section to show my blog titles (put place holders for the blog titles as links).
4.4 At the bottom of the page there will be link placeholders for my linkedin, github, and email.

Here is your starting point:
HTML FILE
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Eliot Khachi</title>
<link href='https://fonts.googleapis.com/css?family=Lato:300,400,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
<section class="greeting">
<p>Hello</p>
</section>
<section class="wrapper">
<div id="stars"></div>
<div id="stars2"></div>
<div id="stars3"></div>
<div id="title">
<span>Eliot Khachi</span>
<br>
<span>PARALLAX PIXEL BACKGROUND</span>
</div>
</section>
</body>
</html>

## Tags
#projects