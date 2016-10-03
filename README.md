# Carousel

Carousel is an awesome standalone Dropbox app that was shut down on March 31, 2016 because it was way too awesome.

Submitted by: Jonny

Time spent: 18 hours spent in total

## User Stories

The following **required** functionality is complete:

Landing Screen
* [X] Static photo tiles on the initial screen.
* [X] User can scroll to reveal sign in buttons.
Sign In
* [X] Tapping on email/password reveals the keyboard and shifts the scroll view and Sign In button up.
    Upon tapping the Sign In button.
* [X] If the username or password fields are empty, user sees an error alert.
* [ ] If credentials are incorrect, user sees a loading indicator for 2 seconds followed by an error alert.
* [X] If the credentials are correct, user sees a loading indicator for 2 seconds followed by a transition to the Sign In screens.
3. Tutorial Screens
* [X] User can page between the screens.
4. Image Timeline
* [X] Display a scrollable view of images.
* [X] User can tap on the conversations button to see the conversations screen (push).
* [X] User can tap on the profile image to see the settings view (modal from below).
5. Conversations
* [X] User can dismiss the conversations screen.
6. Settings
* [X] User can dismiss the settings screen.
* [X] User can log out.

The following **optional** features are implemented:
1. Landing Screen:
* [ ] Photo tiles move, scale and rotate while user scrolls.
2. Sign In:
* [ ] User can scroll down to dismiss keyboard.
* [ ] User sees the form scale up and fade it in as the screen appears.
3. Sign up / Create a Dropbox:
* [ ] Tapping in the form reveals the keyboard and scrolls the form and button up so they remain visible.
* [ ] Tapping the "Agree to Terms" checkbox selects the checkbox.
* [ ] Tapping on "Terms" shows a web view with the terms.
* [ ] User is taken to the tutorial screens upon tapping the "Create a Dropbox" button.
4. Tutorial Screens:
* [ ] User can page between the screens with updated dots.
* [ ] Upon reaching the 4th page, the page indicator dots are hidden and "Take Carousel for a Spin" button is shown.
5. Learn more about Carousel:
* [ ] Show the "Learn more about Carousel" button in the photo timeline.
* [ ] Tap the X to dismiss the banner.
Track the 3 events:
* [ ] (1) View a photo full screen, (2) Swipe left and right and (3) Share a photo.
* [ ] Upon completion of the events, mark them green.
* [ ] When all events are completed, dismiss the banner.
6. Settings
* [ ] User is presented with an action sheet with actions to "cancel" or "logout".

The following **additional** features are implemented:


## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<a href="https://github.com/JonnyA3/Pickupcircle/blob/master/Pickupcircle%20demo.gif" target="_blank"><img src='https://github.com/JonnyA3/Pickupcircle/blob/master/Pickupcircle%20demo.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' /></a>

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

I feel like the way I got some things to work was either janky or definitely not best practice. The tricky thing is identifying what was done incorrectly and how I SHOULD have implemented it.

## License

Copyright [2016] [Jonny Abowd]

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
