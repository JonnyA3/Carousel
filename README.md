# Carousel

Carousel is an awesome standalone Dropbox app that was shut down on March 31, 2016 because it was way too awesome.

Submitted by: Jonny

Time spent: 21 hours spent in total

## User Stories

### The following **required** functionality is complete:

1. Landing Screen
- [x] Static photo tiles on the initial screen.
- [x] User can scroll to reveal sign in buttons.
1. Sign In
- [x] Tapping on email/password reveals the keyboard and shifts the scroll view and Sign In button up.
- Upon tapping the Sign In button.
- [x] If the username or password fields are empty, user sees an error alert.
- [x] If credentials are incorrect, user sees a loading indicator for 2 seconds followed by an error alert.
- [x] If the credentials are correct, user sees a loading indicator for 2 seconds followed by a transition to the Sign In screens.
1. Tutorial Screens
- [x] User can page between the screens.
1. Image Timeline
- [x] Display a scrollable view of images.
- [x] User can tap on the conversations button to see the conversations screen (push).
- [x] User can tap on the profile image to see the settings view (modal from below).
1. Conversations
- [x] User can dismiss the conversations screen.
1. Settings
- [x] User can dismiss the settings screen.
- [x] User can log out.

### The following **optional** features are implemented:

1. Landing Screen:  
- [x] Photo tiles move, scale and rotate while user scrolls.
1. Sign In:
- [ ] User can scroll down to dismiss keyboard.
- [ ] User sees the form scale up and fade it in as the screen appears.
1. Sign up / Create a Dropbox:
- [ ] Tapping in the form reveals the keyboard and scrolls the form and button up so they remain visible.
- [ ] Tapping the "Agree to Terms" checkbox selects the checkbox.
- [ ] Tapping on "Terms" shows a web view with the terms.
- [ ] User is taken to the tutorial screens upon tapping the "Create a Dropbox" button.
1. Tutorial Screens:
- [x] User can page between the screens with updated dots.
- [x] Upon reaching the 4th page, the page indicator dots are hidden and "Take Carousel for a Spin" button is shown.
1. Learn more about Carousel:
- [ ] Show the "Learn more about Carousel" button in the photo timeline.
- [ ] Tap the X to dismiss the banner.
- [ ] Track the 3 events:
- (1) View a photo full screen, (2) Swipe left and right and (3) Share a photo  - Upon completion of the events, mark them green.
- [ ] When all events are completed, dismiss the banner.
1. Settings
- [ ] User is presented with an action sheet with actions to cancel or logout.

### The following **additional** features are implemented:


## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<a href="https://github.com/JonnyA3/Carousel/blob/master/carousel-demo.gif" target="_blank"><img src='https://github.com/JonnyA3/Carousel/blob/master/carousel-demo.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' /></a>

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Still trucking along. Definitely feel more confident debugging and finding issues. I'm still trying to balance how much time I spend trying to figure out a problem with how soon I should ask for help after I get stuck.

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
