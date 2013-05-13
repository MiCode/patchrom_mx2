.class public Lcom/meizu/internal/policy/impl/ScreenshotHelper;
.super Ljava/lang/Object;
.source "ScreenshotHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenShotStub;,
        Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;
    }
.end annotation


# static fields
.field private static final ACTION_LAUNCHER_BROUGHT_TO_BACK:Ljava/lang/String; = "com.meizu.LAUNCHER_WITH_BROUGHT_TO_BACK"

.field private static final SCREENSHOT_FAILED:I = 0x0

.field private static final SCREENSHOT_NO_UPDATE:I = 0x3eb

.field private static final SCREENSHOT_SUCCESSFUL:I = 0x1

.field private static final SCREENSHOT_TRAN:I = 0x2

.field private static final SET_BACKGROUND:I = 0x3e8

.field private static final SET_STATUSBAR_SCREENSHOT:I = 0x3ea

.field private static final TAG_KEYGUARD:Ljava/lang/String; = "Keyguard"

.field private static contactsClassName:Ljava/lang/String; = null

.field private static contactsPackageName:Ljava/lang/String; = null

.field private static emailClassName:Ljava/lang/String; = null

.field private static emailPackageName:Ljava/lang/String; = null

.field private static final galleryPackageName:Ljava/lang/String; = "com.cooliris.media.Gallery"

.field private static final launcherComponentName:Landroid/content/ComponentName; = null

.field private static mmsClassName:Ljava/lang/String; = null

.field private static mmsPackageName:Ljava/lang/String; = null

.field private static phonePackageName:Ljava/lang/String; = null

.field private static final videoPackageName:Ljava/lang/String; = "com.cooliris.video.media.Gallery"


# instance fields
.field private mAcm:Landroid/content/pm/AccessControlManager;

.field protected mActivityManager:Landroid/app/ActivityManager;

.field private final mBinder:Landroid/os/IBinder;

.field private mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

.field private mCameraScreenshot:Landroid/graphics/Bitmap;

.field private mCaptureScreen:Landroid/graphics/Bitmap;

.field private mContactsBitmapCopy:Landroid/graphics/Bitmap;

.field private mContactsShareBitmap:Landroid/graphics/Bitmap;

.field private mContactsShareFd:Landroid/os/ParcelFileDescriptor;

.field private mContactsShareFileName:Ljava/lang/String;

.field private mContactsShareMemoryFile:Landroid/os/MemoryFile;

.field private mContext:Landroid/content/Context;

.field private mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

.field private mEmailBitmapCopy:Landroid/graphics/Bitmap;

.field private mEmailShareBitmap:Landroid/graphics/Bitmap;

.field private mEmailShareFd:Landroid/os/ParcelFileDescriptor;

.field private mEmailShareFileName:Ljava/lang/String;

.field private mEmailShareMemoryFile:Landroid/os/MemoryFile;

.field private final mHandler:Landroid/os/Handler;

.field private final mHeight:I

.field private mIsNeedUpdateLauncherWallpaper:Z

.field private mIsUseCaptureScreenBitmap:Z

.field private mKeyguardViewMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

.field private mMmsBitmapCopy:Landroid/graphics/Bitmap;

.field private mMmsShareBitmap:Landroid/graphics/Bitmap;

.field private mMmsShareFd:Landroid/os/ParcelFileDescriptor;

.field private mMmsShareFileName:Ljava/lang/String;

.field private mMmsShareMemoryFile:Landroid/os/MemoryFile;

.field private mRunTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenshotFinish:Z

.field private final mSize:I

.field private mStatusbarBitmap:Landroid/graphics/Bitmap;

.field private mStatusbarBitmapCopy:Landroid/graphics/Bitmap;

.field private mStatusbarFd:Landroid/os/ParcelFileDescriptor;

.field private mStatusbarFileName:Ljava/lang/String;

.field private mStatusbarHeight:I

.field private mStatusbarMemoryFile:Landroid/os/MemoryFile;

.field private mStatusbarSize:I

.field private mStatusbarWidth:I

.field private mSystemReady:Z

.field private mUpdateWhich:I

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field private final mWidth:I

.field private mpkgPasswordScreenshot:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.launcher"

    const-string v2, "com.android.launcher2.Launcher"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->launcherComponentName:Landroid/content/ComponentName;

    .line 61
    const-string v0, "com.android.mms"

    sput-object v0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mmsPackageName:Ljava/lang/String;

    .line 62
    const-string v0, "com.android.contacts"

    sput-object v0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->contactsPackageName:Ljava/lang/String;

    .line 63
    const-string v0, "com.android.phone"

    sput-object v0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->phonePackageName:Ljava/lang/String;

    .line 64
    const-string v0, "com.android.mms.ui.ConversationList"

    sput-object v0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mmsClassName:Ljava/lang/String;

    .line 65
    const-string v0, "com.android.email"

    sput-object v0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->emailPackageName:Ljava/lang/String;

    .line 66
    const-string v0, "com.android.contacts.activities.DialtactsActivity"

    sput-object v0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->contactsClassName:Ljava/lang/String;

    .line 67
    const-string v0, "com.android.email.activity.ShowEmailShortCut"

    sput-object v0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->emailClassName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/meizu/internal/policy/impl/LockControllerMonitor;Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 5
    .parameter "context"
    .parameter "lockControllerMonitor"
    .parameter "keyguardViewMediator"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 224
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v2, -0x1

    iput v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mUpdateWhich:I

    .line 86
    iput-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 88
    iput-boolean v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mIsNeedUpdateLauncherWallpaper:Z

    .line 89
    iput-boolean v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mIsUseCaptureScreenBitmap:Z

    .line 90
    iput-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCaptureScreen:Landroid/graphics/Bitmap;

    .line 93
    iput-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareBitmap:Landroid/graphics/Bitmap;

    .line 94
    iput-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareFd:Landroid/os/ParcelFileDescriptor;

    .line 95
    const-string v2, "MmsScreenshotShare.png"

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareFileName:Ljava/lang/String;

    .line 98
    iput-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareBitmap:Landroid/graphics/Bitmap;

    .line 99
    iput-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareFd:Landroid/os/ParcelFileDescriptor;

    .line 100
    const-string v2, "ContactsScreenshotShare.png"

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareFileName:Ljava/lang/String;

    .line 103
    iput-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarBitmap:Landroid/graphics/Bitmap;

    .line 104
    iput-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarBitmapCopy:Landroid/graphics/Bitmap;

    .line 105
    iput-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarFd:Landroid/os/ParcelFileDescriptor;

    .line 106
    const-string v2, "ActivityShotShare.png"

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarFileName:Ljava/lang/String;

    .line 109
    iput-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mEmailShareBitmap:Landroid/graphics/Bitmap;

    .line 110
    iput-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mEmailShareFd:Landroid/os/ParcelFileDescriptor;

    .line 111
    const-string v2, "EmailShotShare.png"

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mEmailShareFileName:Ljava/lang/String;

    .line 113
    iput-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mEmailBitmapCopy:Landroid/graphics/Bitmap;

    .line 114
    iput-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsBitmapCopy:Landroid/graphics/Bitmap;

    .line 115
    iput-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsBitmapCopy:Landroid/graphics/Bitmap;

    .line 122
    iput-boolean v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mScreenshotFinish:Z

    .line 124
    iput-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mActivityManager:Landroid/app/ActivityManager;

    .line 126
    iput-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mAcm:Landroid/content/pm/AccessControlManager;

    .line 130
    iput-boolean v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mSystemReady:Z

    .line 167
    new-instance v2, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;

    invoke-direct {v2, p0}, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;-><init>(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)V

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mHandler:Landroid/os/Handler;

    .line 225
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContext:Landroid/content/Context;

    .line 226
    iput-object p2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    .line 228
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mActivityManager:Landroid/app/ActivityManager;

    .line 230
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 231
    .local v1, metrics:Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mWidth:I

    .line 232
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mHeight:I

    .line 233
    iget v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mWidth:I

    iget v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mHeight:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mSize:I

    .line 235
    iput-object p3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mKeyguardViewMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    .line 236
    new-instance v2, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenShotStub;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenShotStub;-><init>(Lcom/meizu/internal/policy/impl/ScreenshotHelper;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mBinder:Landroid/os/IBinder;

    .line 238
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 239
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.meizu.LAUNCHER_WITH_BROUGHT_TO_BACK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    new-instance v2, Lcom/meizu/internal/policy/impl/ScreenshotHelper$2;

    invoke-direct {v2, p0}, Lcom/meizu/internal/policy/impl/ScreenshotHelper$2;-><init>(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)V

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 251
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mmsPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/meizu/internal/policy/impl/ScreenshotHelper;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->copyBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsBitmapCopy:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mEmailShareBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mEmailBitmapCopy:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarBitmapCopy:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->emailPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->contactsPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->phonePackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    return-object v0
.end method

.method static synthetic access$602(Lcom/meizu/internal/policy/impl/ScreenshotHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mScreenshotFinish:Z

    return p1
.end method

.method static synthetic access$702(Lcom/meizu/internal/policy/impl/ScreenshotHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mIsNeedUpdateLauncherWallpaper:Z

    return p1
.end method

.method static synthetic access$800(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsBitmapCopy:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static bitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 9
    .parameter "bitmap"
    .parameter "fileName"

    .prologue
    .line 522
    if-nez p0, :cond_1

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    const-string v0, "Test_copyBitmap"

    .line 526
    .local v0, TAG:Ljava/lang/String;
    :try_start_0
    const-string v6, "/data/anr"

    .line 527
    .local v6, saveDirectory:Ljava/lang/String;
    move-object v4, p1

    .line 528
    .local v4, fileNameString:Ljava/lang/String;
    const/4 v5, 0x0

    .line 529
    .local v5, outputStream:Ljava/io/OutputStream;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 530
    .local v1, dir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 531
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 532
    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    .local v3, file:Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    .end local v5           #outputStream:Ljava/io/OutputStream;
    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 534
    .restart local v5       #outputStream:Ljava/io/OutputStream;
    if-eqz v5, :cond_0

    .line 535
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {p0, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 536
    const-string v7, "Test_copyBitmap"

    const-string v8, "print screen to file Failed!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 539
    .end local v1           #dir:Ljava/io/File;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #fileNameString:Ljava/lang/String;
    .end local v5           #outputStream:Ljava/io/OutputStream;
    .end local v6           #saveDirectory:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 540
    .local v2, ex:Ljava/io/FileNotFoundException;
    const-string v7, "Test_copyBitmap"

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 541
    .end local v2           #ex:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 542
    .local v2, ex:Ljava/lang/Exception;
    const-string v7, "Test_copyBitmap"

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private copyBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "srcBitmap"
    .parameter "dstBitmap"

    .prologue
    const/4 v2, 0x0

    .line 514
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 515
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 516
    .local v0, cv:Landroid/graphics/Canvas;
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 517
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 518
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 519
    return-void
.end method

.method private makeSureFdValid(I)V
    .locals 6
    .parameter "which"

    .prologue
    .line 357
    if-nez p1, :cond_7

    .line 358
    :try_start_0
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareFd:Landroid/os/ParcelFileDescriptor;

    if-nez v2, :cond_0

    .line 359
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareMemoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v2}, Landroid/os/MemoryFile;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareFd:Landroid/os/ParcelFileDescriptor;

    .line 361
    :cond_0
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-nez v2, :cond_2

    .line 362
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareMemoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v2}, Landroid/os/MemoryFile;->close()V

    .line 363
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 364
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareMemoryFile:Landroid/os/MemoryFile;

    .line 365
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 367
    :try_start_1
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareMemoryFile:Landroid/os/MemoryFile;

    if-nez v2, :cond_1

    .line 368
    new-instance v2, Landroid/os/MemoryFile;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareFileName:Ljava/lang/String;

    iget v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mSize:I

    invoke-direct {v2, v3, v4}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareMemoryFile:Landroid/os/MemoryFile;

    .line 369
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareMemoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v2}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 370
    .local v1, fd:Ljava/io/FileDescriptor;
    iget v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mSize:I

    iget v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mWidth:I

    iget v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createShareBitmap(Ljava/io/FileDescriptor;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareBitmap:Landroid/graphics/Bitmap;

    .line 372
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 377
    .end local v1           #fd:Ljava/io/FileDescriptor;
    :cond_1
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareMemoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v2}, Landroid/os/MemoryFile;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareFd:Landroid/os/ParcelFileDescriptor;

    .line 403
    :cond_2
    :goto_1
    iget v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mWidth:I

    iput v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarWidth:I

    .line 404
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarHeight:I

    .line 405
    iget v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarWidth:I

    iget v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarHeight:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarSize:I

    .line 407
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarFd:Landroid/os/ParcelFileDescriptor;

    if-nez v2, :cond_3

    .line 408
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarMemoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v2}, Landroid/os/MemoryFile;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarFd:Landroid/os/ParcelFileDescriptor;

    .line 410
    :cond_3
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-nez v2, :cond_5

    .line 411
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarMemoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v2}, Landroid/os/MemoryFile;->close()V

    .line 412
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 413
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarMemoryFile:Landroid/os/MemoryFile;

    .line 414
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarBitmap:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 418
    :try_start_3
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarMemoryFile:Landroid/os/MemoryFile;

    if-nez v2, :cond_4

    .line 419
    new-instance v2, Landroid/os/MemoryFile;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarFileName:Ljava/lang/String;

    iget v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarSize:I

    invoke-direct {v2, v3, v4}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarMemoryFile:Landroid/os/MemoryFile;

    .line 420
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarMemoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v2}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 421
    .restart local v1       #fd:Ljava/io/FileDescriptor;
    iget v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarSize:I

    iget v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarWidth:I

    iget v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createShareBitmap(Ljava/io/FileDescriptor;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarBitmap:Landroid/graphics/Bitmap;

    .line 423
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 428
    .end local v1           #fd:Ljava/io/FileDescriptor;
    :cond_4
    :goto_2
    :try_start_4
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarMemoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v2}, Landroid/os/MemoryFile;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarFd:Landroid/os/ParcelFileDescriptor;

    .line 430
    :cond_5
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarBitmapCopy:Landroid/graphics/Bitmap;

    if-nez v2, :cond_6

    .line 431
    iget v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarWidth:I

    iget v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarBitmapCopy:Landroid/graphics/Bitmap;

    .line 436
    :cond_6
    :goto_3
    return-void

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, ex:Ljava/io/IOException;
    const-string v2, "Keyguard"

    const-string v3, "Screenshot: KeyguardViewManager IOException"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 433
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 434
    .restart local v0       #ex:Ljava/io/IOException;
    const-string v2, "Screenshot error"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException ex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 379
    .end local v0           #ex:Ljava/io/IOException;
    :cond_7
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 380
    :try_start_5
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareFd:Landroid/os/ParcelFileDescriptor;

    if-nez v2, :cond_8

    .line 381
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareMemoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v2}, Landroid/os/MemoryFile;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareFd:Landroid/os/ParcelFileDescriptor;

    .line 383
    :cond_8
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-nez v2, :cond_2

    .line 384
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareMemoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v2}, Landroid/os/MemoryFile;->close()V

    .line 385
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 386
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareMemoryFile:Landroid/os/MemoryFile;

    .line 387
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareBitmap:Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 389
    :try_start_6
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareMemoryFile:Landroid/os/MemoryFile;

    if-nez v2, :cond_9

    .line 390
    new-instance v2, Landroid/os/MemoryFile;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareFileName:Ljava/lang/String;

    iget v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mSize:I

    invoke-direct {v2, v3, v4}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareMemoryFile:Landroid/os/MemoryFile;

    .line 391
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareMemoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v2}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 392
    .restart local v1       #fd:Ljava/io/FileDescriptor;
    iget v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mSize:I

    iget v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mWidth:I

    iget v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createShareBitmap(Ljava/io/FileDescriptor;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareBitmap:Landroid/graphics/Bitmap;

    .line 394
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 399
    .end local v1           #fd:Ljava/io/FileDescriptor;
    :cond_9
    :goto_4
    :try_start_7
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareMemoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v2}, Landroid/os/MemoryFile;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareFd:Landroid/os/ParcelFileDescriptor;

    goto/16 :goto_1

    .line 396
    :catch_2
    move-exception v0

    .line 397
    .restart local v0       #ex:Ljava/io/IOException;
    const-string v2, "Keyguard"

    const-string v3, "Screenshot: KeyguardViewManager IOException"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 425
    .end local v0           #ex:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 426
    .restart local v0       #ex:Ljava/io/IOException;
    const-string v2, "Keyguard"

    const-string v3, "Screenshot: KeyguardViewManager IOException"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_2
.end method

.method private reloadRecentApp(IZZ)V
    .locals 8
    .parameter "which"
    .parameter "updateStatusbar"
    .parameter "screenshotApp"

    .prologue
    const/4 v7, 0x2

    .line 439
    iput p1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mUpdateWhich:I

    .line 440
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mBinder:Landroid/os/IBinder;

    invoke-static {v3}, Landroid/app/IUnlockScreenShotReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUnlockScreenShotReceiver;

    move-result-object v2

    .line 442
    .local v2, receiver:Landroid/app/IUnlockScreenShotReceiver;
    const-string v3, "Keyguard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Screenshot: reloadRecentApp and which = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isCalling = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v5}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->isCalling()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", time is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const/4 v1, 0x0

    .line 446
    .local v1, isLauncher:Z
    if-eqz p3, :cond_0

    .line 447
    if-nez p1, :cond_4

    .line 448
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->makeSureFdValid(I)V

    .line 451
    :try_start_0
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->isCalling()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 452
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    sget-object v4, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->phonePackageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareFd:Landroid/os/ParcelFileDescriptor;

    invoke-interface {v3, v4, v5, v2}, Landroid/app/IActivityManager;->getScreenShotForPackage(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/app/IUnlockScreenShotReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    if-eqz p2, :cond_1

    .line 487
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v3}, Landroid/app/ActivityManager;->isHomeScreenVisibility()Z

    move-result v1

    .line 490
    :cond_1
    if-eqz p2, :cond_2

    .line 491
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mKeyguardViewMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3, v1, v4, v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->requestScreenshotOfStatusbar(ZLandroid/os/ParcelFileDescriptor;Landroid/app/IUnlockScreenShotReceiver;)V

    .line 493
    :cond_2
    return-void

    .line 455
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    sget-object v4, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->contactsClassName:Ljava/lang/String;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareFd:Landroid/os/ParcelFileDescriptor;

    invoke-interface {v3, v4, v5, v2}, Landroid/app/IActivityManager;->getScreenShotForClass(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/app/IUnlockScreenShotReceiver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 458
    :catch_0
    move-exception v0

    .line 459
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "Keyguard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Screenshot: RemoteException e: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 464
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_4
    if-ne p1, v7, :cond_6

    .line 465
    invoke-direct {p0, v7}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->makeSureFdValid(I)V

    .line 467
    if-eqz p3, :cond_5

    .line 471
    :cond_5
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    sget-object v4, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mmsClassName:Ljava/lang/String;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareFd:Landroid/os/ParcelFileDescriptor;

    invoke-interface {v3, v4, v5, v2}, Landroid/app/IActivityManager;->getScreenShotForClass(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/app/IUnlockScreenShotReceiver;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 473
    :catch_1
    move-exception v0

    .line 474
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v3, "Keyguard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Screenshot: RemoteException e: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 476
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_6
    const/4 v3, 0x3

    if-ne p1, v3, :cond_0

    .line 479
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    sget-object v4, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->emailClassName:Ljava/lang/String;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mEmailShareFd:Landroid/os/ParcelFileDescriptor;

    invoke-interface {v3, v4, v5, v2}, Landroid/app/IActivityManager;->getScreenShotForClass(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/app/IUnlockScreenShotReceiver;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 481
    :catch_2
    move-exception v0

    .line 482
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v3, "Keyguard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Screenshot: RemoteException e: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public copyContactBitmap(Ljava/lang/String;)V
    .locals 1
    .parameter "fileName"

    .prologue
    .line 547
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsBitmapCopy:Landroid/graphics/Bitmap;

    invoke-static {v0, p1}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->bitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 548
    return-void
.end method

.method public getStatusScreenshot()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTopActivitName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 496
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mRunTasks:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mRunTasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 497
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mRunTasks:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 498
    .local v0, info:Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v0, :cond_0

    .line 499
    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 502
    .end local v0           #info:Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isScreenshotSuccess()Z
    .locals 1

    .prologue
    .line 510
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mScreenshotFinish:Z

    return v0
.end method

.method public onSystemReady()V
    .locals 6

    .prologue
    .line 552
    iget v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mWidth:I

    iput v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarWidth:I

    .line 553
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarHeight:I

    .line 554
    iget v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarWidth:I

    iget v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarHeight:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarSize:I

    .line 556
    :try_start_0
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareMemoryFile:Landroid/os/MemoryFile;

    if-nez v2, :cond_0

    .line 557
    new-instance v2, Landroid/os/MemoryFile;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareFileName:Ljava/lang/String;

    iget v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mSize:I

    invoke-direct {v2, v3, v4}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareMemoryFile:Landroid/os/MemoryFile;

    .line 558
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareMemoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v2}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 559
    .local v1, fd:Ljava/io/FileDescriptor;
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareMemoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v2}, Landroid/os/MemoryFile;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareFd:Landroid/os/ParcelFileDescriptor;

    .line 560
    iget v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mSize:I

    iget v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mWidth:I

    iget v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createShareBitmap(Ljava/io/FileDescriptor;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareBitmap:Landroid/graphics/Bitmap;

    .line 562
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 565
    .end local v1           #fd:Ljava/io/FileDescriptor;
    :cond_0
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareMemoryFile:Landroid/os/MemoryFile;

    if-nez v2, :cond_1

    .line 566
    new-instance v2, Landroid/os/MemoryFile;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareFileName:Ljava/lang/String;

    iget v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mSize:I

    invoke-direct {v2, v3, v4}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareMemoryFile:Landroid/os/MemoryFile;

    .line 567
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareMemoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v2}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 568
    .restart local v1       #fd:Ljava/io/FileDescriptor;
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareMemoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v2}, Landroid/os/MemoryFile;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareFd:Landroid/os/ParcelFileDescriptor;

    .line 569
    iget v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mSize:I

    iget v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mWidth:I

    iget v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createShareBitmap(Ljava/io/FileDescriptor;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareBitmap:Landroid/graphics/Bitmap;

    .line 571
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 574
    .end local v1           #fd:Ljava/io/FileDescriptor;
    :cond_1
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarMemoryFile:Landroid/os/MemoryFile;

    if-nez v2, :cond_2

    .line 575
    new-instance v2, Landroid/os/MemoryFile;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarFileName:Ljava/lang/String;

    iget v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarSize:I

    invoke-direct {v2, v3, v4}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarMemoryFile:Landroid/os/MemoryFile;

    .line 576
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarMemoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v2}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 577
    .restart local v1       #fd:Ljava/io/FileDescriptor;
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarMemoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v2}, Landroid/os/MemoryFile;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarFd:Landroid/os/ParcelFileDescriptor;

    .line 578
    iget v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarSize:I

    iget v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarWidth:I

    iget v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createShareBitmap(Ljava/io/FileDescriptor;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarBitmap:Landroid/graphics/Bitmap;

    .line 580
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 583
    .end local v1           #fd:Ljava/io/FileDescriptor;
    :cond_2
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mEmailShareMemoryFile:Landroid/os/MemoryFile;

    if-nez v2, :cond_3

    .line 584
    new-instance v2, Landroid/os/MemoryFile;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mEmailShareFileName:Ljava/lang/String;

    iget v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mSize:I

    invoke-direct {v2, v3, v4}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mEmailShareMemoryFile:Landroid/os/MemoryFile;

    .line 585
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mEmailShareMemoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v2}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 586
    .restart local v1       #fd:Ljava/io/FileDescriptor;
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mEmailShareMemoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v2}, Landroid/os/MemoryFile;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mEmailShareFd:Landroid/os/ParcelFileDescriptor;

    .line 587
    iget v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mSize:I

    iget v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mWidth:I

    iget v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createShareBitmap(Ljava/io/FileDescriptor;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mEmailShareBitmap:Landroid/graphics/Bitmap;

    .line 589
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mEmailShareBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 592
    .end local v1           #fd:Ljava/io/FileDescriptor;
    :cond_3
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarBitmapCopy:Landroid/graphics/Bitmap;

    if-nez v2, :cond_4

    .line 593
    iget v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarWidth:I

    iget v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarBitmapCopy:Landroid/graphics/Bitmap;

    .line 596
    :cond_4
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsBitmapCopy:Landroid/graphics/Bitmap;

    if-nez v2, :cond_5

    .line 597
    iget v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mWidth:I

    iget v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsBitmapCopy:Landroid/graphics/Bitmap;

    .line 599
    :cond_5
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsBitmapCopy:Landroid/graphics/Bitmap;

    if-nez v2, :cond_6

    .line 600
    iget v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mWidth:I

    iget v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsBitmapCopy:Landroid/graphics/Bitmap;

    .line 602
    :cond_6
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mEmailBitmapCopy:Landroid/graphics/Bitmap;

    if-nez v2, :cond_7

    .line 603
    iget v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mWidth:I

    iget v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mEmailBitmapCopy:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    :cond_7
    :goto_0
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10805a4

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mpkgPasswordScreenshot:Landroid/graphics/Bitmap;

    .line 610
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x108028d

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCameraScreenshot:Landroid/graphics/Bitmap;

    .line 612
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mSystemReady:Z

    .line 613
    return-void

    .line 605
    :catch_0
    move-exception v0

    .line 606
    .local v0, ex:Ljava/io/IOException;
    const-string v2, "Keyguard"

    const-string v3, "KeyguardViewManager IOException"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeCallback()V
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    .line 259
    return-void
.end method

.method public requestScreenshotAndNoUpdate(I)V
    .locals 4
    .parameter "status"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 347
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 348
    .local v0, orientation:I
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    if-ne v0, v2, :cond_1

    .line 349
    invoke-direct {p0, p1, v3, v2}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->reloadRecentApp(IZZ)V

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    if-eqz p1, :cond_2

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 351
    :cond_2
    invoke-direct {p0, p1, v3, v2}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->reloadRecentApp(IZZ)V

    goto :goto_0
.end method

.method public requestUpdateScreenshot(I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "status"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 262
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mRunTasks:Ljava/util/List;

    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, pkgPasswordLock:Z
    if-nez p1, :cond_6

    .line 265
    iput-boolean v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mScreenshotFinish:Z

    .line 266
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mAcm:Landroid/content/pm/AccessControlManager;

    if-nez v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContext:Landroid/content/Context;

    const-string v5, "access_control"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/AccessControlManager;

    iput-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mAcm:Landroid/content/pm/AccessControlManager;

    .line 269
    :cond_0
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v1}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->isCalling()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 270
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mAcm:Landroid/content/pm/AccessControlManager;

    sget-object v5, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->phonePackageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/content/pm/AccessControlManager;->checkControlPackageType(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 271
    const/4 v0, 0x1

    .line 278
    :cond_1
    :goto_0
    if-nez v0, :cond_4

    move v1, v2

    :goto_1
    invoke-direct {p0, v3, v2, v1}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->reloadRecentApp(IZZ)V

    .line 279
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    if-eqz v1, :cond_2

    .line 280
    if-eqz v0, :cond_5

    .line 281
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mpkgPasswordScreenshot:Landroid/graphics/Bitmap;

    invoke-interface {v1, v3, v4, v2}, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;->updateScreenshot(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Z)V

    .line 286
    :goto_2
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarBitmapCopy:Landroid/graphics/Bitmap;

    invoke-interface {v1, v2}, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;->updateScreenshotOfStatusbar(Landroid/graphics/Bitmap;)V

    .line 288
    :cond_2
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareBitmap:Landroid/graphics/Bitmap;

    .line 343
    :goto_3
    return-object v1

    .line 273
    :cond_3
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mAcm:Landroid/content/pm/AccessControlManager;

    sget-object v5, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->contactsPackageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/content/pm/AccessControlManager;->checkControlPackageType(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mAcm:Landroid/content/pm/AccessControlManager;

    invoke-virtual {v1}, Landroid/content/pm/AccessControlManager;->isAccessControlPasswordEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 275
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v1, v3

    .line 278
    goto :goto_1

    .line 283
    :cond_5
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsBitmapCopy:Landroid/graphics/Bitmap;

    invoke-interface {v1, v3, v4, v2}, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;->updateScreenshot(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_2

    .line 289
    :cond_6
    if-ne p1, v6, :cond_c

    .line 290
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mAcm:Landroid/content/pm/AccessControlManager;

    if-nez v1, :cond_7

    .line 291
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContext:Landroid/content/Context;

    const-string v5, "access_control"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/AccessControlManager;

    iput-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mAcm:Landroid/content/pm/AccessControlManager;

    .line 293
    :cond_7
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mAcm:Landroid/content/pm/AccessControlManager;

    sget-object v5, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mmsPackageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/content/pm/AccessControlManager;->checkControlPackageType(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mAcm:Landroid/content/pm/AccessControlManager;

    invoke-virtual {v1}, Landroid/content/pm/AccessControlManager;->isAccessControlPasswordEnable()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 295
    const/4 v0, 0x1

    .line 297
    :cond_8
    iput-boolean v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mScreenshotFinish:Z

    .line 299
    if-nez v0, :cond_9

    move v3, v2

    :cond_9
    invoke-direct {p0, v6, v2, v3}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->reloadRecentApp(IZZ)V

    .line 300
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    if-eqz v1, :cond_a

    .line 301
    if-eqz v0, :cond_b

    .line 302
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mpkgPasswordScreenshot:Landroid/graphics/Bitmap;

    invoke-interface {v1, v3, v4, v2}, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;->updateScreenshot(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Z)V

    .line 307
    :goto_4
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarBitmapCopy:Landroid/graphics/Bitmap;

    invoke-interface {v1, v2}, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;->updateScreenshotOfStatusbar(Landroid/graphics/Bitmap;)V

    .line 309
    :cond_a
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareBitmap:Landroid/graphics/Bitmap;

    goto :goto_3

    .line 304
    :cond_b
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsBitmapCopy:Landroid/graphics/Bitmap;

    invoke-interface {v1, v3, v4, v2}, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;->updateScreenshot(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_4

    .line 310
    :cond_c
    if-ne p1, v2, :cond_e

    .line 311
    invoke-direct {p0, v2, v2, v3}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->reloadRecentApp(IZZ)V

    .line 312
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    if-eqz v1, :cond_d

    .line 313
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarBitmapCopy:Landroid/graphics/Bitmap;

    invoke-interface {v1, v2}, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;->updateScreenshotOfStatusbar(Landroid/graphics/Bitmap;)V

    :cond_d
    move-object v1, v4

    .line 315
    goto :goto_3

    .line 316
    :cond_e
    if-ne p1, v7, :cond_14

    .line 317
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mAcm:Landroid/content/pm/AccessControlManager;

    if-nez v1, :cond_f

    .line 318
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContext:Landroid/content/Context;

    const-string v5, "access_control"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/AccessControlManager;

    iput-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mAcm:Landroid/content/pm/AccessControlManager;

    .line 320
    :cond_f
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mAcm:Landroid/content/pm/AccessControlManager;

    sget-object v5, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->emailPackageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/content/pm/AccessControlManager;->checkControlPackageType(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_10

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mAcm:Landroid/content/pm/AccessControlManager;

    invoke-virtual {v1}, Landroid/content/pm/AccessControlManager;->isAccessControlPasswordEnable()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 322
    const/4 v0, 0x1

    .line 324
    :cond_10
    iput-boolean v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mScreenshotFinish:Z

    .line 326
    if-nez v0, :cond_11

    move v3, v2

    :cond_11
    invoke-direct {p0, v7, v2, v3}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->reloadRecentApp(IZZ)V

    .line 328
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    if-eqz v1, :cond_12

    .line 329
    if-eqz v0, :cond_13

    .line 330
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mpkgPasswordScreenshot:Landroid/graphics/Bitmap;

    invoke-interface {v1, v3, v4, v2}, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;->updateScreenshot(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Z)V

    .line 336
    :goto_5
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarBitmapCopy:Landroid/graphics/Bitmap;

    invoke-interface {v1, v2}, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;->updateScreenshotOfStatusbar(Landroid/graphics/Bitmap;)V

    .line 338
    :cond_12
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mEmailShareBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_3

    .line 332
    :cond_13
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mEmailBitmapCopy:Landroid/graphics/Bitmap;

    invoke-interface {v1, v3, v4, v2}, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;->updateScreenshot(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Z)V

    .line 333
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    invoke-interface {v1}, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;->invalidateActivity()V

    goto :goto_5

    .line 339
    :cond_14
    const/4 v1, 0x4

    if-ne p1, v1, :cond_15

    .line 340
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCameraScreenshot:Landroid/graphics/Bitmap;

    invoke-interface {v1, v3, v4, v2}, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;->updateScreenshot(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Z)V

    .line 341
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    invoke-interface {v1}, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;->invalidateActivity()V

    :cond_15
    move-object v1, v4

    .line 343
    goto/16 :goto_3
.end method

.method public setCallback(Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 254
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    .line 255
    return-void
.end method
