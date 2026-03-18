# public-test-streams

A curated list of publicly accessible video files and streams for testing video tools, players, and pipelines. Organized by format and source.

PRs welcome — if you find a broken link or want to add a source, open an issue or submit a pull request.

---

## MP4 (Progressive Download)

| URL | Codec | Resolution | Source | Notes |
|-----|-------|------------|--------|-------|
| [BigBuckBunny.mp4](http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4) | H.264 | 1280x720 | Google/GTV | ~10 min, reliable uptime |
| [ElephantsDream.mp4](http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4) | H.264 | 1280x720 | Google/GTV | |
| [Sintel.mp4](http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4) | H.264 | 1280x720 | Google/GTV | |
| [ForBiggerBlazes.mp4](http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4) | H.264 | 1280x720 | Google/GTV | Short clip (~15s) |
| [ForBiggerEscapes.mp4](http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4) | H.264 | 1280x720 | Google/GTV | Short clip |
| [ForBiggerFun.mp4](http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4) | H.264 | 1280x720 | Google/GTV | Short clip |
| [ForBiggerJoyrides.mp4](http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4) | H.264 | 1280x720 | Google/GTV | Short clip |
| [ForBiggerMeltdowns.mp4](http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4) | H.264 | 1280x720 | Google/GTV | Short clip |
| [SubaruOutbackOnStreetAndDirt.mp4](http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/SubaruOutbackOnStreetAndDirt.mp4) | H.264 | 1280x720 | Google/GTV | |
| [Big_Buck_Bunny_360_10s_1MB.mp4 (H.264)](https://test-videos.co.uk/vids/bigbuckbunny/mp4/h264/360/Big_Buck_Bunny_360_10s_1MB.mp4) | H.264 | 640x360 | test-videos.co.uk | 10s clip, ~1MB |
| [Big_Buck_Bunny_360_10s_1MB.mp4 (AV1)](https://test-videos.co.uk/vids/bigbuckbunny/mp4/av1/360/Big_Buck_Bunny_360_10s_1MB.mp4) | AV1 | 640x360 | test-videos.co.uk | 10s clip, ~1MB |

---

## WebM

| URL | Codec | Resolution | Source | Notes |
|-----|-------|------------|--------|-------|
| [flower.webm](https://interactive-examples.mdn.mozilla.net/media/cc0-videos/flower.webm) | VP8/VP9 | — | MDN/CC0 | Short, public domain |

---

## HLS (m3u8)

> Some HTTP (non-HTTPS) streams may fail depending on your player or network configuration.

| URL | Type | Source | Notes |
|-----|------|--------|-------|
| [bipbop_adv_example_fmp4/master.m3u8](https://devstreaming-cdn.apple.com/videos/streaming/examples/img_bipbop_adv_example_fmp4/master.m3u8) | VOD, fMP4 | Apple | Multi-bitrate, reliable |
| [tears-of-steel.ism/.m3u8](https://demo.unified-streaming.com/k8s/features/stable/video/tears-of-steel/tears-of-steel.ism/.m3u8) | VOD | Unified Streaming | Tears of Steel |
| [tears-of-steel mp4/.m3u8](https://demo.unified-streaming.com/k8s/features/stable/video/tears-of-steel/tears-of-steel.mp4/.m3u8) | VOD | Unified Streaming | MP4-backed HLS |
| [test/master.m3u8](https://cph-p2p-msl.akamaized.net/hls/live/2000341/test/master.m3u8) | Live | Akamai | Public live test stream |
| [eight/playlist.m3u8](https://moctobpltc-i.akamaihd.net/hls/live/571329/eight/playlist.m3u8) | Live | Akamai | Public live test stream |
| [skip_armstrong_stereo_subs.m3u8](http://d3rlna7iyyu8wu.cloudfront.net/skip_armstrong/skip_armstrong_stereo_subs.m3u8) | VOD | Dolby | Stereo + subs; HTTP only |
| [skip_armstrong_multichannel_subs.m3u8](http://d3rlna7iyyu8wu.cloudfront.net/skip_armstrong/skip_armstrong_multichannel_subs.m3u8) | VOD | Dolby | Multichannel + subs; HTTP only |
| [skip_armstrong_multi_language_subs.m3u8](http://d3rlna7iyyu8wu.cloudfront.net/skip_armstrong/skip_armstrong_multi_language_subs.m3u8) | VOD | Dolby | Multi-language subs; HTTP only |

---

## MPEG-DASH (mpd)

> Most Akamai DASH test streams are served over HTTP.

| URL | Codec | Source | Notes |
|-----|-------|--------|-------|
| [TOS_OnDemand_HEVC_MultiRate.mpd](http://dash.akamaized.net/dash264/TestCasesHEVC/1a/1/TOS_OnDemand_HEVC_MultiRate.mpd) | HEVC | Akamai | Tears of Steel, multi-rate |
| [BBB_OnDemand_HEVC_MultiRate.mpd](http://dash.akamaized.net/dash264/TestCasesHEVC/1a/2/BBB_OnDemand_HEVC_MultiRate.mpd) | HEVC | Akamai | Big Buck Bunny, multi-rate |
| [elephants_dream_480p_aaclc_stereo_sidx.mpd](http://dash.akamaized.net/dash264/TestCases/3b/fraunhofer/aac-lc_stereo_with_video/ElephantsDream/elephants_dream_480p_aaclc_stereo_sidx.mpd) | H.264 + AAC-LC | Akamai/Fraunhofer | Elephants Dream, 480p |
| [sintel_audio_video_mpegh_5_1_brs_sidx.mpd](http://dash.akamaized.net/dash264/TestCasesMCA/fraunhofer/MPEGH_51/1/sintel_audio_video_mpegh_5_1_brs_sidx.mpd) | MPEG-H 5.1 | Akamai/Fraunhofer | Sintel, spatial audio |

---

## Edge Cases / Stress Testing

These sources are useful for testing decoder robustness, unusual containers, and error handling.

| Source | URL | Notes |
|--------|-----|-------|
| Chromium media test data | https://chromium.googlesource.com/chromium/src/+/refs/heads/main/media/test/data/ | Hundreds of files including broken/malformed samples |
| Wikimedia Commons | https://commons.wikimedia.org/wiki/Category:Videos | Auto-transcoded into multiple formats; CC-licensed |
| test-videos.co.uk | https://test-videos.co.uk | Short clips across H.264, H.265, AV1, VP8, VP9 |

---

## Notes

- HTTP streams may fail in strict HTTPS environments or when passed through certain players/tools
- Live streams (Akamai) may go offline without notice
- GTV bucket URLs are HTTP — some tools or network configs may block them
- Dolby streams require HTTP playback context; forcing HTTPS will fail

---

## Related

- [video-commander](https://video-commander.com) — the IDE for video engineers
- [ffmpeg-builder](https://github.com/video-commander/ffmpeg-builder) — static portable FFmpeg binaries
- [bengarney/list-of-streams](https://github.com/bengarney/list-of-streams) — broader community stream list
- [joshuatz/video-test-file-links](https://github.com/joshuatz/video-test-file-links) — curated test file sources
