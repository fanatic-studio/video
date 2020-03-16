package vd.android.videoView.entry;

import android.content.Context;

import com.dueeeke.videoplayer.ijk.IjkPlayerFactory;
import com.dueeeke.videoplayer.player.VideoViewConfig;
import com.dueeeke.videoplayer.player.VideoViewManager;
import com.taobao.weex.WXSDKEngine;
import com.taobao.weex.common.WXException;

import app.vd.framework.extend.annotation.ModuleEntry;
import vd.android.videoView.component.AppvideoViewComponent;
import vd.android.videoView.module.AppvideoModule;

@ModuleEntry
public class videoViewEntry {

    /**
     * APP启动会运行此函数方法
     * @param content Application
     */
    public void init(Context content) {

        VideoViewManager.setConfig(VideoViewConfig.newBuilder().setPlayerFactory(IjkPlayerFactory.create()).build());

        try {
            WXSDKEngine.registerComponent("vd-video", AppvideoViewComponent.class);
            WXSDKEngine.registerModule("vdVideo", AppvideoModule.class);
        } catch (WXException e) {
            e.printStackTrace();
        }
    }

}
