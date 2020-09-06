package net.wuyuling.milkteamooc.model.request;

import com.fasterxml.jackson.annotation.JsonProperty;

import java.io.Serializable;

public class VideoOrderRequest implements Serializable {

    @JsonProperty("video_id")
    private int videoId;

    public int getVideoId() {
        return videoId;
    }

    public void setVideoId(int videoId) {
        this.videoId = videoId;
    }
}
