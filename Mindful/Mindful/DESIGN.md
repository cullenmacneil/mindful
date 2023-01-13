The first thing I did when deciding what features to implment and so fourth was to design the app in an asthetically pleasing way. I did some research on "productive" colors and found a color palette that I personally really enjoyed. From there I decided to flesh out my ideas onto a Figma file, from there I was able to find a way in which I could lay out my app to make it intuitive for the user's expierence and have a clean and consise app. From that point I got to work teaching my self swift. I assmbled a storyboard with a tab bar controller. 

Home: 

I felt that all apps need to have a welcome page, this greets the user and encoruages them to explore the app. I implemented this purely through Xcode's storyboard. I created a new View Controller and connected it to the tab bar controller. From there all I had to do was assign the tab an icon and some text so that the user can intuitivley navigate to the tab itself. I chose to go for a minimalist theme across the icons, I did not want them to distract from the content itself, rather I wanted them to serve purely as navigation tools that are representative of what they naviagte to

Timer: 

In order to help the user more effectivley study I did some research on different studying techniques. The main one I saw was called the pomodoro technique. This consists (usually) of the user studying for a 25 minute block of time, then they take a 5 minute break of no dopamine stimulation. The user does nothing but sit there for the full 5 minutes. This then repeats 4 times (2 hours) in which the user can take a longer break. So in order to implement my idea, I did some research on how to configure a timer (referenced below) and designed the UI in storyboard. The simple nature of the timer is what I feel is its best attribute. Because the user is meant to take a stimulation break the app activley is quite unstimulating to look at, this helps the user just focus on other things and truly get the benefits of the technique

Calculator: 

I implmented the calculator again through story board in order to positionally put each button where I thought would be most intuitave (I got inspiration from Apple's timer). TYhen from there I made connections from front end to back end byt creating different IBOutlets and IBActions relating to the buttons themself. Again I went for a minimalist design as the app is purley meant to be a useful thing to have whilst studying, and the user should not use it to distract themselves during their 5 minute break.

To Do:

I created the to do list to help the user keep track of various things, the app itself has functionality outside of studying but the main priority was to aid the users experience when studying. The to do list was created through story board by creating the plkus button as  abutton, the text "To Do" as a label, and the table itself as a table in storyboard. From there (again) I made various IBOutlets and IBActions for the front end and backend to merge. The To Do list was primarily made so that the user can input what they need to study, or the various assignments that they have to do in that time they use the app. I wanted to integrate this as I feel checking things off of a list (or deleting them) gives the user a sense of accomplishment and a dopamine rush that makes them want to keep working.



References:

https://youtu.be/xojaYcBWru0 - Used to help configure the timer itself, and the algortihm to count down properly

https://youtu.be/A2gGNTKo_q8 - Used to help the fucntions themself for the calculator, as well as the input/output for the user

https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwjm69OEpeb7AhWdF1kFHTfMAHwQwqsBegQIDRAG&url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3DYHGRBwJOLVU&usg=AOvVaw3LdVZTrTdL8pfHnGIQEhDN - Used to help to configure multiple view controllers to navigate my app

https://colorswall.com/palette/6620 - Color palette
