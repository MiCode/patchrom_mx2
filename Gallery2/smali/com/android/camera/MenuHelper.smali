.class public Lcom/android/camera/MenuHelper;
.super Ljava/lang/Object;
.source "MenuHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static gotoMode(ILandroid/app/Activity;)V
    .locals 6
    .parameter "mode"
    .parameter "activity"

    .prologue
    .line 67
    packed-switch p0, :pswitch_data_0

    .line 81
    const-string v3, "MenuHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown camera mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_0
    return-void

    .line 69
    :pswitch_0
    const-string v0, "com.android.camera.PanoramaActivity"

    .line 70
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.camera.PanoramaActivity"

    .line 84
    .local v1, className:Ljava/lang/String;
    :goto_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v2, it:Landroid/content/Intent;
    invoke-static {p1, v2, v1}, Lcom/android/camera/MenuHelper;->startCameraActivity(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #className:Ljava/lang/String;
    .end local v2           #it:Landroid/content/Intent;
    :pswitch_1
    const-string v0, "android.media.action.VIDEO_CAMERA"

    .line 74
    .restart local v0       #action:Ljava/lang/String;
    const-string v1, "com.android.camera.VideoCamera"

    .line 75
    .restart local v1       #className:Ljava/lang/String;
    goto :goto_1

    .line 77
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #className:Ljava/lang/String;
    :pswitch_2
    const-string v0, "android.media.action.STILL_IMAGE_CAMERA"

    .line 78
    .restart local v0       #action:Ljava/lang/String;
    const-string v1, "com.android.camera.Camera"

    .line 79
    .restart local v1       #className:Ljava/lang/String;
    goto :goto_1

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static gotoModeAddFlag(ILandroid/app/Activity;Landroid/content/Intent;)V
    .locals 6
    .parameter "mode"
    .parameter "activity"
    .parameter "i"

    .prologue
    .line 114
    packed-switch p0, :pswitch_data_0

    .line 128
    const-string v3, "MenuHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown camera mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_0
    return-void

    .line 116
    :pswitch_0
    const-string v0, "com.android.camera.PanoramaActivity"

    .line 117
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.camera.PanoramaActivity"

    .line 131
    .local v1, className:Ljava/lang/String;
    :goto_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/content/Intent;->getMeizuFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_0

    .line 133
    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addMeizuFlags(I)Landroid/content/Intent;

    .line 135
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getMeizuFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_1

    .line 136
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addMeizuFlags(I)Landroid/content/Intent;

    .line 138
    :cond_1
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addMeizuFlags(I)Landroid/content/Intent;

    .line 139
    invoke-static {p1, v2, v1}, Lcom/android/camera/MenuHelper;->startCameraActivity(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #className:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_1
    const-string v0, "android.media.action.VIDEO_CAMERA"

    .line 121
    .restart local v0       #action:Ljava/lang/String;
    const-string v1, "com.android.camera.VideoCamera"

    .line 122
    .restart local v1       #className:Ljava/lang/String;
    goto :goto_1

    .line 124
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #className:Ljava/lang/String;
    :pswitch_2
    const-string v0, "android.media.action.STILL_IMAGE_CAMERA"

    .line 125
    .restart local v0       #action:Ljava/lang/String;
    const-string v1, "com.android.camera.Camera"

    .line 126
    .restart local v1       #className:Ljava/lang/String;
    goto :goto_1

    .line 114
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static gotoModeForMeizu(ILandroid/app/Activity;Landroid/content/Intent;)V
    .locals 8
    .parameter "mode"
    .parameter "activity"
    .parameter "i"

    .prologue
    .line 144
    packed-switch p0, :pswitch_data_0

    .line 154
    const-string v4, "MenuHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown camera mode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :goto_0
    return-void

    .line 146
    :pswitch_0
    const-string v0, "android.media.action.MEIZU_CAMERA_VIDEO_APP_MMS_EX"

    .line 147
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.camera.VideoCamera"

    .line 158
    .local v1, className:Ljava/lang/String;
    :goto_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    .local v3, intent:Landroid/content/Intent;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 160
    .local v2, extras:Landroid/os/Bundle;
    const-string v5, "output_video"

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v6, "output_video"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    check-cast v4, Landroid/net/Uri;

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 161
    const-string v5, "output"

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v6, "output"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    check-cast v4, Landroid/net/Uri;

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 162
    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 163
    const-string v4, "meizu_video_record_max_size"

    const-string v5, "meizu_video_record_max_size"

    const-wide/32 v6, 0x41000

    invoke-virtual {p2, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 164
    const-string v4, "isFlymeMms"

    const-string v5, "isFlymeMms"

    const/4 v6, 0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 165
    invoke-static {p1, v3, v1}, Lcom/android/camera/MenuHelper;->startCameraActivity(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #className:Ljava/lang/String;
    .end local v2           #extras:Landroid/os/Bundle;
    .end local v3           #intent:Landroid/content/Intent;
    :pswitch_1
    const-string v0, "android.media.action.MEIZU_CAMERA_APP_MMS_EX"

    .line 151
    .restart local v0       #action:Ljava/lang/String;
    const-string v1, "com.android.camera.Camera"

    .line 152
    .restart local v1       #className:Ljava/lang/String;
    goto :goto_1

    .line 144
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static gotoModeWithFlag(ILandroid/app/Activity;)V
    .locals 6
    .parameter "mode"
    .parameter "activity"

    .prologue
    .line 90
    packed-switch p0, :pswitch_data_0

    .line 104
    const-string v3, "MenuHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown camera mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_0
    return-void

    .line 92
    :pswitch_0
    const-string v0, "com.android.camera.PanoramaActivity"

    .line 93
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.camera.PanoramaActivity"

    .line 107
    .local v1, className:Ljava/lang/String;
    :goto_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "start_camera_by_combokey"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 109
    invoke-static {p1, v2, v1}, Lcom/android/camera/MenuHelper;->startCameraActivity(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 96
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #className:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_1
    const-string v0, "android.media.action.VIDEO_CAMERA"

    .line 97
    .restart local v0       #action:Ljava/lang/String;
    const-string v1, "com.android.camera.VideoCamera"

    .line 98
    .restart local v1       #className:Ljava/lang/String;
    goto :goto_1

    .line 100
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #className:Ljava/lang/String;
    :pswitch_2
    const-string v0, "android.media.action.STILL_IMAGE_CAMERA"

    .line 101
    .restart local v0       #action:Ljava/lang/String;
    const-string v1, "com.android.camera.Camera"

    .line 102
    .restart local v1       #className:Ljava/lang/String;
    goto :goto_1

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static startCameraActivity(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .parameter "intent"
    .parameter "className"

    .prologue
    .line 48
    const/high16 v1, 0x400

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 49
    const/high16 v1, 0x200

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->keep()V

    .line 57
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    const/high16 v1, 0x10a

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 63
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 60
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
