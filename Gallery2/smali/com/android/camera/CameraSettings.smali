.class public Lcom/android/camera/CameraSettings;
.super Ljava/lang/Object;
.source "CameraSettings.java"


# direct methods
.method public static getDefaultVideoQuality(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "cameraId"
    .parameter "defaultQuality"

    .prologue
    .line 95
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 96
    .local v0, quality:I
    invoke-static {p0, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static initialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V
    .locals 8
    .parameter "context"
    .parameter "parameters"

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v5

    .line 108
    .local v5, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v5, :cond_0

    .line 120
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 111
    .local v1, candidate:Ljava/lang/String;
    invoke-static {v1, v5, p1}, Lcom/android/camera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 112
    invoke-static {p0}, Lcom/android/camera/ComboPreferences;->get(Landroid/content/Context;)Lcom/android/camera/ComboPreferences;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 114
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "pref_camera_picturesize_key"

    invoke-interface {v2, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 115
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 109
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 119
    .end local v1           #candidate:Ljava/lang/String;
    :cond_2
    const-string v6, "CameraSettings"

    const-string v7, "No supported picture size found"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static readPreferredCameraId(Landroid/content/SharedPreferences;)I
    .locals 2
    .parameter "pref"

    .prologue
    .line 411
    const-string v0, "pref_camera_id_key"

    const-string v1, "0"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static restorePreferences(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .parameter "context"
    .parameter "preferences"
    .parameter "parameters"

    .prologue
    const/4 v5, -0x1

    .line 481
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v1

    .line 484
    .local v1, currentCameraId:I
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 485
    .local v0, backCameraId:I
    if-eq v0, v5, :cond_0

    .line 486
    invoke-virtual {p1, p0, v0}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 487
    invoke-virtual {p1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 488
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 489
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 491
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v3

    .line 492
    .local v3, frontCameraId:I
    if-eq v3, v5, :cond_1

    .line 493
    invoke-virtual {p1, p0, v3}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 494
    invoke-virtual {p1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 495
    .restart local v2       #editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 496
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 501
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    invoke-virtual {p1, p0, v1}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 503
    invoke-virtual {p1}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 504
    invoke-virtual {p1}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 509
    invoke-static {p0, p2}, Lcom/android/camera/CameraSettings;->initialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 510
    invoke-static {p1, v1}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 511
    return-void
.end method

.method public static setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z
    .locals 7
    .parameter "candidate"
    .parameter
    .parameter "parameters"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;",
            "Landroid/hardware/Camera$Parameters;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v5, 0x0

    .line 129
    const/16 v6, 0x78

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 130
    .local v2, index:I
    const/4 v6, -0x1

    if-ne v2, v6, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v5

    .line 131
    :cond_1
    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 133
    .local v4, width:I
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 134
    .local v0, height:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 135
    .local v3, size:Landroid/hardware/Camera$Size;
    iget v6, v3, Landroid/hardware/Camera$Size;->width:I

    if-ne v6, v4, :cond_2

    iget v6, v3, Landroid/hardware/Camera$Size;->height:I

    if-ne v6, v0, :cond_2

    .line 136
    invoke-virtual {p2, v4, v0}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 137
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private static upgradeCameraId(Landroid/content/SharedPreferences;)V
    .locals 3
    .parameter "pref"

    .prologue
    .line 401
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 402
    .local v0, cameraId:I
    if-nez v0, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getNumberOfCameras()I

    move-result v1

    .line 405
    .local v1, n:I
    if-ltz v0, :cond_2

    if-lt v0, v1, :cond_0

    .line 406
    :cond_2
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    goto :goto_0
.end method

.method public static upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter "pref"

    .prologue
    .line 332
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->upgradeOldVersion(Landroid/content/SharedPreferences;)V

    .line 333
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->upgradeCameraId(Landroid/content/SharedPreferences;)V

    .line 334
    return-void
.end method

.method public static upgradeLocalPreferences(Landroid/content/SharedPreferences;)V
    .locals 6
    .parameter "pref"

    .prologue
    const/4 v5, 0x2

    .line 315
    :try_start_0
    const-string v3, "pref_local_version_key"

    const/4 v4, 0x0

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 319
    .local v2, version:I
    :goto_0
    if-ne v2, v5, :cond_0

    .line 329
    :goto_1
    return-void

    .line 316
    .end local v2           #version:I
    :catch_0
    move-exception v1

    .line 317
    .local v1, ex:Ljava/lang/Exception;
    const/4 v2, 0x0

    .restart local v2       #version:I
    goto :goto_0

    .line 321
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 322
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 325
    const-string v3, "pref_video_quality_key"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 327
    :cond_1
    const-string v3, "pref_local_version_key"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 328
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1
.end method

.method private static upgradeOldVersion(Landroid/content/SharedPreferences;)V
    .locals 8
    .parameter "pref"

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x0

    .line 339
    :try_start_0
    const-string v4, "pref_version_key"

    const/4 v5, 0x0

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 343
    .local v3, version:I
    :goto_0
    if-ne v3, v7, :cond_0

    .line 394
    :goto_1
    return-void

    .line 340
    .end local v3           #version:I
    :catch_0
    move-exception v1

    .line 341
    .local v1, ex:Ljava/lang/Exception;
    const/4 v3, 0x0

    .restart local v3       #version:I
    goto :goto_0

    .line 345
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 346
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-nez v3, :cond_1

    .line 349
    const/4 v3, 0x1

    .line 351
    :cond_1
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 353
    const-string v4, "pref_camera_jpegquality_key"

    const-string v5, "85"

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 354
    .local v2, quality:Ljava/lang/String;
    const-string v4, "65"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 355
    const-string v2, "normal"

    .line 361
    :goto_2
    const-string v4, "pref_camera_jpegquality_key"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 362
    const/4 v3, 0x2

    .line 364
    .end local v2           #quality:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 365
    const-string v5, "pref_camera_recordlocation_key"

    const-string v4, "pref_camera_recordlocation_key"

    invoke-interface {p0, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "on"

    :goto_3
    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 369
    const/4 v3, 0x3

    .line 371
    :cond_3
    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 372
    const-string v5, "pref_camera_recordwdr_key"

    const-string v4, "pref_camera_recordwdr_key"

    invoke-interface {p0, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "wdr-on"

    :goto_4
    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 376
    const/4 v3, 0x4

    .line 378
    :cond_4
    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    .line 379
    const-string v5, "pref_camera_recordgesture_key"

    const-string v4, "pref_camera_recordgesture_key"

    invoke-interface {p0, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "gesture-on"

    :goto_5
    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 383
    const/4 v3, 0x5

    .line 385
    :cond_5
    const/4 v4, 0x5

    if-ne v3, v4, :cond_6

    .line 388
    const-string v4, "pref_camera_videoquality_key"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 389
    const-string v4, "pref_camera_video_duration_key"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 392
    :cond_6
    const-string v4, "pref_version_key"

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 393
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 356
    .restart local v2       #quality:Ljava/lang/String;
    :cond_7
    const-string v4, "75"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 357
    const-string v2, "fine"

    goto :goto_2

    .line 359
    :cond_8
    const-string v2, "superfine"

    goto :goto_2

    .line 365
    .end local v2           #quality:Ljava/lang/String;
    :cond_9
    const-string v4, "none"

    goto :goto_3

    .line 372
    :cond_a
    const-string v4, "wdr-off"

    goto :goto_4

    .line 379
    :cond_b
    const-string v4, "gesture-off"

    goto :goto_5
.end method

.method public static writePreferredCameraId(Landroid/content/SharedPreferences;I)V
    .locals 3
    .parameter "pref"
    .parameter "cameraId"

    .prologue
    .line 416
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 417
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_id_key"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 418
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 419
    return-void
.end method
