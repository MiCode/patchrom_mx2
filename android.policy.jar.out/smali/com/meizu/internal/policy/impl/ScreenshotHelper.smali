.class public Lcom/meizu/internal/policy/impl/ScreenshotHelper;
.super Ljava/lang/Object;
.source "ScreenshotHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/internal/policy/impl/ScreenshotHelper$LockScreenShotInfo;,
        Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenShotStub;,
        Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;
    }
.end annotation


# static fields
.field private static final ACTION_LAUNCHER_BROUGHT_TO_BACK:Ljava/lang/String; = "com.meizu.LAUNCHER_WITH_BROUGHT_TO_BACK"

.field private static final SCREENSHOT_FAILED:I = 0x0

.field private static final SCREENSHOT_SUCCESSFUL:I = 0x1

.field private static final SCREENSHOT_TRAN:I = 0x2

.field private static final SET_BACKGROUND:I = 0x3e8

.field private static final SET_STATUSBAR_SCREENSHOT:I = 0x3ea

.field private static final TAG_KEYGUARD:Ljava/lang/String; = "Keyguard"

.field private static contactsClassName:Ljava/lang/String; = null

.field private static contactsPackageName:Ljava/lang/String; = null

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

.field private mLockScreenShotInfo:Lcom/meizu/internal/policy/impl/ScreenshotHelper$LockScreenShotInfo;

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

.field private final mStatusbarHeight:I

.field private mStatusbarMemoryFile:Landroid/os/MemoryFile;

.field private final mStatusbarSize:I

.field private final mStatusbarWidth:I

.field private mUpdateWhich:I

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field private final mWidth:I

.field private mpkgPasswordScreenshot:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.launcher"

    const-string v2, "com.android.launcher2.Launcher"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->launcherComponentName:Landroid/content/ComponentName;

    .line 64
    const-string v0, "com.android.mms"

    sput-object v0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mmsPackageName:Ljava/lang/String;

    .line 65
    const-string v0, "com.android.contacts"

    sput-object v0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->contactsPackageName:Ljava/lang/String;

    .line 66
    const-string v0, "com.android.phone"

    sput-object v0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->phonePackageName:Ljava/lang/String;

    .line 67
    const-string v0, "com.android.mms.ui.ConversationList"

    sput-object v0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mmsClassName:Ljava/lang/String;

    .line 68
    const-string v0, "com.android.email"

    sput-object v0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->emailPackageName:Ljava/lang/String;

    .line 69
    const-string v0, "com.android.contacts.activities.DialtactsActivity"

    sput-object v0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->contactsClassName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/meizu/internal/policy/impl/LockControllerMonitor;Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 8
    .parameter "context"
    .parameter "lockControllerMonitor"
    .parameter "keyguardViewMediator"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 215
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v4, -0x1

    iput v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mUpdateWhich:I

    .line 88
    iput-object v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 90
    iput-boolean v6, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mIsNeedUpdateLauncherWallpaper:Z

    .line 91
    iput-boolean v6, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mIsUseCaptureScreenBitmap:Z

    .line 92
    iput-object v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCaptureScreen:Landroid/graphics/Bitmap;

    .line 95
    iput-object v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareBitmap:Landroid/graphics/Bitmap;

    .line 96
    iput-object v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareFd:Landroid/os/ParcelFileDescriptor;

    .line 97
    const-string v4, "MmsScreenshotShare.png"

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareFileName:Ljava/lang/String;

    .line 100
    iput-object v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareBitmap:Landroid/graphics/Bitmap;

    .line 101
    iput-object v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareFd:Landroid/os/ParcelFileDescriptor;

    .line 102
    const-string v4, "ContactsScreenshotShare.png"

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareFileName:Ljava/lang/String;

    .line 105
    iput-object v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarBitmap:Landroid/graphics/Bitmap;

    .line 106
    iput-object v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarBitmapCopy:Landroid/graphics/Bitmap;

    .line 107
    iput-object v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarFd:Landroid/os/ParcelFileDescriptor;

    .line 108
    const-string v4, "ActivityShotShare.png"

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarFileName:Ljava/lang/String;

    .line 111
    iput-object v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mEmailShareBitmap:Landroid/graphics/Bitmap;

    .line 112
    iput-object v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mEmailShareFd:Landroid/os/ParcelFileDescriptor;

    .line 113
    const-string v4, "EmailShotShare.png"

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mEmailShareFileName:Ljava/lang/String;

    .line 115
    iput-object v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mLockScreenShotInfo:Lcom/meizu/internal/policy/impl/ScreenshotHelper$LockScreenShotInfo;

    .line 117
    iput-object v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mEmailBitmapCopy:Landroid/graphics/Bitmap;

    .line 118
    iput-object v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsBitmapCopy:Landroid/graphics/Bitmap;

    .line 119
    iput-object v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsBitmapCopy:Landroid/graphics/Bitmap;

    .line 126
    iput-boolean v6, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mScreenshotFinish:Z

    .line 128
    iput-object v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mActivityManager:Landroid/app/ActivityManager;

    .line 130
    iput-object v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mAcm:Landroid/content/pm/AccessControlManager;

    .line 170
    new-instance v4, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;

    invoke-direct {v4, p0}, Lcom/meizu/internal/policy/impl/ScreenshotHelper$1;-><init>(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)V

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mHandler:Landroid/os/Handler;

    .line 216
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContext:Landroid/content/Context;

    .line 217
    iput-object p2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    .line 219
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mActivityManager:Landroid/app/ActivityManager;

    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 222
    .local v3, metrics:Landroid/util/DisplayMetrics;
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mWidth:I

    .line 223
    iget v4, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mHeight:I

    .line 224
    iget v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mWidth:I

    iget v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mHeight:I

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mSize:I

    .line 226
    iget v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mWidth:I

    iput v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarWidth:I

    .line 227
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarHeight:I

    .line 228
    iget v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarWidth:I

    iget v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarHeight:I

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarSize:I

    .line 230
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1080581

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mpkgPasswordScreenshot:Landroid/graphics/Bitmap;

    .line 231
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1080289

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCameraScreenshot:Landroid/graphics/Bitmap;

    .line 232
    iput-object p3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mKeyguardViewMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    .line 233
    new-instance v4, Lcom/meizu/internal/policy/impl/ScreenshotHelper$LockScreenShotInfo;

    invoke-direct {v4, p0}, Lcom/meizu/internal/policy/impl/ScreenshotHelper$LockScreenShotInfo;-><init>(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)V

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mLockScreenShotInfo:Lcom/meizu/internal/policy/impl/ScreenshotHelper$LockScreenShotInfo;

    .line 234
    new-instance v4, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenShotStub;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenShotStub;-><init>(Lcom/meizu/internal/policy/impl/ScreenshotHelper;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mBinder:Landroid/os/IBinder;

    .line 236
    :try_start_0
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareMemoryFile:Landroid/os/MemoryFile;

    if-nez v4, :cond_0

    .line 237
    new-instance v4, Landroid/os/MemoryFile;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareFileName:Ljava/lang/String;

    iget v6, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mSize:I

    invoke-direct {v4, v5, v6}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareMemoryFile:Landroid/os/MemoryFile;

    .line 238
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareMemoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v4}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 239
    .local v1, fd:Ljava/io/FileDescriptor;
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareMemoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v4}, Landroid/os/MemoryFile;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareFd:Landroid/os/ParcelFileDescriptor;

    .line 240
    iget v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mSize:I

    iget v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mWidth:I

    iget v6, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mHeight:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v5, v6, v7}, Landroid/graphics/Bitmap;->createShareBitmap(Ljava/io/FileDescriptor;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareBitmap:Landroid/graphics/Bitmap;

    .line 242
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 245
    .end local v1           #fd:Ljava/io/FileDescriptor;
    :cond_0
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareMemoryFile:Landroid/os/MemoryFile;

    if-nez v4, :cond_1

    .line 246
    new-instance v4, Landroid/os/MemoryFile;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareFileName:Ljava/lang/String;

    iget v6, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mSize:I

    invoke-direct {v4, v5, v6}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareMemoryFile:Landroid/os/MemoryFile;

    .line 247
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareMemoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v4}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 248
    .restart local v1       #fd:Ljava/io/FileDescriptor;
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareMemoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v4}, Landroid/os/MemoryFile;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareFd:Landroid/os/ParcelFileDescriptor;

    .line 249
    iget v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mSize:I

    iget v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mWidth:I

    iget v6, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mHeight:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v5, v6, v7}, Landroid/graphics/Bitmap;->createShareBitmap(Ljava/io/FileDescriptor;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareBitmap:Landroid/graphics/Bitmap;

    .line 251
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 254
    .end local v1           #fd:Ljava/io/FileDescriptor;
    :cond_1
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarMemoryFile:Landroid/os/MemoryFile;

    if-nez v4, :cond_2

    .line 255
    new-instance v4, Landroid/os/MemoryFile;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarFileName:Ljava/lang/String;

    iget v6, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarSize:I

    invoke-direct {v4, v5, v6}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarMemoryFile:Landroid/os/MemoryFile;

    .line 256
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarMemoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v4}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 257
    .restart local v1       #fd:Ljava/io/FileDescriptor;
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarMemoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v4}, Landroid/os/MemoryFile;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarFd:Landroid/os/ParcelFileDescriptor;

    .line 258
    iget v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarSize:I

    iget v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarWidth:I

    iget v6, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarHeight:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v5, v6, v7}, Landroid/graphics/Bitmap;->createShareBitmap(Ljava/io/FileDescriptor;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarBitmap:Landroid/graphics/Bitmap;

    .line 260
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 263
    .end local v1           #fd:Ljava/io/FileDescriptor;
    :cond_2
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mEmailShareMemoryFile:Landroid/os/MemoryFile;

    if-nez v4, :cond_3

    .line 264
    new-instance v4, Landroid/os/MemoryFile;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mEmailShareFileName:Ljava/lang/String;

    iget v6, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mSize:I

    invoke-direct {v4, v5, v6}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mEmailShareMemoryFile:Landroid/os/MemoryFile;

    .line 265
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mEmailShareMemoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v4}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 266
    .restart local v1       #fd:Ljava/io/FileDescriptor;
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mEmailShareMemoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v4}, Landroid/os/MemoryFile;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mEmailShareFd:Landroid/os/ParcelFileDescriptor;

    .line 267
    iget v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mSize:I

    iget v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mWidth:I

    iget v6, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mHeight:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v5, v6, v7}, Landroid/graphics/Bitmap;->createShareBitmap(Ljava/io/FileDescriptor;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mEmailShareBitmap:Landroid/graphics/Bitmap;

    .line 269
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mEmailShareBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 272
    .end local v1           #fd:Ljava/io/FileDescriptor;
    :cond_3
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarBitmapCopy:Landroid/graphics/Bitmap;

    if-nez v4, :cond_4

    .line 273
    iget v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarWidth:I

    iget v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarHeight:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarBitmapCopy:Landroid/graphics/Bitmap;

    .line 276
    :cond_4
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsBitmapCopy:Landroid/graphics/Bitmap;

    if-nez v4, :cond_5

    .line 277
    iget v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mWidth:I

    iget v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mHeight:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsBitmapCopy:Landroid/graphics/Bitmap;

    .line 279
    :cond_5
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsBitmapCopy:Landroid/graphics/Bitmap;

    if-nez v4, :cond_6

    .line 280
    iget v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mWidth:I

    iget v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mHeight:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsBitmapCopy:Landroid/graphics/Bitmap;

    .line 282
    :cond_6
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mEmailBitmapCopy:Landroid/graphics/Bitmap;

    if-nez v4, :cond_7

    .line 283
    iget v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mWidth:I

    iget v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mHeight:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mEmailBitmapCopy:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :cond_7
    :goto_0
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 290
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v4, "com.meizu.LAUNCHER_WITH_BROUGHT_TO_BACK"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    new-instance v4, Lcom/meizu/internal/policy/impl/ScreenshotHelper$2;

    invoke-direct {v4, p0}, Lcom/meizu/internal/policy/impl/ScreenshotHelper$2;-><init>(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)V

    invoke-virtual {p1, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 305
    return-void

    .line 285
    .end local v2           #filter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .line 286
    .local v0, ex:Ljava/io/IOException;
    const-string v4, "Keyguard"

    const-string v5, "KeyguardViewManager IOException"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mmsPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/meizu/internal/policy/impl/ScreenshotHelper;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->copyStatusbar(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsBitmapCopy:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mEmailShareBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mEmailBitmapCopy:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarBitmapCopy:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->emailPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->contactsPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->phonePackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    return-object v0
.end method

.method static synthetic access$602(Lcom/meizu/internal/policy/impl/ScreenshotHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mScreenshotFinish:Z

    return p1
.end method

.method static synthetic access$702(Lcom/meizu/internal/policy/impl/ScreenshotHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mIsNeedUpdateLauncherWallpaper:Z

    return p1
.end method

.method static synthetic access$800(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsBitmapCopy:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static copyBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 9
    .parameter "bitmap"
    .parameter "fileName"

    .prologue
    .line 629
    if-nez p0, :cond_1

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 631
    :cond_1
    const-string v0, "Test_copyBitmap"

    .line 633
    .local v0, TAG:Ljava/lang/String;
    :try_start_0
    const-string v6, "/data/anr"

    .line 634
    .local v6, saveDirectory:Ljava/lang/String;
    move-object v4, p1

    .line 635
    .local v4, fileNameString:Ljava/lang/String;
    const/4 v5, 0x0

    .line 636
    .local v5, outputStream:Ljava/io/OutputStream;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 637
    .local v1, dir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 638
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 639
    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    .local v3, file:Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    .end local v5           #outputStream:Ljava/io/OutputStream;
    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 641
    .restart local v5       #outputStream:Ljava/io/OutputStream;
    if-eqz v5, :cond_0

    .line 642
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {p0, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 643
    const-string v7, "Test_copyBitmap"

    const-string v8, "print screen to file Failed!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 646
    .end local v1           #dir:Ljava/io/File;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #fileNameString:Ljava/lang/String;
    .end local v5           #outputStream:Ljava/io/OutputStream;
    .end local v6           #saveDirectory:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 647
    .local v2, ex:Ljava/io/FileNotFoundException;
    const-string v7, "Test_copyBitmap"

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 648
    .end local v2           #ex:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 649
    .local v2, ex:Ljava/lang/Exception;
    const-string v7, "Test_copyBitmap"

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private copyStatusbar(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "srcBitmap"
    .parameter "dstBitmap"

    .prologue
    const/4 v2, 0x0

    .line 621
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 622
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 623
    .local v0, cv:Landroid/graphics/Canvas;
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 624
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 625
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 626
    return-void
.end method

.method private makeSureFdValid(I)V
    .locals 6
    .parameter "which"

    .prologue
    .line 413
    :try_start_0
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarBitmapCopy:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 414
    iget v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarWidth:I

    iget v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarBitmapCopy:Landroid/graphics/Bitmap;

    .line 416
    :cond_0
    if-nez p1, :cond_7

    .line 417
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareFd:Landroid/os/ParcelFileDescriptor;

    if-nez v2, :cond_1

    .line 418
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareMemoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v2}, Landroid/os/MemoryFile;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareFd:Landroid/os/ParcelFileDescriptor;

    .line 420
    :cond_1
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-nez v2, :cond_3

    .line 423
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareMemoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v2}, Landroid/os/MemoryFile;->close()V

    .line 424
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 425
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareMemoryFile:Landroid/os/MemoryFile;

    .line 426
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 428
    :try_start_1
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareMemoryFile:Landroid/os/MemoryFile;

    if-nez v2, :cond_2

    .line 429
    new-instance v2, Landroid/os/MemoryFile;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareFileName:Ljava/lang/String;

    iget v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mSize:I

    invoke-direct {v2, v3, v4}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareMemoryFile:Landroid/os/MemoryFile;

    .line 430
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareMemoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v2}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 431
    .local v1, fd:Ljava/io/FileDescriptor;
    iget v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mSize:I

    iget v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mWidth:I

    iget v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createShareBitmap(Ljava/io/FileDescriptor;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareBitmap:Landroid/graphics/Bitmap;

    .line 433
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 438
    .end local v1           #fd:Ljava/io/FileDescriptor;
    :cond_2
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareMemoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v2}, Landroid/os/MemoryFile;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareFd:Landroid/os/ParcelFileDescriptor;

    .line 465
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarFd:Landroid/os/ParcelFileDescriptor;

    if-nez v2, :cond_4

    .line 466
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarMemoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v2}, Landroid/os/MemoryFile;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarFd:Landroid/os/ParcelFileDescriptor;

    .line 468
    :cond_4
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-nez v2, :cond_6

    .line 471
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarMemoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v2}, Landroid/os/MemoryFile;->close()V

    .line 472
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 473
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarMemoryFile:Landroid/os/MemoryFile;

    .line 474
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarBitmap:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 476
    :try_start_3
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarMemoryFile:Landroid/os/MemoryFile;

    if-nez v2, :cond_5

    .line 477
    new-instance v2, Landroid/os/MemoryFile;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarFileName:Ljava/lang/String;

    iget v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarSize:I

    invoke-direct {v2, v3, v4}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarMemoryFile:Landroid/os/MemoryFile;

    .line 478
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarMemoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v2}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 479
    .restart local v1       #fd:Ljava/io/FileDescriptor;
    iget v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarSize:I

    iget v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarWidth:I

    iget v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createShareBitmap(Ljava/io/FileDescriptor;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarBitmap:Landroid/graphics/Bitmap;

    .line 481
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 486
    .end local v1           #fd:Ljava/io/FileDescriptor;
    :cond_5
    :goto_2
    :try_start_4
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarMemoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v2}, Landroid/os/MemoryFile;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarFd:Landroid/os/ParcelFileDescriptor;

    .line 491
    :cond_6
    :goto_3
    return-void

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, ex:Ljava/io/IOException;
    const-string v2, "Keyguard"

    const-string v3, "Screenshot: KeyguardViewManager IOException"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 488
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 489
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

    .line 440
    .end local v0           #ex:Ljava/io/IOException;
    :cond_7
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 441
    :try_start_5
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareFd:Landroid/os/ParcelFileDescriptor;

    if-nez v2, :cond_8

    .line 442
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareMemoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v2}, Landroid/os/MemoryFile;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareFd:Landroid/os/ParcelFileDescriptor;

    .line 444
    :cond_8
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-nez v2, :cond_3

    .line 447
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareMemoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v2}, Landroid/os/MemoryFile;->close()V

    .line 448
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 449
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareMemoryFile:Landroid/os/MemoryFile;

    .line 450
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareBitmap:Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 452
    :try_start_6
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareMemoryFile:Landroid/os/MemoryFile;

    if-nez v2, :cond_9

    .line 453
    new-instance v2, Landroid/os/MemoryFile;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareFileName:Ljava/lang/String;

    iget v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mSize:I

    invoke-direct {v2, v3, v4}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareMemoryFile:Landroid/os/MemoryFile;

    .line 454
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareMemoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v2}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 455
    .restart local v1       #fd:Ljava/io/FileDescriptor;
    iget v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mSize:I

    iget v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mWidth:I

    iget v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createShareBitmap(Ljava/io/FileDescriptor;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareBitmap:Landroid/graphics/Bitmap;

    .line 457
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 462
    .end local v1           #fd:Ljava/io/FileDescriptor;
    :cond_9
    :goto_4
    :try_start_7
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareMemoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v2}, Landroid/os/MemoryFile;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareFd:Landroid/os/ParcelFileDescriptor;

    goto/16 :goto_1

    .line 459
    :catch_2
    move-exception v0

    .line 460
    .restart local v0       #ex:Ljava/io/IOException;
    const-string v2, "Keyguard"

    const-string v3, "Screenshot: KeyguardViewManager IOException"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 483
    .end local v0           #ex:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 484
    .restart local v0       #ex:Ljava/io/IOException;
    const-string v2, "Keyguard"

    const-string v3, "Screenshot: KeyguardViewManager IOException"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_2
.end method

.method private reloadRecentApp(IZ)V
    .locals 10
    .parameter "which"
    .parameter "updateStatusbar"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 494
    iput p1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mUpdateWhich:I

    .line 495
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mBinder:Landroid/os/IBinder;

    invoke-static {v3}, Landroid/app/IUnlockScreenShotReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUnlockScreenShotReceiver;

    move-result-object v2

    .line 497
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

    .line 499
    if-nez p1, :cond_2

    .line 500
    invoke-direct {p0, v7}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->makeSureFdValid(I)V

    .line 503
    :try_start_0
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v3}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->isCalling()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 504
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    sget-object v4, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->phonePackageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareFd:Landroid/os/ParcelFileDescriptor;

    invoke-interface {v3, v4, v5, v2}, Landroid/app/IActivityManager;->getScreenShotForPackage(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/app/IUnlockScreenShotReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    :goto_0
    if-eqz p2, :cond_0

    .line 515
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mKeyguardViewMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3, v7, v4, v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->requestScreenshotOfStatusbar(ZLandroid/os/ParcelFileDescriptor;Landroid/app/IUnlockScreenShotReceiver;)V

    .line 565
    :cond_0
    :goto_1
    return-void

    .line 507
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    sget-object v4, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->contactsClassName:Ljava/lang/String;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareFd:Landroid/os/ParcelFileDescriptor;

    invoke-interface {v3, v4, v5, v2}, Landroid/app/IActivityManager;->getScreenShotForClass(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/app/IUnlockScreenShotReceiver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 510
    :catch_0
    move-exception v0

    .line 511
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

    .line 518
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    if-ne p1, v9, :cond_3

    .line 519
    invoke-direct {p0, v9}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->makeSureFdValid(I)V

    .line 522
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    sget-object v4, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mmsClassName:Ljava/lang/String;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareFd:Landroid/os/ParcelFileDescriptor;

    invoke-interface {v3, v4, v5, v2}, Landroid/app/IActivityManager;->getScreenShotForClass(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/app/IUnlockScreenShotReceiver;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 528
    :goto_2
    if-eqz p2, :cond_0

    .line 529
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mKeyguardViewMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3, v7, v4, v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->requestScreenshotOfStatusbar(ZLandroid/os/ParcelFileDescriptor;Landroid/app/IUnlockScreenShotReceiver;)V

    goto :goto_1

    .line 524
    :catch_1
    move-exception v0

    .line 525
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

    goto :goto_2

    .line 532
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    const/4 v3, 0x3

    if-ne p1, v3, :cond_4

    .line 537
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    const-string v4, "com.android.email.activity.ShowEmailShortCut"

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mEmailShareFd:Landroid/os/ParcelFileDescriptor;

    invoke-interface {v3, v4, v5, v2}, Landroid/app/IActivityManager;->getScreenShotForClass(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/app/IUnlockScreenShotReceiver;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 543
    :goto_3
    if-eqz p2, :cond_0

    .line 544
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mKeyguardViewMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3, v7, v4, v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->requestScreenshotOfStatusbar(ZLandroid/os/ParcelFileDescriptor;Landroid/app/IUnlockScreenShotReceiver;)V

    goto :goto_1

    .line 539
    :catch_2
    move-exception v0

    .line 540
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

    goto :goto_3

    .line 546
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_4
    if-ne p1, v8, :cond_0

    if-eqz p2, :cond_0

    .line 548
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v3}, Landroid/app/ActivityManager;->isHomeScreenVisibility()Z

    move-result v1

    .line 549
    .local v1, isUnlockHome:Z
    if-eqz v1, :cond_5

    .line 550
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mKeyguardViewMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3, v8, v4, v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->requestScreenshotOfStatusbar(ZLandroid/os/ParcelFileDescriptor;Landroid/app/IUnlockScreenShotReceiver;)V

    goto/16 :goto_1

    .line 552
    :cond_5
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mKeyguardViewMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3, v7, v4, v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->requestScreenshotOfStatusbar(ZLandroid/os/ParcelFileDescriptor;Landroid/app/IUnlockScreenShotReceiver;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public copyContactBitmap(Ljava/lang/String;)V
    .locals 1
    .parameter "fileName"

    .prologue
    .line 654
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsBitmapCopy:Landroid/graphics/Bitmap;

    invoke-static {v0, p1}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->copyBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 655
    return-void
.end method

.method public getLockScreenShotInfo()Lcom/meizu/internal/policy/impl/ScreenshotHelper$LockScreenShotInfo;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mLockScreenShotInfo:Lcom/meizu/internal/policy/impl/ScreenshotHelper$LockScreenShotInfo;

    return-object v0
.end method

.method public getStatusScreenshot()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTopActivitName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 568
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mRunTasks:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mRunTasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 569
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mRunTasks:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 570
    .local v0, info:Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v0, :cond_0

    .line 571
    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 574
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
    .line 617
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mScreenshotFinish:Z

    return v0
.end method

.method public removeCallback()V
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    .line 313
    return-void
.end method

.method public requestScreenshotAndNoUpdate(I)V
    .locals 1
    .parameter "status"

    .prologue
    .line 406
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 407
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->reloadRecentApp(IZ)V

    .line 409
    :cond_1
    return-void
.end method

.method public requestUpdateScreenshot(I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "status"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 316
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v1, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mRunTasks:Ljava/util/List;

    .line 317
    const/4 v0, 0x0

    .line 318
    .local v0, pkgPasswordLock:Z
    if-nez p1, :cond_5

    .line 319
    iput-boolean v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mScreenshotFinish:Z

    .line 320
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mAcm:Landroid/content/pm/AccessControlManager;

    if-nez v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContext:Landroid/content/Context;

    const-string v3, "access_control"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/AccessControlManager;

    iput-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mAcm:Landroid/content/pm/AccessControlManager;

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v1}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->isCalling()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 324
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mAcm:Landroid/content/pm/AccessControlManager;

    sget-object v3, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->phonePackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/pm/AccessControlManager;->checkControlPackageType(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 325
    const/4 v0, 0x1

    .line 332
    :cond_1
    :goto_0
    invoke-direct {p0, v5, v4}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->reloadRecentApp(IZ)V

    .line 335
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    if-eqz v1, :cond_2

    .line 336
    if-eqz v0, :cond_4

    .line 337
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mpkgPasswordScreenshot:Landroid/graphics/Bitmap;

    invoke-interface {v1, v3, v2, v4}, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;->updateScreenshot(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Z)V

    .line 342
    :goto_1
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarBitmapCopy:Landroid/graphics/Bitmap;

    invoke-interface {v1, v2}, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;->updateScreenshotOfStatusbar(Landroid/graphics/Bitmap;)V

    .line 344
    :cond_2
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsShareBitmap:Landroid/graphics/Bitmap;

    .line 402
    :goto_2
    return-object v1

    .line 327
    :cond_3
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mAcm:Landroid/content/pm/AccessControlManager;

    sget-object v3, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->contactsPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/pm/AccessControlManager;->checkControlPackageType(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mAcm:Landroid/content/pm/AccessControlManager;

    invoke-virtual {v1}, Landroid/content/pm/AccessControlManager;->isAccessControlPasswordEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 329
    const/4 v0, 0x1

    goto :goto_0

    .line 339
    :cond_4
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContactsBitmapCopy:Landroid/graphics/Bitmap;

    invoke-interface {v1, v3, v2, v4}, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;->updateScreenshot(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_1

    .line 345
    :cond_5
    if-ne p1, v6, :cond_a

    .line 346
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mAcm:Landroid/content/pm/AccessControlManager;

    if-nez v1, :cond_6

    .line 347
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContext:Landroid/content/Context;

    const-string v3, "access_control"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/AccessControlManager;

    iput-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mAcm:Landroid/content/pm/AccessControlManager;

    .line 349
    :cond_6
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mAcm:Landroid/content/pm/AccessControlManager;

    sget-object v3, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mmsPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/pm/AccessControlManager;->checkControlPackageType(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_7

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mAcm:Landroid/content/pm/AccessControlManager;

    invoke-virtual {v1}, Landroid/content/pm/AccessControlManager;->isAccessControlPasswordEnable()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 351
    const/4 v0, 0x1

    .line 353
    :cond_7
    iput-boolean v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mScreenshotFinish:Z

    .line 355
    invoke-direct {p0, v6, v4}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->reloadRecentApp(IZ)V

    .line 358
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    if-eqz v1, :cond_8

    .line 359
    if-eqz v0, :cond_9

    .line 360
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mpkgPasswordScreenshot:Landroid/graphics/Bitmap;

    invoke-interface {v1, v3, v2, v4}, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;->updateScreenshot(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Z)V

    .line 365
    :goto_3
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarBitmapCopy:Landroid/graphics/Bitmap;

    invoke-interface {v1, v2}, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;->updateScreenshotOfStatusbar(Landroid/graphics/Bitmap;)V

    .line 367
    :cond_8
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsShareBitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 362
    :cond_9
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mMmsBitmapCopy:Landroid/graphics/Bitmap;

    invoke-interface {v1, v3, v2, v4}, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;->updateScreenshot(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_3

    .line 368
    :cond_a
    if-ne p1, v4, :cond_c

    .line 369
    invoke-direct {p0, v4, v4}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->reloadRecentApp(IZ)V

    .line 370
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    if-eqz v1, :cond_b

    .line 371
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarBitmapCopy:Landroid/graphics/Bitmap;

    invoke-interface {v1, v3}, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;->updateScreenshotOfStatusbar(Landroid/graphics/Bitmap;)V

    :cond_b
    move-object v1, v2

    .line 373
    goto :goto_2

    .line 374
    :cond_c
    if-ne p1, v7, :cond_11

    .line 375
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mAcm:Landroid/content/pm/AccessControlManager;

    if-nez v1, :cond_d

    .line 376
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mContext:Landroid/content/Context;

    const-string v3, "access_control"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/AccessControlManager;

    iput-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mAcm:Landroid/content/pm/AccessControlManager;

    .line 378
    :cond_d
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mAcm:Landroid/content/pm/AccessControlManager;

    sget-object v3, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->emailPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/pm/AccessControlManager;->checkControlPackageType(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_e

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mAcm:Landroid/content/pm/AccessControlManager;

    invoke-virtual {v1}, Landroid/content/pm/AccessControlManager;->isAccessControlPasswordEnable()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 380
    const/4 v0, 0x1

    .line 382
    :cond_e
    iput-boolean v5, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mScreenshotFinish:Z

    .line 384
    invoke-direct {p0, v7, v4}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->reloadRecentApp(IZ)V

    .line 387
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    if-eqz v1, :cond_f

    .line 388
    if-eqz v0, :cond_10

    .line 389
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mpkgPasswordScreenshot:Landroid/graphics/Bitmap;

    invoke-interface {v1, v3, v2, v4}, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;->updateScreenshot(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Z)V

    .line 395
    :goto_4
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mStatusbarBitmapCopy:Landroid/graphics/Bitmap;

    invoke-interface {v1, v2}, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;->updateScreenshotOfStatusbar(Landroid/graphics/Bitmap;)V

    .line 397
    :cond_f
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mEmailShareBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_2

    .line 391
    :cond_10
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mEmailBitmapCopy:Landroid/graphics/Bitmap;

    invoke-interface {v1, v3, v2, v4}, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;->updateScreenshot(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Z)V

    .line 392
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    invoke-interface {v1}, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;->invalidateActivity()V

    goto :goto_4

    .line 398
    :cond_11
    const/4 v1, 0x4

    if-ne p1, v1, :cond_12

    .line 399
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCameraScreenshot:Landroid/graphics/Bitmap;

    invoke-interface {v1, v3, v2, v4}, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;->updateScreenshot(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Z)V

    .line 400
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    invoke-interface {v1}, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;->invalidateActivity()V

    :cond_12
    move-object v1, v2

    .line 402
    goto/16 :goto_2
.end method

.method public setCallback(Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 308
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mCallback:Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;

    .line 309
    return-void
.end method
