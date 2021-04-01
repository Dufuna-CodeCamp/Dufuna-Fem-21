# Welcome to the Dufuna-CodeCamp Programme 🚩

This repository exists for the submission of tasks by the Dufuna-Fem participants for the year 2021.

## Getting Started

- Clone this repository.

- Before you start work on any task:
    - create a new branch
    - move to the new branch

- On your local copy, you'll find a `submissions` directory.
    - create a new folder in that directory
    - name the folder using the format detailed below:
        - suppose your `first name` is `Jane` and your `last name` is `Doe`, your folder will be named `janeDoe`.

- In the folder you created that is named after you, create another folder named the topic for which you want to make a submission e.g. `aboutMe`.

- In this new folder, create a new file for the solution of the tasks, e.g `aboutMe.txt`

## Making a submission

If you want to make a submission for a week where the topic was `HTML` and the issue number for the task on github is `1`, you'll need to take the following steps:

- Open your 
    - `terminal` - for `linux or MacOS` users.
    - `command prompt` - for `Windows` users.

- Navigate to the project folder (In this case `Dufuna-Fem-21`)

- Create and move to a new branch.

- Navigate to the folder that has your name in the `submissions` folder.

- Create a folder for the task using the topic of the week as the name. In this case, the folder will be named `HTML` because that's the topic for the week.

- Put the necessary files/content for the task into the newly created folder.

- Navigate to the `tests` folder in your local project

- Because we're working on the task in `issue #1`, navigate to `issue1` in the tests folder. (This means that if the issue number were 7, we'd have to navigate to `issue7` in the tests folder).

    - For `Windows OS` users, run the command `test.bat`
    - For `linux or MacOS` users, run the command `./test.sh`

- Follow the prompts given on the command line

- The last two steps above run some tests on your submission and provide the result of this test on your `terminal or command prompt` as the case may be.
    - Ensure that all tests pass for you, if it doesn't, you'll be able to figure out where the mistake is from (feedback is given when the test is run).
    - Fix this mistakes in your submission files and run the test again.

- This step is optional
    - run `git status` to check the state of your working directory 

- Add new or modified files to git if needed using the `git add .` command

- Commit your changes

- Push this changes to the remote repository. If your branch is perhaps named `html_task` then your git command to push would be like `git push origin html_task`.

- Go to the Github repository online and make a pull request.

## Pull Requests

- When you create a PR, you need to inform us of what you have done. e.g if Jane wants to create a PR to submit a solution for the `HTML` topic, it would go thus:
    -  I added a index.html file that contains solution to the HTML task
    -  I updated the solution to the last task in lastTask.txt
- Your PR title must contain your program abbreviation and task number in a square bracket, and a description. It should be of the format: `[DFFE-5] Style the customer signup page`

## NOTES

- Before starting a new task, always update your `master` branch locally by pulling using `git pull origin master`


### Enjoy The Ride!!!
