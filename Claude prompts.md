---
id: Claude prompts
aliases:
  - Claude Prompts
tags: []
---

# Claude Prompts

This file contains some prompts I reuse on a regular basis or have spent time refining, some require use of a local file MCP.

# Memory MCP Maintenance Prompt

```
I need you to help me maintain my memory knowledge graph by trimming outdated info, updating existing entries, and adding new relevant information. Please follow these guidelines:

### Access My Files First
Start by exploring my recent files in these directories:
- /obsidian/journal/2025/ (last 2 weeks of entries)
- /obsidian/self/ (recent weekly/monthly summaries)
- /blog/_posts/ (recent posts)
- /obsidian/ (health, nutrition, workout files)
- Any recently modified files in my work directory

### What TO Keep in Memory
1. **Core Identity Info**: Name/handle, location, main websites, email
2. **Current Health Status**: Conditions, recent changes, major improvements
3. **Active Projects**: Only projects I'm currently working on (check README "Doing" section)
4. **Major Interests**: Topics I consistently engage with (Bitcoin, Christianity, predictions, etc.)
5. **Key Relationships**: Important people mentioned repeatedly
6. **Recent Major Decisions**: Lifestyle changes, new tools/workflows adopted
7. **Persistent Patterns**: Recurring themes, habits, or challenges

### What NOT to Keep in Memory
1. **Detailed daily activities** (that's what journal files are for)
2. **Completed one-off tasks** (unless they represent a pattern)
3. **Specific dates/times** (except major life changes)
4. **Content that's already in my files** (memory should complement, not duplicate)
5. **Temporary states** (like "had a headache on Tuesday")
6. **Full blog post content** (just note topics and themes)

### Update Process
1. **Check existing entities** for accuracy:
   - Is this still true/relevant?
   - Has this evolved or changed?
   - Is this too detailed for memory?

2. **Look for patterns** in recent entries:
   - What themes appear repeatedly?
   - What new projects or interests emerged?
   - What problems did I solve or challenges did I overcome?

3. **Trim redundant information**:
   - Remove observations that are too specific
   - Consolidate similar observations
   - Delete entities for completed/abandoned projects

4. **Add new high-level insights**:
   - Major decisions or realizations
   - New tools or systems adopted
   - Significant health/lifestyle changes
   - Evolution in interests or beliefs

### Specific Areas to Check
- **Health Journey**: Any major improvements or setbacks?
- **Technical Projects**: What am I actively building/maintaining?
- **Learning**: What am I currently studying? (languages, topics, skills)
- **Christianity Interest**: How has this evolved? New books/thoughts?
- **Productivity Systems**: New tools, methods, or workflows?

### Output Format
After reviewing, please:
1. List entities/observations to DELETE with reasoning
2. List entities/observations to UPDATE with old→new
3. List new entities/observations to ADD
4. Show the updated accuracy for any prediction tracking

Remember: The memory should be a high-level index that helps you understand who I am and what I'm working on, not a detailed record (that's what my files are for).

---
```

# Task adding

```
I store tasks in a local file (obsidian/todos.md) I want you to look through that task list, then check all my calendars, then my past 2 days journal entires (obsidian/journal/year/month/), and my past two weekly summaries (obsidian/self/) - then you can use that for context, it's better to lean into things. once you've done this I want you to add some tasks to my daily note (obsidian/journal/year/month/) when adding them to my daily note you should integrate it in my existing task framework and timeframes
```

# Self Debate

```
Have a debate between two versions of Claude Opus about [TOPIC]. Opus A argues for, Opus B argues against. Include opening statements, rebuttals, and closing arguments. Make each side engage directly with the other's arguments.
```

# Weekly Summary

```
**Task**: Create a weekly journal summary for the "self" folder

**Input Files**:
- Journal entries: "journal/YYYY/ddd, DD-MM-YY"" (this week's files only)
- Names directory: "journal/People/"
- Locations directory: "journal/locations/"
- Replacements map: "journal/replacements.md"
- Template reference: "self/self-example"
- Events: "journal/events/"
- Also look through all my calendars this week (start by listing my calendars to make sure you go through them all) (though when incorperating my calendar ignore specific times)

**Instructions**:
1. **Summarize** this week's journal entries into a single file
2. **Save** the summary in the "self/weekly/" folder
3. **Format** according to the style shown in "self/self-example"
4. **Replace names and locations** using placeholders:
    - Check "journal/replacements.md" for existing mappings
    - Use format: [person_1], [location_1], etc.
    - Add new replacements to the file if needed
5. **Preserve checkbox status** - note whether items are ✓ (completed) or ◻ (incomplete)
6. **Condense content** - keep only important information
7. **Maintain** a concise, direct writing style (avoid flowery language, more clincal and direct)
8. Check if a previous week summary exists, if it does include changes

**Key Requirements**:
- Fix spelling/typos automatically
- Use the Changelog file for additional context if helpful
- Ensure all personal identifiers are consistently replaced
- Keep the summary well-organized and scannable
```

# Monthly Summary

```
Turn my weekly summarys in (self/weekly/) for this month into a monthly summary file and save it in self/ format should be Month-year (e.g June-2025)
```

---

# Psychoanalysis

```
I want you to read through my obsidian (I think the folders blog, journal, Positions are worth reading in full - ignore journal/People/ and journal/locations/) for the rest use your own discretion but obviously exports-* you just need the titles not the full text, then I want you to write a psychological profile on me then give me specific advice (you can also read files as you see fit the above is just a guideline, any folder starting with export- is not something I've written it's something I've highlighted and exported from something I've read. So it'll show you my interests, same with the concepts folder.), You should at least list the files in every folder.
```

---

# Mental Health

```
I want you to read through my obsidian (specifically the self folder), I want you to review my mental health over the past four weeks. I'm not looking for medical advice I'm looking for a general check in on my mental health/wellbeing - specifically things/changes I might not be aware of.
```

# Update predictions

```
Update my Obsidian vault's "Predictions.md" file with the latest statistics from my "prediction-log.md" file. Specifically:

1. Update the admon callout with today's date in the format "DD-MMM-YYYY"
2. Update both confidence tables:
   - First table: Group by confidence level (55%, 65%, 75%, 85%, 95%) and calculate totals, correct predictions, win rates, and differences
   - Second table: Group by category (Personal, Health, Social, Misc, Politics) and calculate totals, correct predictions, average confidence, win rates, and differences

For calculations:
- Win rate = (correct predictions / total predictions) * 100%
- Difference = confidence level - win rate
- Overall statistics should be included in the first table's bottom row

Also update the "Overall Brier Score: "
```

# Export to research

```
export it as a markdown file in my obsidian (include citations) put it in Claude/Research
```

# Handover document

```
Our chat has come to an end, but your last task will be to prepare a handover document (markdown) for the next person on this project. you don't have to include source code or everything, but the subtleties and important project-specific things should be recorded.
```

# Morning

```
Please give me my morning standup with the following checks:

1. **Local Files**
   - Read my journal entries from yesterday and today in /obsidian/journal/2025/[Month]/
   - Search all files in local directories (mcp) for:
     - Undone checkboxes: "- [ ]"
     - TODO, FIX, or FIXME in file contents (not just filenames)

2. **Calendar** - Check all my calendars for:
   - Todays events
   - This weeks upcoming events

3. **Email**
   - Check for unread emails
   - Any important emails from the last few days (skip automated/no-reply messages)

**Format**:
- Start with "Action Items" as bullet points at the top
- Then include sections for: Status Update, Email, Code/File Status, This Week
- Keep it concise but comprehensive

**Priority**: Focus on actionable items and anything that needs attention today or this week.

```
