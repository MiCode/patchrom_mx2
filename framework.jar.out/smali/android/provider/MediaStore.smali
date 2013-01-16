.class public final Landroid/provider/MediaStore;
.super Ljava/lang/Object;
.source "MediaStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/MediaStore$Video;,
        Landroid/provider/MediaStore$Audio;,
        Landroid/provider/MediaStore$Images;,
        Landroid/provider/MediaStore$InternalThumbnails;,
        Landroid/provider/MediaStore$Files;,
        Landroid/provider/MediaStore$MediaColumns;
    }
.end annotation


# static fields
.field public static final ACTION_ALBUMART_CHANGED:Ljava/lang/String; = "com.android.provider.MediaProvider.albumartchanged"

.field public static final ACTION_EXTERNAL_VOLUME_MOUNTED:Ljava/lang/String; = "com.android.provider.MediaProvider.external_volume_mounted"

.field public static final ACTION_IMAGE_CAPTURE:Ljava/lang/String; = "android.media.action.IMAGE_CAPTURE"

.field public static final ACTION_MTP_SESSION_END:Ljava/lang/String; = "android.provider.action.MTP_SESSION_END"

.field public static final ACTION_VIDEO_CAPTURE:Ljava/lang/String; = "android.media.action.VIDEO_CAPTURE"

.field public static final AUTHORITY:Ljava/lang/String; = "media"

.field private static final CONTENT_AUTHORITY_SLASH:Ljava/lang/String; = "content://media/"

.field public static final EXTERNAL_DISK_PATH:Ljava/lang/String; = "/data/system/scsi"

.field public static final EXTRA_DURATION_LIMIT:Ljava/lang/String; = "android.intent.extra.durationLimit"

.field public static final EXTRA_FINISH_ON_COMPLETION:Ljava/lang/String; = "android.intent.extra.finishOnCompletion"

.field public static final EXTRA_FULL_SCREEN:Ljava/lang/String; = "android.intent.extra.fullScreen"

.field public static final EXTRA_MEDIA_ALBUM:Ljava/lang/String; = "android.intent.extra.album"

.field public static final EXTRA_MEDIA_ARTIST:Ljava/lang/String; = "android.intent.extra.artist"

.field public static final EXTRA_MEDIA_FOCUS:Ljava/lang/String; = "android.intent.extra.focus"

.field public static final EXTRA_MEDIA_TITLE:Ljava/lang/String; = "android.intent.extra.title"

.field public static final EXTRA_OUTPUT:Ljava/lang/String; = "output"

.field public static final EXTRA_SCREEN_ORIENTATION:Ljava/lang/String; = "android.intent.extra.screenOrientation"

.field public static final EXTRA_SHOW_ACTION_ICONS:Ljava/lang/String; = "android.intent.extra.showActionIcons"

.field public static final EXTRA_SIZE_LIMIT:Ljava/lang/String; = "android.intent.extra.sizeLimit"

.field public static final EXTRA_VIDEO_QUALITY:Ljava/lang/String; = "android.intent.extra.videoQuality"

.field public static final INTENT_ACTION_MEDIA_PLAY_FROM_SEARCH:Ljava/lang/String; = "android.media.action.MEDIA_PLAY_FROM_SEARCH"

.field public static final INTENT_ACTION_MEDIA_SEARCH:Ljava/lang/String; = "android.intent.action.MEDIA_SEARCH"

.field public static final INTENT_ACTION_MEIZU_AUDIO_APP_MMS:Ljava/lang/String; = "android.media.action.MEIZU_AUDIO_APP_MMS"

.field public static final INTENT_ACTION_MEIZU_CAMERA_APP:Ljava/lang/String; = "android.media.action.MEIZU_CAMERA_APP"

.field public static final INTENT_ACTION_MEIZU_CAMERA_APP_MMS:Ljava/lang/String; = "android.media.action.MEIZU_CAMERA_APP_MMS"

.field public static final INTENT_ACTION_MEIZU_CAMERA_APP_MMS_EX:Ljava/lang/String; = "android.media.action.MEIZU_CAMERA_APP_MMS_EX"

.field public static final INTENT_ACTION_MEIZU_CAMERA_LOCK_SCREEN_CAMERA:Ljava/lang/String; = "android.media.action.MEIZU_LOCK_SCREEN_CAMERA"

.field public static final INTENT_ACTION_MEIZU_CAMERA_VIDEO_APP_MMS_EX:Ljava/lang/String; = "android.media.action.MEIZU_CAMERA_VIDEO_APP_MMS_EX"

.field public static final INTENT_ACTION_MEIZU_VIDEO_APP:Ljava/lang/String; = "android.media.action.MEIZU_VIDEO_APP"

.field public static final INTENT_ACTION_MEIZU_VIDEO_APP_MMS:Ljava/lang/String; = "android.media.action.MEIZU_VIDEO_APP_MMS"

.field public static final INTENT_ACTION_MUSIC_PLAYER:Ljava/lang/String; = "android.intent.action.MUSIC_PLAYER"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INTENT_ACTION_STILL_IMAGE_CAMERA:Ljava/lang/String; = "android.media.action.STILL_IMAGE_CAMERA"

.field public static final INTENT_ACTION_STILL_IMAGE_CAMERA_MEIZU_EX:Ljava/lang/String; = "android.media.action.STILL_IMAGE_CAMERA_MEIZU_EX"

.field public static final INTENT_ACTION_VIDEO_CAMERA:Ljava/lang/String; = "android.media.action.VIDEO_CAMERA"

.field public static final MEDIA_IGNORE_FILENAME:Ljava/lang/String; = ".nomedia"

.field public static final MEDIA_LIST:Ljava/lang/String; = "media_list"

.field public static final MEDIA_SCANNER_VOLUME:Ljava/lang/String; = "volume"

.field public static final MEIZU_EXTRA_OUTPUT_VIDEO:Ljava/lang/String; = "output_video"

.field public static final PARAM_DELETE_DATA:Ljava/lang/String; = "deletedata"

.field public static final SCANNING_CAMERA:Ljava/lang/String; = "scanning_camera"

.field public static final SCANNING_MUSIC:Ljava/lang/String; = "scanning_music"

.field public static final SCANNING_PHOTO:Ljava/lang/String; = "scanning_photo"

.field public static final SCANNING_VIDEO:Ljava/lang/String; = "scanning_video"

.field private static final TAG:Ljava/lang/String; = "MediaStore"

.field public static final UNHIDE_CALL:Ljava/lang/String; = "unhide"

.field public static final UNKNOWN_STRING:Ljava/lang/String; = "<unknown>"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1892
    return-void
.end method

.method public static getMediaScannerUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 2184
    const-string v0, "content://media/none/media_scanner"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getScanningCameraUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 2246
    const-string v0, "content://media/none/scanning_camera"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getScanningMusicUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 2234
    const-string v0, "content://media/none/scanning_music"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getScanningPhotoUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 2238
    const-string v0, "content://media/none/scanning_photo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getScanningUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "path"

    .prologue
    const/4 v0, 0x0

    .line 2250
    if-nez p0, :cond_1

    .line 2265
    :cond_0
    :goto_0
    return-object v0

    .line 2253
    :cond_1
    const-string v1, "Music"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2254
    invoke-static {}, Landroid/provider/MediaStore;->getScanningMusicUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 2256
    :cond_2
    const-string v1, "Photo"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2257
    invoke-static {}, Landroid/provider/MediaStore;->getScanningPhotoUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 2259
    :cond_3
    const-string v1, "Video"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2260
    invoke-static {}, Landroid/provider/MediaStore;->getScanningVideoUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 2262
    :cond_4
    const-string v1, "Camera"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2263
    invoke-static {}, Landroid/provider/MediaStore;->getScanningCameraUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static getScanningVideoUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 2242
    const-string v0, "content://media/none/scanning_video"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 2209
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://media/none/version"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2212
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 2214
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2215
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2218
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2221
    :cond_0
    :goto_0
    return-object v2

    .line 2218
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method
