<!--
GA4 README template.
- Add your answers to each question's section below.
- For each question where we want you to add your commands,
  put the command(s) you ran in the terminal in the corresponding ```bash code block.
- Where we want to see a command's output, there is a plain ``` code block
  right below the command block: paste the output there.
- You don't need to paste the contents of your scripts into this file:
  we will look at the scripts in your `scripts` dir directly
  (so make sure you commit them!).
- Delete instructional comments like this one as you go.
-->

# GA4 answers - Wyatt Bednar

------------------------------------------------------------------------

## Part A: Your project dir and Git repo

### 1: Create subdirs, and copy `CLAUDE.md` and a FastQC report



### 2: Initialize a Git repository, and commit your first files



------------------------------------------------------------------------

## Part B: A TrimGalore script --- without genAI

<!-- Reminder: no genAI in this Part! -->

### 3: A TrimGalore container, its help info, and three options

*Answer*: The container link (URI) is:

Code to run `trim_galore --help` with the container:

```bash
# Your command:
```

<!-- You don't need to paste the TrimGalore help output -->

*Answer*: The option to indicate that the reads are paired-end:

*Answer*: The option to set the output dir:

*Answer*: The option to run FastQC on the trimmed FASTQ files:

### 4: Default thresholds

*Answer*: A) The default base quality score threshold:

*Answer*: B) The default read length threshold:

### 5: Write the `trimgalore.sh` script

<!-- No need to paste the script: we'll look at scripts/trimgalore.sh directly. -->

### 6: Run the script for sample `S63`, and check the output files

Code to run the script:

```bash
# Your command:
```

<!-- You don't need to paste the TrimGalore logging output -->

Code to list the output files:

```bash
# Your command:
```

The output of the command was:

```
```

*Answer*: What each type of output file contains:

<!-- If your script failed at first: describe the problem and your fix here. -->

### 7: Trimming results

*Answer*: Which adapter sequence TrimGalore looked for, and how it decided on this:

*Answer*: Percentage of reads with adapters in R1 and R2:

*Answer*: In R1 and R2, were more bases removed by quality trimming or by adapter trimming?

*Answer*: Percentage of read pairs that were removed:

### 8: Poly-G trimming

*Answer*: Did TrimGalore do poly-G trimming, and did you have to tell it to?

*Answer*: What TrimGalore concludes about the sequencing technology:

*Answer*: Was more poly-G trimming done in R1 or R2? (Optional: any idea why?)

### 9: Compare the FastQC reports before and after trimming

*Answer*: At least two differences between the reports,
and whether things look better in terms of pass/warn/fail status:

*Answer*: Were the short reads with only `N`s removed?
If so, was that due to the length threshold, or something else?

*Answer*: Something you didn't expect or are confused about:

------------------------------------------------------------------------

## Part C: Bring in genAI

<!-- Export the conversations for questions 10, 11, 13, and 14 to `doc/ai`. -->

### 10: Sonnet reviews your script

*Answer*: Your prompt:

*Answer*: Claude's suggestions, and for each, whether you agree, disagree,
or don't understand it, and why:

*Answer*: Was anything wrong, or in conflict with the course's practices?
Did Claude refer to your `CLAUDE.md` conventions?

*Answer*: The estimated cost of this conversation (from `/usage`):

### 11: Opus reviews your script

*Answer*: The estimated cost of this conversation (from `/usage`):

*Answer*: Which suggestions did only one of the two models make?

*Answer*: Did either model claim something that you know is wrong?

*Answer*: Did either model check its claims, for example by running commands?

*Answer*: Did Opus's review change your mind about any of your answers to question 10?

*Answer*: How did the costs compare? Which review would you trust more, and why?
Was the difference worth the difference in cost?

### 12: Run the script with a non-existent file

```bash
# Your command:
```

The output of the command was:

```
```

*Answer*: What happens, and at which point does the script stop?

### 13: Claude adds a check to your script

*Answer*: Your prompt:

```bash
# Your command to test the updated script:
```

The output of the command was:

```
```

*Answer*: Does it behave the way Claude claimed it would?

*Answer*: Given what you saw in question 12, how useful is this check?

### 14: Claude writes a loop

*Answer*: Your prompt:

The loop that Claude wrote:

```bash
# Paste Claude's loop here
```

*Answer*: Does it run the script once per sample?

*Answer*: Does it get the correct R2 file for each R1 file?

*Answer*: Does it only run for the 7 `S6` samples?

*Answer*: Did you change the loop? If so, what did you change and why?

### 15: Test and run the loop

The loop with `echo`, to test it:

```bash
# Your loop:
```

The output of the loop was:

```
```

<!-- You don't need to paste the output of the loop that ran TrimGalore -->

```bash
# Your command(s) to check the output files:
```

The output of the command(s) was:

```
```

*Answer*: Are all 7 samples represented?

### 16: A summary command

*Answer*: Your prompt:

```bash
# The command you got from Claude:
```

The output of the command was:

```
```

*Answer*: Did the output look right? If not, what did you do?

*Answer*: Does the value for `S63` match your answer to question 7?

*Answer*: In your own words, how does the command work?

### 17: Document your genAI use

<!-- No command/output needed here -- we check your `doc/ai` dir in the repo directly. -->

### 18: Update your `CLAUDE.md`

*Answer*: What you added to `CLAUDE.md`, and why:

*Answer*: Did Claude follow the new instruction?

### 19: Reflection

*Answer*:

------------------------------------------------------------------------

## Part D: Publish your repo on GitHub

### 20: Create a GitHub repository, push, and create an Issue

<!-- No command/output needed here -- we check your GitHub repo directly. -->
