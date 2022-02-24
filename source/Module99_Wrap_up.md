---
title: "Wrapping up"
output:
        html_document:
            includes:
                in_header: header.html
            theme: paper
            toc: true
            toc_depth: 4
            toc_float: true
            number_sections: false
            fig_caption: true
            markdown: GFM
            code_download: false
---

<style type="text/css">

body, td {
   font-size: 18px;
}
code.r{
  font-size: 12px;
}
pre {
  font-size: 12px
}

a.external {
    background: url(images/external-link.png) center right no-repeat;
    padding-right: 13px;
}
</style>

We hope you now have more familiarity with key concepts, tools, and techniques
that will enable simpler and better computational research.

---

## Housekeeping

- Please take our optional <a class="external" href="https://forms.gle/mmHP6ve3xbtU2iQy6" target="_blank">post-workshop survey</a> (5-10 minutes) <br />

- We will email you a link to the final session recordings by next week.

- The website/notes for this workshop and the <a class="external" href="https://umbioinfcoreworkshops.slack.com" target="_blank">UM Bioinformatics Core Workshop Slack channel</a> will be available.

---

## Looking ahead

#### Workshop environment
- BASH/RStudio workshop compute environment will be available until next Monday.
- You can download files from the workshop environment from your terminal/command line window as below.
  (You will need to substitute your actual workshop username and type workshop password when prompted.)
  ```
  mkdir computational-foundations-workshop
  scp -r YOUR_USERNAME@bfx-workshop01.med.umich.edu:"CF*" computational-foundations-workshop
  ```
#### Installing software locally
  - See [Advanced setup instructions](workshop_setup/setup_instructions_advanced.html)
    for details on how to install programs on your own computer.

#### _Great Lakes_ at University of Michigan
- Advanced Research Computing (ARC) at University of Michigan hosts a
  high-performance computing (HPC) platform called _Great Lakes_ which combines
  high-end computers, fast/resilient storage, and pre-installed software.
  GreatLakes may be a good resource for folks who need to run the more compute
  intensive steps and a substantial block of compute and storage is subsidized
  by ARC making it essentially free to many researchers.
  - About <a class="external" href="https://arc.umich.edu/greatlakes/" target="_blank">Great Lakes HPC</a>.
  - About the ARC <a class="external" href="https://arc.umich.edu/umrcp/" target="_blank">Research Computing Package</a>.
  - Videos on <a class="external" href="https://www.mivideo.it.umich.edu/channel/ARC-TS%2BTraining/181860561/" target="_blank">getting started with Great Lakes</a>. (available to UM folks)

#### Training and support
Learning computational techniques is more like a process than a task. Resources
to consider:

  - For intro lessons and workshops in Bash / Git / R / Python : 
    <a class="external" href="https://software-carpentry.org/lessons/" target="_blank">Software Carpentry</a> 
    and the <a class="external" href="https://umcarpentries.org/" target="_blank">UM Software Carpentry Group</a>.
  - Upcoming <a class="external" href="https://arc.umich.edu/events/" target="_blank">UM Advanced Research Computing workshops</a>.
  - &nbsp; <a class="external" href="https://um-isr-coderspace.slack.com" target="_blank">UM CoderSpaces Slack</a> and <a class="external"  href="https://datascience.isr.umich.edu/events/coderspaces/" target="_blank">UM CoderSpaces "office hours"</a>.

---

## Thank you

![Sponsors](images/Module00_sponsor_logos.png)

| ![](images/Module00_headshots/headshot_cgates.jpg) | ![](images/Module00_headshots/headshot_mbradenb.jpg) | ![](images/Module00_headshots/headshot_rcavalca.jpg) | ![](images/Module00_headshots/headshot_trsaari.jpg) |
|:-:|:-:|:-:|:-:|
| **Chris** | **Marci** | **Raymond** | **Travis** |
| | | | |
| ![](images/Module00_headshots/headshot_jmoltzau.jpg) | ![](images/Module00_headshots/headshot_sovacool.jpg) | ![](images/Module00_headshots/headshot_ncarruth.jpg) | ![](images/Module00_headshots/headshot_salucas.jpg) |
|  **Jay** | **Kelly**| **Nick** | **Sarah** |
| | | | |
| ![](images/Module00_headshots/headshot_damki.jpg) | ![](images/Module00_headshots/headshot_mflick.jpg) | ![](images/Module00_headshots/headshot_meese.jpg) | ![](images/Module00_headshots/headshot_spanapak.jpg) |
| **Dana** | **Matthew** | **Marisa** | **Sai** |
| ![](images/Module00_headshots/headshot_weishwu.jpg) |
| **Weisheng** |

<br/>

Thank you for participating on our workshop. We welcome your questions and
feedback now and in the future.

Bioinformatics Workshop Team

[bioinformatics-workshops@umich.edu](mailto:bioinformatics-workshops@umich.edu) <br/>
<a class="external" href="https://brcf.medicine.umich.edu/bioinformatics">UM BRCF Bioinformatics Core</a>
