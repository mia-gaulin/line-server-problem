# Line Server #

This is a solution for the [Line Server Problem](https://salsify.github.io/line-server.html) implemented in Ruby, using Sinatra.

I chose Ruby because I have the most familiarity with it, and Sinatra because it is a very lightweight framework. It would do what I needed to solve this problem without adding a bunch of unnecessary files or functions.

**How does your system work? (if not addressed in comments in source)**
To run this solution, you can clone the repository and run app.rb in the terminal. That will open the server. You can access a specific line by typing *curl http://localhost:4567/lines/<line index>*. To change the text file being accessed, you may update it in the app.rb file at line 20 (currently set to 1000.txt).

Calling this path parses through the data file, creates a Line object for each line, and then loads it to the database. If the line exists, it is rendered to the console when called. If the requested line is zero or does not exist, a 413 error should be returned. I've had difficulty getting that to work properly. Currently, it just returns null.

**How will your system perform with a 1 GB file? a 10 GB file? a 100 GB file?**
The larger the file gets, the slower it runs. It still works, but doesn't scale exactly the way I'd like. I'd like to learn more about optimizing this feature.

**How will your system perform with 100 users? 10000 users? 1000000 users?**
I imagine this will be similar to file size. As users increase, the system will get slower. This isn't the most scalable solution, but it's a good start. 

**What documentation, websites, papers, etc did you consult in doing this assignment?**
I checked the Ruby docs, and a couple of StackOverflow articles to help me remember proper syntax.

**What third-party libraries or other tools does the system use? How did you choose each library or framework you used?**
I used Sinatra for a framework. This way I could have all the necessary functionality, but no unnecessary scaffolding (like might exist in Rails).

I used DataMapper for an ORM- the first time I've worked with it. It allowed me to keep my tree light, because I didn't need to work with SQL or ActiveRecord. I used the SQLite adapter with DataMapper, because it seems to be the go to database for this ORM.

**How long did you spend on this exercise? If you had unlimited more time to spend on this, how would you spend it and how would you prioritize each item?**
I spent about two hours on this solution. I wanted to be sure to avoid unnecessary bells and whistles without losing any important functionality.

The next thing I'd like to get working would be to return the proper 413 status code for a line that does not exist.

I would also like to spend more time studying how to optimize my solution for different file sizes and different amounts of users, as well as understanding how it would work as is. It's something that wasn't really addressed during my time at Launch Academy and I'm very curious to find out more.

**If you were to critique your code, what would you have to say about it?**
This was one of my first forays into working with a RESTful API, and I'm still working to wrap my head around it properly. It seems to work pretty well, though I'd like to increase my understanding.
