.class public Lcom/android/gallery3d/app/DialogPicker;
.super Lcom/android/gallery3d/app/PickerActivity;
.source "DialogPicker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/gallery3d/app/PickerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 28
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/PickerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/android/gallery3d/app/DialogPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/gallery3d/util/GalleryUtils;->determineTypeBits(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    .line 31
    invoke-static {v1}, Lcom/android/gallery3d/util/GalleryUtils;->getSelectionModePrompt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/DialogPicker;->setTitle(I)V

    .line 32
    invoke-virtual {p0}, Lcom/android/gallery3d/app/DialogPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 33
    iget-object v2, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    const/4 v3, 0x4

    iput v3, v2, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mType:I

    .line 34
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 35
    const-string v3, "image"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 36
    iget-object v2, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    iput v4, v2, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mMimeType:I

    .line 43
    :goto_0
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 44
    if-nez v2, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    :goto_1
    const-string v2, "get-content"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    const-string v2, "media-path"

    invoke-virtual {p0}, Lcom/android/gallery3d/app/DialogPicker;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/gallery3d/app/DialogPicker;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v1, v2, v0}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 50
    return-void

    .line 37
    :cond_0
    const-string v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    iget-object v2, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    const/4 v3, 0x2

    iput v3, v2, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mMimeType:I

    goto :goto_0

    .line 40
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mMimeType:I

    goto :goto_0

    .line 44
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_1
.end method
