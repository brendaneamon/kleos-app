# Evaluation

## Technical Requirements

**Excelling.** Great job with this assignment! Multiple models with associations and full CRUD functionality. Was really happy to see some Devise in there (along with some user authorization)! A fun next step (or perhaps more of an exploration) could be to...
* Add custom properties to the user (like an avatar) that don't come automatically packaged with Devise.
* Implement an admin user that can edit anything (vs. an author who can only edit their own posts).
* Integrate OAuth with Devise so that the user can log in through Facebook or Twitter. Happy to point you in the right direction with either of those.

## Creativity and Interface

**Excelling.** Dig the theme, and glad to see you putting your scholarly knowledge to work here! Seems that the app is pretty responsive as well, so kudos on that. Also see some Flexbox in that stylesheet. Really don't have much to add here!

## Code Quality

**Excelling.** Again, great job. You code was very well-organized and readable. A next step here today could be to extract logic out of the view, particularly with user authorization. Look into the CanCanCan gem, or perhaps creating helper methods that determine whether something is visible based on if a user (or the **correct** user) is logged in.

Also left some inline code comments. Make sure to take a look at them in this [pull request](https://github.com/brendaneamon/kleos-app/pull/1).

## Deployment and Functionality

**Performing.** Deployed app seems to be working just like the local version. Next step would be to explore other deployment options like Digital Ocean. You could also look into external APIs that could help supply information on Greek figures. Not sure if that exists or not though...

## Planning / Process / Submission

**Excelling.** Really couldn't ask for more out of a Readme -- awesome job! Clear you put a lot of time into planning.
