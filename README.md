# public-test-streams

A curated list of publicly accessible video files and streams for testing video tools, players, and pipelines. Organized by format and source.

PRs welcome — if you find a broken link or want to add a source, open an issue or submit a pull request.

---

## MP4 (Progressive Download)

> The classic Google/GTV bucket (`commondatastorage.googleapis.com/gtv-videos-bucket`)
> now returns 403 for all sample files and has been removed from this list.

| URL | Codec | Resolution | Source | Notes |
|-----|-------|------------|--------|-------|
| [BigBuckBunny.mp4](https://uploads.video-commander.com/sample/BigBuckBunny.mp4) | H.264 | 1280x720 | Video Commander | ~10 min; HTTPS mirror of the retired GTV sample |
| [Big_Buck_Bunny_360_10s_1MB.mp4 (H.264)](https://test-videos.co.uk/vids/bigbuckbunny/mp4/h264/360/Big_Buck_Bunny_360_10s_1MB.mp4) | H.264 | 640x360 | test-videos.co.uk | 10s clip, ~1MB |
| [Big_Buck_Bunny_360_10s_1MB.mp4 (AV1)](https://test-videos.co.uk/vids/bigbuckbunny/mp4/av1/360/Big_Buck_Bunny_360_10s_1MB.mp4) | AV1 | 640x360 | test-videos.co.uk | 10s clip, ~1MB |
| [flower.mp4](https://interactive-examples.mdn.mozilla.net/media/cc0-videos/flower.mp4) | H.264 | — | MDN/CC0 | Short, public domain |

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
| [x36xhzz.m3u8](https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8) | VOD | Mux | Big Buck Bunny, multi-bitrate; hls.js demo default |
| [angel-one-hls/hls.m3u8](https://storage.googleapis.com/shaka-demo-assets/angel-one-hls/hls.m3u8) | VOD | Shaka demo assets | Angel One, multi-audio |
| [channel1.isml/.m3u8](https://demo.unified-streaming.com/k8s/low-latency/stable/channel1/channel1.isml/.m3u8) | Live | Unified Streaming | Low-latency live origin |

---

## MPEG-DASH (mpd)

> Most Akamai DASH test streams are served over HTTP.

| URL | Codec | Source | Notes |
|-----|-------|--------|-------|
| [TOS_OnDemand_HEVC_MultiRate.mpd](http://dash.akamaized.net/dash264/TestCasesHEVC/1a/1/TOS_OnDemand_HEVC_MultiRate.mpd) | HEVC | Akamai | Tears of Steel, multi-rate |
| [BBB_OnDemand_HEVC_MultiRate.mpd](http://dash.akamaized.net/dash264/TestCasesHEVC/1a/2/BBB_OnDemand_HEVC_MultiRate.mpd) | HEVC | Akamai | Big Buck Bunny, multi-rate |
| [elephants_dream_480p_aaclc_stereo_sidx.mpd](http://dash.akamaized.net/dash264/TestCases/3b/fraunhofer/aac-lc_stereo_with_video/ElephantsDream/elephants_dream_480p_aaclc_stereo_sidx.mpd) | H.264 + AAC-LC | Akamai/Fraunhofer | Elephants Dream, 480p |
| [sintel_audio_video_mpegh_5_1_brs_sidx.mpd](http://dash.akamaized.net/dash264/TestCasesMCA/fraunhofer/MPEGH_51/1/sintel_audio_video_mpegh_5_1_brs_sidx.mpd) | MPEG-H 5.1 | Akamai/Fraunhofer | Sintel, spatial audio |
| [sintel/dash.mpd](https://storage.googleapis.com/shaka-demo-assets/sintel/dash.mpd) | H.264 | Shaka demo assets | Multi-audio + subtitles |
| [angel-one/dash.mpd](https://storage.googleapis.com/shaka-demo-assets/angel-one/dash.mpd) | H.264 | Shaka demo assets | Clear (unencrypted) counterpart to the Widevine version below |
| [tears-of-steel.ism/tears-of-steel.mpd](https://demo.unified-streaming.com/k8s/features/stable/video/tears-of-steel/tears-of-steel.ism/tears-of-steel.mpd) | H.264 | Unified Streaming | Tears of Steel |
| [channel1.isml/.mpd](https://demo.unified-streaming.com/k8s/low-latency/stable/channel1/channel1.isml/.mpd) | H.264 | Unified Streaming | Low-latency live origin |

---

## DRM-Protected (DASH)

Useful for testing DRM signaling: `ContentProtection` descriptors, `cenc:pssh`
decoding, and key-ID handling. Playback requires a license server; manifest and
init-segment inspection does not.

| URL | DRM | Source | Notes |
|-----|-----|--------|-------|
| [angel-one-widevine/dash.mpd](https://storage.googleapis.com/shaka-demo-assets/angel-one-widevine/dash.mpd) | Widevine | Shaka demo assets | cenc scheme; Widevine pssh in manifest (content-ID based, no payload KIDs) |
| [v7-MultiDRM-SingleKey/Manifest_1080p.mpd](https://media.axprod.net/TestVectors/v7-MultiDRM-SingleKey/Manifest_1080p.mpd) | Widevine + PlayReady | Axinom test vectors | Single key; PlayReady pssh carries a WRMHEADER 4.0.0.0 with base64 KID |
| [v7-MultiDRM-MultiKey/Manifest_1080p.mpd](https://media.axprod.net/TestVectors/v7-MultiDRM-MultiKey/Manifest_1080p.mpd) | Widevine + PlayReady | Axinom test vectors | Distinct default_KID per track — good for per-track key handling |
| [angel-one-widevine/v-0240p-0400k-libx264.mp4](https://storage.googleapis.com/shaka-demo-assets/angel-one-widevine/v-0240p-0400k-libx264.mp4) | Widevine | Shaka demo assets | Rare: encrypted **progressive MP4** reachable without a manifest (single-file DASH rep; pssh + full sinf chain in the file). Other bitrates at the same path pattern |

More vectors (cbcs, key rotation, HLS variants) at
[Axinom/public-test-vectors](https://github.com/Axinom/public-test-vectors).

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
- Live streams (Akamai, Unified Streaming) may go offline without notice
- All links verified 2026-07-11; removed then: Google/GTV bucket samples (403) and Dolby skip_armstrong streams (CloudFront distribution gone)

---

## Related

- [video-commander](https://video-commander.com) — the IDE for video engineers
- [ffmpeg-builder](https://github.com/video-commander/ffmpeg-builder) — static portable FFmpeg binaries
- [bengarney/list-of-streams](https://github.com/bengarney/list-of-streams) — broader community stream list
- [joshuatz/video-test-file-links](https://github.com/joshuatz/video-test-file-links) — curated test file sources
