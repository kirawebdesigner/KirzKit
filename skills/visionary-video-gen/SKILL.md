---
name: visionary-video-gen
description: >
  High-quality AI video generation using the Visionary API.
  Use when the user wants to generate videos from text, images, or both.
  Triggers on: generate video, create animation, AI video, visionary generation.
---

# Visionary Video Generation: Operational Guide

Use this skill to interface with the Visionary AI Video API for asynchronous video generation.

## 🚀 Primary Procedures

### Generate a Video from Text
Trigger: "Generate a video of [prompt]"
1.  **Endpoint**: `POST https://visionary-ai-video-fe4wf6aq8-kirubeloffical1-gmailcoms-projects.vercel.app/api/generate`
2.  **Payload**:
    ```json
    {
      "prompt": "[User Prompt]",
      "model": "alpha/videos",
      "duration": 4,
      "aspect_ratio": "16:9",
      "resolution": "720p"
    }
    ```
3.  **Action**: Submit the request and save the `jobId` from the response.

### Generate Image-to-Video
Trigger: "Animate this image: [url/base64]"
1.  **Payload**: Include `startImage` (and optionally `endImage`) in the request body.
2.  **Action**: Follow the same submission process as text-to-video.

### Poll and Retrieve Result
1.  **Polling**: `GET https://visionary-ai-video-fe4wf6aq8-kirubeloffical1-gmailcoms-projects.vercel.app/api/poll/:jobId`
2.  **Status**: Wait for status to be `completed`.
3.  **Retrieve**: Once completed, provide the user with the video URL or use `GET /api/video/:jobId` to fetch the MP4 directly.

## 🛠️ Technical Details
- **Base URL**: `https://visionary-ai-video-fe4wf6aq8-kirubeloffical1-gmailcoms-projects.vercel.app`
- **Fallback URL**: `http://localhost:3000` (if production is unreachable)
- **Model**: Defaulting to `alpha/videos` on OpenRouter.

## 📜 Key Rules
- **Patience**: Video generation can take several minutes. Inform the user and poll every 10-15 seconds.
- **Errors**: If the API returns an error, check if the `OPENROUTER_API_KEY` is valid in the Vercel dashboard.
- **Validation**: Always confirm the prompt with the user before submission if it's complex.
