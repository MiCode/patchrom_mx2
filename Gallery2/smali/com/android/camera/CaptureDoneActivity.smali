.class public Lcom/android/camera/CaptureDoneActivity;
.super Landroid/app/Activity;
.source "CaptureDoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CaptureDoneActivity$LoadPicture;
    }
.end annotation


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mCapturePicture:Landroid/widget/ImageView;

.field private mCurTempFilePath:Ljava/lang/String;

.field private mCurVideoUri:Landroid/net/Uri;

.field private mFinishMenuItem:Landroid/view/MenuItem;

.field private mHandler:Landroid/os/Handler;

.field private mIsClickFinish:Z

.field private mIsMeizuVideoIntent:Z

.field private mOriginalHeight:I

.field private mOriginalWidth:I

.field private mPicture:Landroid/graphics/Bitmap;

.field private mRotate:I

.field private mStartPlayVideoBtn:Landroid/widget/ImageView;

.field private mVideoFileFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CaptureDoneActivity;->mIsMeizuVideoIntent:Z

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CaptureDoneActivity;->mIsClickFinish:Z

    .line 109
    new-instance v0, Lcom/android/camera/CaptureDoneActivity$1;

    invoke-direct {v0, p0}, Lcom/android/camera/CaptureDoneActivity$1;-><init>(Lcom/android/camera/CaptureDoneActivity;)V

    iput-object v0, p0, Lcom/android/camera/CaptureDoneActivity;->mHandler:Landroid/os/Handler;

    .line 184
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/CaptureDoneActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/camera/CaptureDoneActivity;->mPicture:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/CaptureDoneActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/camera/CaptureDoneActivity;->mCapturePicture:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/CaptureDoneActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/camera/CaptureDoneActivity;->mStartPlayVideoBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/CaptureDoneActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/camera/CaptureDoneActivity;->decodeCapturePic()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/CaptureDoneActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/camera/CaptureDoneActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private decodeCapturePic()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 129
    invoke-static {}, Lcom/android/camera/Util;->getCurAppMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CaptureDoneActivity;->mCurTempFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CaptureDoneActivity;->mPicture:Landroid/graphics/Bitmap;

    .line 132
    iget-object v0, p0, Lcom/android/camera/CaptureDoneActivity;->mPicture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/CaptureDoneActivity;->mOriginalWidth:I

    .line 133
    iget-object v0, p0, Lcom/android/camera/CaptureDoneActivity;->mPicture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/camera/CaptureDoneActivity;->mOriginalHeight:I

    .line 134
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 135
    .local v5, m:Landroid/graphics/Matrix;
    iget v0, p0, Lcom/android/camera/CaptureDoneActivity;->mRotate:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/CaptureDoneActivity;->mOriginalWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/CaptureDoneActivity;->mOriginalHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 136
    iget-object v0, p0, Lcom/android/camera/CaptureDoneActivity;->mPicture:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/camera/CaptureDoneActivity;->mOriginalWidth:I

    iget v4, p0, Lcom/android/camera/CaptureDoneActivity;->mOriginalHeight:I

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CaptureDoneActivity;->mPicture:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v5           #m:Landroid/graphics/Matrix;
    :cond_0
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v7

    .line 138
    .local v7, e:Ljava/lang/OutOfMemoryError;
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CaptureDoneActivity;->mPicture:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 140
    .end local v7           #e:Ljava/lang/OutOfMemoryError;
    :cond_1
    invoke-static {}, Lcom/android/camera/Util;->getCurAppMode()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/camera/CaptureDoneActivity;->mCurTempFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CaptureDoneActivity;->mPicture:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private deteleTempFile()V
    .locals 2

    .prologue
    .line 105
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/CaptureDoneActivity;->mCurTempFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 107
    return-void
.end method

.method private getIntentParamers(Landroid/content/Intent;)V
    .locals 4
    .parameter "i"

    .prologue
    const/16 v3, 0x2f

    const/4 v2, 0x1

    .line 93
    invoke-static {}, Lcom/android/camera/Util;->getCurAppMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 94
    const-string v0, "rotate"

    const/16 v1, 0x5a

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/CaptureDoneActivity;->mRotate:I

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "temp.tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CaptureDoneActivity;->mCurTempFilePath:Ljava/lang/String;

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-static {}, Lcom/android/camera/Util;->getCurAppMode()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "temp.tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CaptureDoneActivity;->mCurTempFilePath:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "current_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/camera/CaptureDoneActivity;->mCurVideoUri:Landroid/net/Uri;

    .line 99
    const-string v0, "file_format"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CaptureDoneActivity;->mVideoFileFormat:Ljava/lang/String;

    .line 100
    const-string v0, "meizu_video_intent"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/CaptureDoneActivity;->mIsMeizuVideoIntent:Z

    goto :goto_0
.end method

.method private startPlayVideoActivity()V
    .locals 5

    .prologue
    .line 146
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/camera/CaptureDoneActivity;->mCurVideoUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/camera/CaptureDoneActivity;->mVideoFileFormat:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    iget-boolean v2, p0, Lcom/android/camera/CaptureDoneActivity;->mIsMeizuVideoIntent:Z

    if-eqz v2, :cond_0

    .line 149
    const-string v2, "meizu_video_record"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 152
    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/camera/CaptureDoneActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "CaptureDoneActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t view video "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/CaptureDoneActivity;->mCurVideoUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/CaptureDoneActivity;->requestWindowFeature(I)Z

    .line 63
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/camera/CaptureDoneActivity;->requestWindowFeature(I)Z

    .line 64
    const v0, 0x7f04000d

    invoke-virtual {p0, v0}, Lcom/android/camera/CaptureDoneActivity;->setContentView(I)V

    .line 65
    invoke-virtual {p0}, Lcom/android/camera/CaptureDoneActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CaptureDoneActivity;->mActionBar:Landroid/app/ActionBar;

    .line 66
    iget-object v0, p0, Lcom/android/camera/CaptureDoneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 67
    iget-object v0, p0, Lcom/android/camera/CaptureDoneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setActionBarViewCollapsable(Z)V

    .line 68
    iget-object v0, p0, Lcom/android/camera/CaptureDoneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setEnabledBackWhenOverlay(Z)V

    .line 69
    const v0, 0x7f0d0017

    invoke-virtual {p0, v0}, Lcom/android/camera/CaptureDoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/CaptureDoneActivity;->mCapturePicture:Landroid/widget/ImageView;

    .line 70
    const v0, 0x7f0d0018

    invoke-virtual {p0, v0}, Lcom/android/camera/CaptureDoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/CaptureDoneActivity;->mStartPlayVideoBtn:Landroid/widget/ImageView;

    .line 71
    invoke-virtual {p0}, Lcom/android/camera/CaptureDoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureDoneActivity;->getIntentParamers(Landroid/content/Intent;)V

    .line 72
    new-instance v0, Lcom/android/camera/CaptureDoneActivity$LoadPicture;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/CaptureDoneActivity$LoadPicture;-><init>(Lcom/android/camera/CaptureDoneActivity;Lcom/android/camera/CaptureDoneActivity$1;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/camera/CaptureDoneActivity$LoadPicture;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 73
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 165
    const v0, 0x7f0a0030

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 166
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CaptureDoneActivity;->mFinishMenuItem:Landroid/view/MenuItem;

    .line 167
    iget-object v0, p0, Lcom/android/camera/CaptureDoneActivity;->mFinishMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CaptureDoneActivity;->mFinishMenuItem:Landroid/view/MenuItem;

    instance-of v0, v0, Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/camera/CaptureDoneActivity;->mFinishMenuItem:Landroid/view/MenuItem;

    const/16 v1, 0x12

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 169
    iget-object v0, p0, Lcom/android/camera/CaptureDoneActivity;->mFinishMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f0200b8

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 170
    iget-object v0, p0, Lcom/android/camera/CaptureDoneActivity;->mFinishMenuItem:Landroid/view/MenuItem;

    check-cast v0, Lcom/android/internal/view/menu/MenuItemImpl;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuItemImpl;->setShowGravity(I)Landroid/view/MenuItem;

    .line 172
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/camera/CaptureDoneActivity;->mPicture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CaptureDoneActivity;->mPicture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/camera/CaptureDoneActivity;->mPicture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 80
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/CaptureDoneActivity;->deteleTempFile()V

    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 82
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3
    .parameter "featureId"
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 177
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-nez v0, :cond_0

    .line 178
    iput-boolean v2, p0, Lcom/android/camera/CaptureDoneActivity;->mIsClickFinish:Z

    .line 179
    iget-object v0, p0, Lcom/android/camera/CaptureDoneActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 181
    :cond_0
    return v2
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/camera/CaptureDoneActivity;->mIsClickFinish:Z

    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/CaptureDoneActivity;->setResult(I)V

    .line 89
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 90
    return-void
.end method

.method public onPlayVideoClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/android/camera/CaptureDoneActivity;->startPlayVideoActivity()V

    .line 161
    return-void
.end method
