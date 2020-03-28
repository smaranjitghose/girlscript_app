### Folder structure

`lib` : This is where overall logic of the application lies.

`lib\models` : The Entire Data Models of the application stays here.

`lib\services` : The Services of the app such as notification_service lies here.

`lib\ui\screens` : The Whole Application Screens lies here.

`lib\ui\custom` : The Custom Widgets you created can be placed here.

### General Guidelines

1. The UI for the application is provided in the MockUp Folder you're supposed to follow it strictly and you are welcome to add on only when the primary work of the page of your interest has been done
2. All PRs must be pushed to test branch otherwise it wouldn't be accepted
3. For the images, make sure you have it in /assets/images only. Don't create any other directory or sub-directory for them.

### Coding Guidelines

1. Try to reduce the widget tree, in the long run it might help us a lot
2. When it comes to package version, make sure you use the correct package.
3. Try to separate the UI from logic.
4. Improve Documentation, this really helps to understand code.
5. When it comes to naming convention, maintain similarity and stability through out the app.
6. If your dart file has more than two widgets try to create separate file.
7. When it comes to scale our application, try using `provider` or something similar to that.
8. Know well about advanced concepts in flutter and try to use them properly.
