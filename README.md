## UIKit with View Code

### Why should we use View Code?

When we create a layout with Storyboard, we concentrate all our screens and navigation flow in a single file. When we are developing in a team, this can be very harmful because everyone works on this single file, which can cause several conflicts.

As the project grows, the level of difficulty in adding or modifying views increases considerably, making it very laborious and costly to make even small interface changes.

One solution to this is to use View Code: build layouts programmatically. With View Code we have control over the initialization flow of views. We can also perform the componentization of our views and with that reuse these same components in different situations, the code readability increases a lot.

Merging between branches is also easier, as even if conflicts do occur, they are easier to resolve since the files contain only code.

On the downside, working with View Code brings a bigger learning curve, and if we don't have the proper knowledge in building views, the level of complexity can be increased unnecessarily. The time to create layouts takes longer when we create views this way, as we no longer have drag and drop or the quick visual feedback of the storyboard.

### Running the Project
Clone this repo (or download as ZIP), then open the file "Base.xcodeproj" with XCode. <br>
Finally, just run it with `command + R`!

## Final Project

<img src="https://i.ibb.co/CtrzjFx/view-code-01.png" alt="Final Project" width="300"/>

Made with ❤️ by Giovanna Moeller.


