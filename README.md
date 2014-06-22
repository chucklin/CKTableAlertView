# SBTableAlert

## Usage
Simply init it with an NSArray, title, and specify if cancel button is needed.

	NSArray *data = [[NSArray alloc] initWithObjects:@"1", @"2", nil];
	CKTableAlertView *alert = [[CKTableAlertView alloc] initWithData:data title:@"This is a title" hasCancelButton:YES];
	[alert show];

You can implement CKTableAlertViewDelegate in order to catch the event of clicking cells.
See more details from the Demo project.

## License
This project is released under the MIT License.

## Screenshot

![Screenshot](https://github.com/chucklin/CKTableAlertView/raw/master/CKTableAlertDemo/screenshot.png "Screenshot")

## Reference
http://joris.kluivers.nl/blog/2012/03/02/custom-popups-revisited/
