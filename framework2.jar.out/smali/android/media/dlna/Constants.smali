.class public interface abstract Landroid/media/dlna/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/dlna/Constants$BranchContent;,
        Landroid/media/dlna/Constants$NodeType;,
        Landroid/media/dlna/Constants$MediaNodeInfo;,
        Landroid/media/dlna/Constants$NodeInfo;,
        Landroid/media/dlna/Constants$MediaInfo;,
        Landroid/media/dlna/Constants$PlaybackStateEnum;,
        Landroid/media/dlna/Constants$PlaybackInfoEnum;,
        Landroid/media/dlna/Constants$PlaybackControlEnum;,
        Landroid/media/dlna/Constants$CurrentAction;,
        Landroid/media/dlna/Constants$MediaTypeEnum;,
        Landroid/media/dlna/Constants$DeviceStatusEnum;,
        Landroid/media/dlna/Constants$BasicEnum;
    }
.end annotation


# static fields
.field public static final DEVICES_CHANGED_ACTION:Ljava/lang/String; = "media.dlnaservice.action.devicesChanged"

.field public static final DLNA_SERVICE_LOGTAG:Ljava/lang/String; = "DLNAService"

.field public static final FILE_SERVER_LOGTAG:Ljava/lang/String; = "FileServer"

.field public static final ROOT_DIR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/dlna/Constants;->ROOT_DIR:Ljava/lang/String;

    return-void
.end method
