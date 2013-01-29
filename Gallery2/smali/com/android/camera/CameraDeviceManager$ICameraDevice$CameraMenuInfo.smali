.class public Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;
.super Ljava/lang/Object;
.source "CameraDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraDeviceManager$ICameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraMenuInfo"
.end annotation


# instance fields
.field mMainMenuDefaultValueArrayId:I

.field mMainMenuKeyArrayId:I

.field mMainOtherMenuKeyArrayId:I

.field mSceneMenuKeyArrayId:I

.field mSceneMenuValueArrayId:I

.field mWhiteBalanceKeyArrayId:I

.field mWhiteBalanceValueArrayId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
