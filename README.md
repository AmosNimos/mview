# MView.sh 👁️‍🗨️

<img src="https://correcteyes.com/wp-content/uploads/2016/06/bannereyeexam.png" width="100%" height="auto" style="border-radius: 30px; object-fit: cover;">

MView.sh is a Bash script that enables quick viewing of Markdown files in Firefox without the need for a slower conversion tool like pandoc.

## Usage

To use MView.sh, simply run the script with a Markdown file as an argument:

```bash
./mview.sh <markdown_file>
```

This will convert the Markdown file to HTML using a sed command for speed, open the HTML file in Firefox, and delete the temporary HTML file once Firefox is closed.

**Note:** If you want to use MView.sh make it executable. You can do this by moving the script to your bin directory and making it executable using the following commands:

```bash
mv mview.sh ~/bin/mview
chmod +x ~/bin/mview
```

If you don't have a bin directory for your Bash scripts, you can create one and link it to your PATH. Here's how you can do it on Debian-based systems:

1. Create the bin directory in your home directory:

```bash
mkdir ~/bin
```

2. Add the following line to your ~/.profile or ~/.bashrc file to include the bin directory in your PATH:

```bash
export PATH="$HOME/bin:$PATH"
```

3. Close and reopen your terminal, or run the following command to apply the changes:

```bash
source ~/.profile
```

## Requirements

MView.sh requires Bash and Firefox to be installed on your system.
