.class public Lcom/android/gallery3d/app/AlbumPicker;
.super Lcom/android/gallery3d/app/PickerActivity;
.source "AlbumPicker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/gallery3d/app/PickerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 31
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/PickerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f0a0142

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/AlbumPicker;->setTitle(I)V

    .line 33
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    const/4 v2, 0x3

    iput v2, v1, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mType:I

    .line 35
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 36
    const-string v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    iput v3, v1, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mMimeType:I

    .line 44
    :goto_0
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 45
    if-nez v1, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 47
    :goto_1
    const-string v1, "get-album"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 48
    const-string v1, "media-path"

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumPicker;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumPicker;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v1, v2, v0}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 51
    return-void

    .line 38
    :cond_0
    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    const/4 v2, 0x2

    iput v2, v1, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mMimeType:I

    goto :goto_0

    .line 41
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mMimeType:I

    goto :goto_0

    .line 45
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_1
.end method
