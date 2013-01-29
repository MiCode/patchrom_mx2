.class public final Lcom/android/gallery3d/app/Gallery;
.super Lcom/android/gallery3d/app/AbstractGalleryActivity;
.source "Gallery.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private mBrightnessObserver:Landroid/database/ContentObserver;

.field private mVersionCheckDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;-><init>()V

    .line 317
    new-instance v0, Lcom/android/gallery3d/app/Gallery$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/Gallery$2;-><init>(Lcom/android/gallery3d/app/Gallery;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/Gallery;->mBrightnessObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private getContentType(Landroid/content/Intent;)Ljava/lang/String;
    .locals 5
    .parameter "intent"

    .prologue
    .line 141
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, type:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 149
    .end local v1           #type:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 144
    .restart local v1       #type:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 146
    .local v2, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, t:Ljava/lang/Throwable;
    const-string v3, "Gallery"

    const-string v4, "get type fail"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initializeByIntent()V
    .locals 5

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 89
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/Gallery;->startGetContent(Landroid/content/Intent;)V

    .line 112
    :goto_0
    return-void

    .line 93
    :cond_0
    const-string v3, "android.intent.action.PICK"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 97
    const-string v3, "Gallery"

    const-string v4, "action PICK is not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, type:Ljava/lang/String;
    const-string v3, "vnd.android.cursor.dir/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 100
    const-string v3, "/image"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "image/*"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    :cond_1
    const-string v3, "/video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "video/*"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/Gallery;->startGetContent(Landroid/content/Intent;)V

    goto :goto_0

    .line 104
    .end local v2           #type:Ljava/lang/String;
    :cond_3
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "com.android.camera.action.REVIEW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 106
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/Gallery;->startViewAction(Landroid/content/Intent;)V

    goto :goto_0

    .line 107
    :cond_5
    const-string v3, "android.intent.action.SET_WALLPAPER"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 108
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/Gallery;->startSetWallpaperAction(Landroid/content/Intent;)V

    goto :goto_0

    .line 110
    :cond_6
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->startDefaultPage()V

    goto :goto_0
.end method

.method private setIntentType(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 264
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 267
    iget-object v3, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    iput v6, v3, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mType:I

    .line 268
    iget-object v3, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    iput v5, v3, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mMimeType:I

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    const-string v3, "Camera"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, extra:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 270
    const-string v3, "Photo"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 271
    iget-object v3, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    const/16 v4, 0x8

    iput v4, v3, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mType:I

    .line 272
    iget-object v3, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    iput v5, v3, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mMimeType:I

    goto :goto_0

    .line 273
    :cond_2
    const-string v3, "Record"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 274
    iget-object v3, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    const/16 v4, 0x9

    iput v4, v3, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mType:I

    .line 275
    iget-object v3, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    iput v7, v3, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mMimeType:I

    goto :goto_0

    .line 277
    :cond_3
    const-string v3, "Contact"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v3, "GetIcon"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 278
    iget-object v3, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    const/16 v4, 0xa

    iput v4, v3, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mType:I

    .line 279
    iget-object v3, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    iput v5, v3, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mMimeType:I

    goto :goto_0

    .line 284
    :cond_4
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 285
    iget-object v3, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    iput v5, v3, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mMimeType:I

    .line 286
    const-string v3, "com.android.Mms.SaveFile"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 287
    iget-object v3, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    const/16 v4, 0xb

    iput v4, v3, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mType:I

    goto :goto_0

    .line 288
    :cond_5
    const-string v3, "com.meizu.email.AttachmentFileName"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 289
    iget-object v3, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    const/16 v4, 0xc

    iput v4, v3, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mType:I

    goto :goto_0

    .line 291
    :cond_6
    iget-object v3, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    const/4 v4, 0x5

    iput v4, v3, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mType:I

    goto :goto_0

    .line 293
    :cond_7
    const-string v3, "android.intent.action.PICK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "android.intent.action.gallery.GET_CONTENT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 294
    :cond_8
    iget-object v3, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    const/4 v4, 0x6

    iput v4, v3, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mType:I

    .line 296
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, mimeType:Ljava/lang/String;
    if-eqz v2, :cond_9

    .line 298
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 302
    :goto_1
    const-string v3, "image"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 303
    iget-object v3, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    iput v5, v3, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mMimeType:I

    goto/16 :goto_0

    .line 300
    :cond_9
    const-string v2, " "

    goto :goto_1

    .line 304
    :cond_a
    const-string v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 305
    iget-object v3, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    iput v7, v3, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mMimeType:I

    goto/16 :goto_0

    .line 307
    :cond_b
    iget-object v3, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    iput v6, v3, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mMimeType:I

    goto/16 :goto_0

    .line 309
    .end local v2           #mimeType:Ljava/lang/String;
    :cond_c
    const-string v3, "com.android.camera.action.REVIEW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 310
    iget-object v3, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    const/4 v4, 0x7

    iput v4, v3, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mType:I

    .line 311
    iget-object v3, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    iput v5, v3, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mMimeType:I

    goto/16 :goto_0

    .line 313
    :cond_d
    const-string v3, "Gallery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get an unknown intent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private startGetContent(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    .line 128
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 131
    :goto_0
    const-string v1, "get-content"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 132
    invoke-static {p0, p1}, Lcom/android/gallery3d/util/GalleryUtils;->determineTypeBits(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    .line 133
    const-string v2, "type-bits"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 134
    const-string v2, "media-path"

    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v1, "set-title"

    const/high16 v2, 0x7f0a

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/Gallery;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v1, v2, v0}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 138
    return-void

    .line 128
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method private startSetWallpaperAction(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    .line 255
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 256
    const-string v1, "media-path"

    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v1, "key-set-wallpaper"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 259
    const-string v1, "set-title"

    const/high16 v2, 0x7f0a

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/Gallery;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v1, v2, v0}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 261
    return-void
.end method

.method private startViewAction(Landroid/content/Intent;)V
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 154
    const-string v0, "slideshow"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 155
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 156
    const-string v3, "set-title"

    const/high16 v4, 0x7f0a

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/Gallery;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 158
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 159
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    .line 160
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v3

    instance-of v3, v3, Lcom/android/gallery3d/data/MediaItem;

    if-eqz v3, :cond_1

    .line 163
    :cond_0
    invoke-virtual {v2, v6}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 166
    :cond_1
    const-string v2, "media-set-path"

    invoke-virtual {v0}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v0, "random-order"

    invoke-virtual {v8, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 168
    const-string v0, "repeat"

    invoke-virtual {v8, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 169
    const-string v0, "dream"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    const-string v0, "dream"

    invoke-virtual {v8, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 172
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/android/gallery3d/app/SlideshowPage;

    invoke-virtual {v0, v1, v8}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 252
    :goto_0
    return-void

    .line 174
    :cond_3
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v4

    .line 175
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 176
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/Gallery;->getContentType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 177
    if-nez v0, :cond_4

    .line 178
    const v0, 0x7f0a0156

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 180
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->finish()V

    goto :goto_0

    .line 183
    :cond_4
    if-nez v3, :cond_5

    .line 184
    invoke-static {p0, p1}, Lcom/android/gallery3d/util/GalleryUtils;->determineTypeBits(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    .line 185
    const-string v1, "type-bits"

    invoke-virtual {v8, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 186
    const-string v1, "media-path"

    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v0, v1, v8}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 189
    :cond_5
    const-string v5, "vnd.android.cursor.dir"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 191
    const-string v0, "mediaTypes"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 192
    if-eqz v0, :cond_6

    .line 193
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "mediaTypes"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 197
    :cond_6
    invoke-virtual {v4, v3, v2}, Lcom/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    .line 199
    if-eqz v1, :cond_c

    .line 200
    invoke-virtual {v4, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    .line 202
    :goto_1
    if-eqz v0, :cond_8

    .line 203
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->isLeafAlbum()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 204
    const-string v0, "media-path"

    invoke-virtual {v1}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v0, "parent-media-path"

    const/4 v1, 0x3

    invoke-virtual {v4, v1}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v0, v1, v8}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 209
    :cond_7
    const-string v0, "media-path"

    invoke-virtual {v1}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v0, v1, v8}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 213
    :cond_8
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->startDefaultPage()V

    goto/16 :goto_0

    .line 216
    :cond_9
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lcom/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 217
    invoke-virtual {v4, v0}, Lcom/android/gallery3d/data/DataManager;->getDefaultSetOf(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    .line 219
    const-string v5, "SingleItemOnly"

    invoke-virtual {p1, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 220
    if-nez v5, :cond_a

    if-eqz v4, :cond_a

    .line 221
    const-string v5, "media-set-path"

    invoke-virtual {v4}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_a
    const-string v4, "media-item-path"

    invoke-virtual {v0}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v0, "media-item-uri"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v0, "treat-back-as-up"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 226
    const-string v0, "treat-back-as-up"

    invoke-virtual {v8, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 231
    :cond_b
    new-instance v0, Lcom/android/gallery3d/app/Gallery$1;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v0, p0, v4}, Lcom/android/gallery3d/app/Gallery$1;-><init>(Lcom/android/gallery3d/app/Gallery;Landroid/content/ContentResolver;)V

    .line 246
    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "_display_name"

    aput-object v5, v4, v1

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/android/gallery3d/app/PhotoPage;

    invoke-virtual {v0, v1, v8}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_c
    move-object v0, v2

    goto/16 :goto_1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_0

    .line 368
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    .line 370
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/Gallery;->setIntentType(Landroid/content/Intent;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->disableToggleStatusBar()V

    .line 67
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/Gallery;->requestWindowFeature(I)Z

    .line 69
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/Gallery;->requestWindowFeature(I)Z

    .line 71
    const v1, 0x7f040035

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/Gallery;->setContentView(I)V

    .line 73
    if-eqz p1, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/app/StateManager;->restoreFromState(Landroid/os/Bundle;)V

    .line 79
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    .line 81
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 82
    .local v0, bar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 83
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setEnabledBackWhenOverlay(Z)V

    .line 85
    :cond_0
    return-void

    .line 76
    .end local v0           #bar:Landroid/app/ActionBar;
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/Gallery;->initializeByIntent()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 327
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 328
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/StateManager;->createOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 351
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onPause()V

    .line 352
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/gallery3d/util/GalleryUtils;->setHasInitBrigtnessFlag(Z)V

    .line 353
    iget-object v1, p0, Lcom/android/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/android/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 356
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/Gallery;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 358
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryAppImpl;

    .line 359
    .local v0, app:Lcom/android/gallery3d/app/GalleryAppImpl;
    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryAppImpl;->getRemoteDeviceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 360
    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryAppImpl;->getDlnaClient()Landroid/media/dlna/DlnaClient;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/dlna/DlnaClient;->stop(Landroid/media/dlna/DlnaClient$RemoteCallListener;)Z

    .line 361
    invoke-virtual {v0, v3}, Lcom/android/gallery3d/app/GalleryAppImpl;->setRemoteDeviceId(Ljava/lang/String;)V

    .line 363
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 333
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 334
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onResume()V

    .line 336
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->getHasInitBrigtnessFlag()Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->initGalleryBrightness(Landroid/content/Context;)V

    .line 338
    invoke-static {v1}, Lcom/android/gallery3d/util/GalleryUtils;->setHasInitBrigtnessFlag(Z)V

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/android/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 345
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "screen_brightness"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/Gallery;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 347
    return-void

    .line 333
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startDefaultPage()V
    .locals 4

    .prologue
    .line 115
    invoke-static {p0}, Lcom/android/gallery3d/picasasource/PicasaSource;->showSignInReminder(Landroid/app/Activity;)V

    .line 116
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 117
    const-string v1, "media-path"

    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v1, "set-title"

    const/high16 v2, 0x7f0a

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/Gallery;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v1, v2, v0}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 121
    invoke-static {p0}, Lcom/android/gallery3d/picasasource/PicasaSource;->getVersionCheckDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    .line 122
    iget-object v0, p0, Lcom/android/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 125
    :cond_0
    return-void
.end method
