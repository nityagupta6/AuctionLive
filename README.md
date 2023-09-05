# AuctionLive
 
## Aim: 
This project is centered on the development of a sophisticated web-based platform designed to facilitate a multi-user Auction System. The platform empowers users to actively participate in auctions, assuming roles as both sellers and buyers, while efficiently handling the concurrent management of multiple auction events.
<br>
 
## Tech Stacks:
 
- SQL
- PHP
- DBMS
- XAMPP
- HTML
- CSS
- JS
 
## Features: 
 
* Sign Up for new users.
* Login and logout for existing users.
* Sellers can add products they wish to sell, including product details, images, starting bid price, and the auction duration.
* Buyers can view a list of ongoing auctions, displaying product names, images, initial prices, and bidders' information. They can place bids on items of interest.
* The auction system automatically updates the current bid price based on user bids.
* Sellers can monitor all their active auctions but cannot participate in their own auctions.
* The highest bidder cannot make additional bids until someone else offers a higher price.
* When an auction concludes, it is automatically closed and removed from the list of ongoing auctions.
* There's an admin view displaying results (product, buyer, seller, price) of all past auctions.
 
 
 
## Installation:
 
 
### Task 1: Download and Set Up XAMPP
<br>
 
- Download and Install XAMPP:
Begin by downloading XAMPP from the official [ApacheFriends downloads page](https://www.apachefriends.org/index.html), which offers versions for Windows, Linux, and macOS.
 
- Run the XAMPP Installer:
Upon clicking the downloaded file, the XAMPP setup wizard will launch. Proceed by clicking 'Next' despite any warning pop-ups.
 
- Choose Components:
Select the components you wish to install, leaving unchecked any unnecessary ones. Some components are essential and will be installed automatically. Click 'Next' to continue.
 
- Select Installation Folder:
Now, select the folder where you want to install XAMPP. You can opt for the default location or specify your preferred one. Click 'Next' to proceed.
 
- Bitnami for XAMPP:
A window with information about Bitnami will appear. Click 'Next' to continue. Bitnami is used for installing open-source applications like WordPress and Joomla on your XAMPP installation.
 
- Ready to Install XAMPP:
You'll see a window with the message "Setup is now ready to begin installing XAMPP on your computer." Click 'Next' to proceed.
 
- Welcome to XAMPP Wizard:
Wait patiently for the installation to complete.
 
- XAMPP Installation Complete:
After installation, you'll be asked if you want to start the control panel immediately. Check the box and click 'Finish' to verify that XAMPP is working correctly. You may need to select a language during this process.
<br>
 
### Task 2: Take Control of XAMPP
 
If the XAMPP installation went smoothly, the control panel should open without issues. Click the 'Start' button next to Apache and MySQL to activate them.
 
That's it! You have successfully installed XAMPP locally. When you start the modules, their status should turn green. On the right side, you can find the process ID numbers and port numbers for each module. You are now ready to proceed.
<br><br>
 
### Task 3: Running AuctionLive
 
- Add Source Code Folder to htdocs:
Navigate to the XAMPP folder and open the htdocs folder. Add your source code folder here.
 
- Create a Database:
Open PhpMyAdmin by visiting [http://localhost/phpmyadmin/](http://localhost/phpmyadmin/) in your browser. Click 'New,' enter the database name as 'auctionlive,' and click 'Create.'
 
- Import the Database:
Select the newly created database, go to the 'import' section, and choose the .sql file. Click the 'Go' button at the bottom to import the database. You can manage and edit the database at [http://localhost/phpmyadmin/](http://localhost/phpmyadmin/).
 
- Run the Project:
Open your browser and enter [http://localhost/auctionlive/](http://localhost/auctionlive/) or [http://localhost/your-project-name/](http://localhost/your-project-name/) to access the project.
 
<br>
Note:
 
- To access the system as an admin, click 'Admin Login' and enter the following credentials:
 
  - Username: admin
  - Password: admin
 
- To participate in selling or bidding, you need to register by providing all the required details. All fields are mandatory.
<br>
 
Enjoy your bidding experience! :)
