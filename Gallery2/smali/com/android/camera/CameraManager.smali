.class public Lcom/android/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraManager$1;,
        Lcom/android/camera/CameraManager$CameraProxy;,
        Lcom/android/camera/CameraManager$CameraHandler;
    }
.end annotation


# static fields
.field private static sCameraManager:Lcom/android/camera/CameraManager;


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mCameraEv:I

.field private mCameraHandler:Landroid/os/Handler;

.field private mCameraProxy:Lcom/android/camera/CameraManager$CameraProxy;

.field private mCameraUpdateState:I

.field private mFaceArea:[I

.field private mFaceNum:I

.field private mFacePos:[I

.field private mFlashStatus:I

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mReconnectException:Ljava/io/IOException;

.field private mSig:Landroid/os/ConditionVariable;

.field private mSmileLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/android/camera/CameraManager;

    invoke-direct {v0}, Lcom/android/camera/CameraManager;-><init>()V

    sput-object v0, Lcom/android/camera/CameraManager;->sCameraManager:Lcom/android/camera/CameraManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 110
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, p0, Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;

    .line 111
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Camera Handler Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, ht:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 113
    new-instance v1, Lcom/android/camera/CameraManager$CameraHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/camera/CameraManager$CameraHandler;-><init>(Lcom/android/camera/CameraManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/CameraManager;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/android/camera/CameraManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/camera/CameraManager;->mFlashStatus:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/camera/CameraManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/android/camera/CameraManager;->mFlashStatus:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/camera/CameraManager;Lcom/android/camera/CameraManager$CameraProxy;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/camera/CameraManager;->mCameraProxy:Lcom/android/camera/CameraManager$CameraProxy;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/CameraManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/CameraManager;)Ljava/io/IOException;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/CameraManager;->mReconnectException:Ljava/io/IOException;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/CameraManager;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/camera/CameraManager;->mReconnectException:Ljava/io/IOException;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/camera/CameraManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/camera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/camera/CameraManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/camera/CameraManager;->mSmileLevel:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/camera/CameraManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/android/camera/CameraManager;->mSmileLevel:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/CameraManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/camera/CameraManager;->mCameraEv:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/camera/CameraManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/android/camera/CameraManager;->mCameraEv:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/CameraManager;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/CameraManager;->mFaceArea:[I

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/camera/CameraManager;[I)[I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/camera/CameraManager;->mFaceArea:[I

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/camera/CameraManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/camera/CameraManager;->mFaceNum:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/camera/CameraManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/android/camera/CameraManager;->mFaceNum:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/CameraManager;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/CameraManager;->mFacePos:[I

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/camera/CameraManager;[I)[I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/camera/CameraManager;->mFacePos:[I

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/camera/CameraManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/android/camera/CameraManager;->mCameraUpdateState:I

    return p1
.end method

.method public static instance()Lcom/android/camera/CameraManager;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/android/camera/CameraManager;->sCameraManager:Lcom/android/camera/CameraManager;

    return-object v0
.end method


# virtual methods
.method cameraOpen(I)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 2
    .parameter "cameraId"

    .prologue
    const/4 v0, 0x0

    .line 334
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    .line 335
    iget-object v1, p0, Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 336
    new-instance v1, Lcom/android/camera/CameraManager$CameraProxy;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/CameraManager$CameraProxy;-><init>(Lcom/android/camera/CameraManager;Lcom/android/camera/CameraManager$1;)V

    iput-object v1, p0, Lcom/android/camera/CameraManager;->mCameraProxy:Lcom/android/camera/CameraManager$CameraProxy;

    .line 337
    iget-object v0, p0, Lcom/android/camera/CameraManager;->mCameraProxy:Lcom/android/camera/CameraManager$CameraProxy;

    .line 339
    :cond_0
    return-object v0
.end method
