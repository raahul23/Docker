🐟 Marine Animal Detection System
This project is a real-time marine animal detection system built with YOLOv8 and Streamlit. It allows users to upload video files and identifies marine animals in each frame using a pre-trained deep learning model (FishInv.pt).

🔧 Features
Upload and process .mp4, .avi, or .mov video files.

Detect and label marine animals using YOLOv8.

Real-time annotated frame display.

Simple and clean web interface via Streamlit.

📁 File Structure
bash
Copy
Edit
marine-animal-detection/
├── FishInv.pt               # Trained YOLOv8 model
├── app.py                   # Main Streamlit application
├── README.md                # Project documentation
└── requirements.txt         # Python dependencies
🚀 Getting Started
1. Clone the Repository
bash
Copy
Edit

2. Install Dependencies
Make sure you have Python 3.8+ and install required packages:

bash
Copy
Edit
pip install -r requirements.txt
If you don’t have ultralytics installed yet:

bash
Copy
Edit
pip install ultralytics
3. Add Your Model
Place your YOLOv8 model weights (e.g., FishInv.pt) in the project root directory.

4. Run the App
bash
Copy
Edit
streamlit run app.py
📦 Requirements
streamlit

opencv-python

torch

ultralytics

You can also create a requirements.txt:

txt
Copy
Edit
streamlit
opencv-python
torch
ultralytics
📹 How It Works
Upload a video file.

Click the Detect Marine Animals button.

The app:

Reads the video frame-by-frame.

Applies YOLOv8 to detect objects.

Displays the frames with bounding boxes and confidence scores.

🧠 Model
This app uses a custom YOLOv8 model (FishInv.pt) trained to detect marine animals. Make sure to update the model path or retrain it for your specific use case.

✨ Sample Output

📌 Notes
Large videos may take time to process.

The model must be compatible with the ultralytics YOLOv8 format.

Display is done frame-by-frame in real-time using Streamlit.

🛠️ Future Improvements
Add video download after annotation.

Show summary statistics (count of animals detected).

GPU acceleration (if supported on deployment server).

👤 Author
Raahul U
Register Number: RA2211026050051
SRM Institute of Science and Technology

