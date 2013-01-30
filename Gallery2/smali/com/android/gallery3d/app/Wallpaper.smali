.class public Lcom/android/gallery3d/app/Wallpaper;
.super Landroid/app/Activity;
.source "Wallpaper.java"


# instance fields
.field private mPickedItem:Landroid/net/Uri;

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/Wallpaper;->mState:I

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 106
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 107
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/app/Wallpaper;->setResult(I)V

    .line 108
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Wallpaper;->finish()V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iput p1, p0, Lcom/android/gallery3d/app/Wallpaper;->mState:I

    .line 112
    iget v0, p0, Lcom/android/gallery3d/app/Wallpaper;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 113
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    if-eqz p1, :cond_0

    .line 47
    const-string v0, "activity-state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/Wallpaper;->mState:I

    .line 48
    const-string v0, "picked-item"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/gallery3d/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    .line 50
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 63
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 64
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Wallpaper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 65
    iget v1, p0, Lcom/android/gallery3d/app/Wallpaper;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 102
    :goto_0
    return-void

    .line 67
    :pswitch_0
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    .line 68
    iget-object v0, p0, Lcom/android/gallery3d/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/android/gallery3d/app/DialogPicker;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 72
    invoke-virtual {p0, v0, v7}, Lcom/android/gallery3d/app/Wallpaper;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 75
    :cond_0
    iput v7, p0, Lcom/android/gallery3d/app/Wallpaper;->mState:I

    .line 79
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Wallpaper;->getWallpaperDesiredMinimumWidth()I

    move-result v0

    .line 80
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Wallpaper;->getWallpaperDesiredMinimumHeight()I

    move-result v1

    .line 81
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 82
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Wallpaper;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 83
    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    int-to-float v4, v0

    div-float/2addr v3, v4

    .line 84
    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    int-to-float v4, v1

    div-float/2addr v2, v4

    .line 85
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.camera.action.CROP"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/gallery3d/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    const-string v6, "image/*"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x200

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "outputX"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "outputY"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "aspectX"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v4, "aspectY"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "spotlightX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "spotlightY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "scale"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "scaleUpIfNeeded"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "noFaceDetection"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "set-as-wallpaper"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 98
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/Wallpaper;->startActivity(Landroid/content/Intent;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Wallpaper;->finish()V

    goto/16 :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "saveState"

    .prologue
    .line 54
    const-string v0, "activity-state"

    iget v1, p0, Lcom/android/gallery3d/app/Wallpaper;->mState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 55
    iget-object v0, p0, Lcom/android/gallery3d/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 56
    const-string v0, "picked-item"

    iget-object v1, p0, Lcom/android/gallery3d/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 58
    :cond_0
    return-void
.end method
