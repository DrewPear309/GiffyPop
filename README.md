# Animated GIF Slideshow

A simple web application for creating a fullscreen slideshow using animated GIFs. This app allows users to play, pause, adjust the speed, and navigate through a collection of animated GIFs.

## Features

- Fullscreen slideshow display.
- Use any size gif.
- Play/pause functionality.
- Speed control for adjusting the slideshow speed.
- Thumbnail slider for easy navigation.
- Sleek and modern scrollbar design for the thumbnail slider.
- Responsive design for different screen sizes.
- Auto-feed from a folder without needing to individually code each image.
- GIFs must be named in numerical order starting at 0001.
- The number of GIFs used must be listed in the JavaScript code.
- Included batch file (`rename_files.bat`) for renaming files in a folder in numerical order.

## Usage

1. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/your-username/animated-gif-slideshow.git
Navigate to the project directory:

```bash
Copy code
cd animated-gif-slideshow
Add your GIF files to the gif folder in the project directory. Ensure that the GIFs are named in numerical order starting at 0001.

Open the index.html file in a web browser.

Enjoy the slideshow!

Configuration
The app automatically loads all GIF files from the gif folder. The number of GIFs used must be listed in the loadGifFiles() function in the script section of the index.html file.
Example:

In line 188

// Load GIF filenames
function loadGifFiles() {
  // Let's assume you have 20 GIFs.
  for (let i = 1; i <= 20; i++) {
    const filename = `${gifFolder}/${String(i).padStart(4, '0')}.gif`;
    gifFiles.push(filename);
  }
  // Additional code...
}
You can use the provided batch file (rename_files.bat) included in the repository to rename all files in a folder in numerical order. Simply double-click the batch file, type in the folder location, and hit Enter. The command window will close, and the files will be renamed.

Credits
This app was created by Michael Pear and Gemini.

License
This project is licensed under the MIT License.
