.class Lcom/android/camera/PanoramaActivity$SetupCameraThread;
.super Ljava/lang/Thread;
.source "PanoramaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PanoramaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetupCameraThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PanoramaActivity;


# direct methods
.method private constructor <init>(Lcom/android/camera/PanoramaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/camera/PanoramaActivity$SetupCameraThread;->this$0:Lcom/android/camera/PanoramaActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PanoramaActivity;Lcom/android/camera/PanoramaActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/android/camera/PanoramaActivity$SetupCameraThread;-><init>(Lcom/android/camera/PanoramaActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity$SetupCameraThread;->this$0:Lcom/android/camera/PanoramaActivity;

    #calls: Lcom/android/camera/PanoramaActivity;->setupCamera()V
    invoke-static {v1}, Lcom/android/camera/PanoramaActivity;->access$000(Lcom/android/camera/PanoramaActivity;)V
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 178
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, e:Lcom/android/camera/CameraHardwareException;
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity$SetupCameraThread;->this$0:Lcom/android/camera/PanoramaActivity;

    iput-boolean v2, v1, Lcom/android/camera/ActivityBase;->mOpenCameraFail:Z

    goto :goto_0

    .line 175
    .end local v0           #e:Lcom/android/camera/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 176
    .local v0, e:Lcom/android/camera/CameraDisabledException;
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity$SetupCameraThread;->this$0:Lcom/android/camera/PanoramaActivity;

    iput-boolean v2, v1, Lcom/android/camera/ActivityBase;->mCameraDisabled:Z

    goto :goto_0
.end method
