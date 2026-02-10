---
draft: true
---

> [!content]
>```dataview
>TABLE WITHOUT ID
>    link(this.file.folder + "/" + Topic + "/" + Topic, Topic) AS "Title",
>    "**" + length(unique(rows.EntryName)) + "** entries" AS "Entries"
>WHERE startswith(file.folder, this.file.folder)
>    AND file.path != this.file.path
>    AND !contains(file.path, "_attachments")
>FLATTEN regexreplace(file.path, this.file.folder + "/([^/]+)/([^/]+).*", "$1") AS Topic
>FLATTEN regexreplace(file.path, this.file.folder + "/[^/]+/([^/]+).*", "$1") AS EntryName
>WHERE EntryName != Topic + ".md"
>GROUP BY Topic
>SORT Topic ASC
>```