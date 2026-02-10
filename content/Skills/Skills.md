---
draft: true
---

> [!content]
>```dataview
>LIST 
>	type + "<br>*" + progress + "* | #" + join(tags, ", #") + " | **Started:** " + start_date
>WHERE contains(file.path, this.file.folder) 
>AND file.name != this.file.name
>AND ( file.folder = this.file.folder OR file.name = regexreplace(file.folder, ".*\/", "") )
>SORT start_date DESC
>```