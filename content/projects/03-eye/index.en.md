+++ 
priority    = 300
date        = 2021-09-11T12:45:12+03:00
draft       = false
title       = "Microcirculation"
description = "Detection and classification of blood vessels in the anterior surface of the eye"
client      = "Far East Innovations"
roles       = ["CV Engineer", "Project Manager", "Team Lead"]
skills      = ["Python", "PyTorch", "OpenCV", "React"]
start       = "Sep 2021"
end         = "Nov 2023"
+++

In this project, I developed computer vision algorithms and machine learning models for the detection and classification of blood vessels in the anterior surface of the eye.

The goal was to automate the analysis of slit-lamp eye images to support ophthalmologists in diagnostics and research.

Main tasks included:
- preparing a dataset from medical imagery,
- segmenting blood vessels on the images,
- classifying the vessels by their length and thickness.

## 📈 Key Results and Future Development

All the objectives were successfully achieved. The developed algorithms were validated and deployed as a full-featured web service.

For segmentation, a U-Net architecture was used. A pre-trained U-Net model was fine-tuned on our custom dataset, resulting in a segmentation quality of `0.678` (Dice/F1 metric).

Results can be tested on the [demo site](https://eye.its.xyz/), where users can upload an eye image and receive segmented and classified vessel visualizations.

The project is planned to evolve further. A portable device is in development, which will allow real-time vessel classification in field conditions.

## 🏗 Architecture and Development Process

The solution architecture includes:
- **Image preprocessing** (cleaning, alignment, normalization),
- **Segmentation neural network** to extract vessels (UNet architecture),
- **Classifier** for determining vessel properties (length, thickness),
- **Web interface** for image upload and visualization (built with FastAPI + Vue).

The development process included working with medical data, annotation, model training, and building an accessible frontend for clinical use.

## ⚙️ Implementation Details, Features, and Challenges

Students were involved in annotating the dataset using [QuPath](https://qupath.github.io/). Annotating a single image took around two hours of meticulous work, so the final annotation quality varied significantly. During training, only the highest-quality annotations were used.

We developed post-processing algorithms based on computational geometry to calculate geometric metrics like vessel length, width, and classification. A transformation matrix was applied to improve measurement accuracy, built using a 3D-printed eye model tailored to each microscope used in data acquisition.

Each segmented polygon was decomposed into individual vessels. Then a skeletonized model was constructed, followed by measurement of vessel geometry. Classification was based on empirically derived metrics provided by ophthalmologists.

## Links
- [Project Website](https://eye-site.its.xyz/)
- [Demo](https://eye.its.xyz/)
- [Certificate of database registration (ru)](/files/eye.pdf)
- [My U-Net Meetup (ru)](https://youtu.be/unuBcZAFOvY)

### Thesis Projects
The following works were supervised directly by me, where I served as a research advisor:
- [Classification of capillary vessels in the eye from slit-lamp images](https://elib.spbstu.ru/dl/3/2023/vr/vr23-5822.pdf/en/info)
- [Using synthetic data generation methods to improve semantic segmentation models for eye vessels](https://elib.spbstu.ru/dl/3/2023/vr/vr24-331.pdf/info)
- [Semantic segmentation of capillary vessels in slit-lamp eye images](https://elib.spbstu.ru/dl/3/2022/vr/vr22-2820.pdf/info)
