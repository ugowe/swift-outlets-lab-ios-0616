# Simon Says Lab

![Drawing](https://upload.wikimedia.org/wikipedia/en/b/b2/It's_dangerous_to_go_alone!_Take_this..png)

## Learning Objectives - The student should be able to...

* Complete this lab which will encompass everything they learned in Unit 4.

## What the student can do at this point 

* Has a general overview of Xcode and is able to create a new project.
* Knows where to locate the testing file within Xcode.
* Knows how to navigate to Interface Builder.
* Knows what a storyboard file is.
* Has a brief overview of what the Object Library is.
* Can drag a View Controller onto the canvas.
* Can locate and drag items from the Object Library.
* Can locate the Attributes Inspector and change the Background color of Views
* They know how to connect the ViewController.swift file and understand it's view life cycle.
* Can hook up IBOutlets and IBActions.

## Outline / Notes

*  I've included an Xcode project along with this repo.
* I like the idea of having them re-create the Simon Says game with an emphasis on the following:
	* Dragging four `UIButton`'s to the four corners of the view.
	* Creating `IBAction`'s for each `UIButton` (four in total).
	* MAYBE: They also drag a `UILabel` above the `UIView` that displays the color. This `UILabel` will let the user know whether or not they guessed the correct pattern when they tap one of the four `UIButton`'s?
	* MAYBE: They include a `UILabel` that represents their score? Or perhaps it represents how far they've gotten?
* In our instructions to the student, we shouldn't hand hold too much here. I like the idea of challenging them. But, as I'm still deciding on whether or not they will have gone through a unit on classes before this particular lab (I'm inclined NOT to) then this idea of having them figure out how to call the Struct's methods will be very foreign to them. That being said, we should show them the methods they can call to "make the game work" so to speak.  
* Notes to the writer of this lab. I've made a quick attempt to create a Simon Says game which clearly is faulty and most likely not the best way to make a SImon Says game 🙆🏼 - This is a direction I had in my mind for where this lab could go, in that... they would become familiar with creating IBActions and IBOutlets and coming to an understanding that they could call on methods from these actions, so they could begin to see this connection and what might be possible for them to accomplish.
* I like the idea of the four `UIButton`'s in the corner of the screen being just square Buttons with no title text. Do we then not have them read the button argument coming in to their action method... instead having them call on the simonSays.guessRed method or something based upon them knowing they dragged over an action from a redButton so they call on guessRed from it?
* I've included three cocoapods for testing purposes (although I don't know if we need to use them for this lab, I want to.. but don't see it as useful testing any particular methods relating to the Game (considering we wrote it) but.. more so testing the Buttons and seeing if they implemented the actions properly to facilitate a game. I included the KIF framework (through Cocoapods) which will allow us to do some UI testing.
* I didn't go through with the **Final Test Target Configurations** with regards to the [Kif Cocoapod](https://github.com/kif-framework/KIF#final-test-target-configurations)

```swift
Final Test Target Configurations

You need your tests to run hosted in your application. Xcode does this for you by default when creating a new testing bundle target, but if you're migrating an older bundle, follow the steps below.

First add your application by selecting "Build Phases", expanding the "Target Dependencies" section, clicking on the "+" button, and in the new sheet that appears selecting your application target and clicking "Add".

Next, configure your bundle loader. In "Build Settings", expand "Linking" and edit "Bundle Loader" to be $(BUILT_PRODUCTS_DIR)/MyApplication.app/MyApplication where MyApplication is the name of your app. Expand the "Testing" section and edit "Test Host" to be $(BUNDLE_LOADER). Also make sure that "Wrapper Extension" is set to "xctest".

The last step is to configure your unit tests to run when you trigger a test (⌘U). Click on your scheme name and select "Edit Scheme…". Click on "Test" in the sidebar followed by the "+" in the bottom left corner. Select your testing target and click "OK".
```

* Could we make this more difficult? Will this be too easy?

<a href='https://learn.co/lessons/OutletLab' data-visibility='hidden'>View this lesson on Learn.co</a>
