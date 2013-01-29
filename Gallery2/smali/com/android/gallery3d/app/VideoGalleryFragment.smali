.class public Lcom/android/gallery3d/app/VideoGalleryFragment;
.super Landroid/app/Fragment;
.source "VideoGalleryFragment.java"


# instance fields
.field private mActivity:Lcom/android/gallery3d/app/GalleryActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/gallery3d/app/VideoGalleryFragment;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/VideoGalleryFragment;)Lcom/android/gallery3d/app/GalleryActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoGalleryFragment;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    return-object v0
.end method

.method private getContentType(Landroid/content/Intent;)Ljava/lang/String;
    .locals 5
    .parameter "intent"

    .prologue
    .line 130
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, type:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 138
    .end local v1           #type:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 133
    .restart local v1       #type:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 135
    .local v2, uri:Landroid/net/Uri;
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/app/VideoGalleryFragment;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, t:Ljava/lang/Throwable;
    const-string v3, "Gallery2"

    const-string v4, "get type fail"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initializeByIntent()V
    .locals 5

    .prologue
    .line 80
    iget-object v3, p0, Lcom/android/gallery3d/app/VideoGalleryFragment;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 81
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/VideoGalleryFragment;->startGetContent(Landroid/content/Intent;)V

    .line 102
    :goto_0
    return-void

    .line 85
    :cond_0
    const-string v3, "android.intent.action.PICK"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 89
    const-string v3, "Gallery2"

    const-string v4, "action PICK is not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, type:Ljava/lang/String;
    const-string v3, "vnd.android.cursor.dir/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 92
    const-string v3, "/image"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "image/*"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    :cond_1
    const-string v3, "/video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "video/*"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/VideoGalleryFragment;->startGetContent(Landroid/content/Intent;)V

    goto :goto_0

    .line 96
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

    .line 98
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/VideoGalleryFragment;->startViewAction(Landroid/content/Intent;)V

    goto :goto_0

    .line 100
    :cond_5
    invoke-virtual {p0}, Lcom/android/gallery3d/app/VideoGalleryFragment;->startDefaultPage()V

    goto :goto_0
.end method

.method private startGetContent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 120
    .local v0, data:Landroid/os/Bundle;
    :goto_0
    const-string v2, "get-content"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 121
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoGalleryFragment;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/gallery3d/util/GalleryUtils;->determineTypeBits(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    .line 122
    .local v1, typeBits:I
    const-string v2, "type-bits"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 123
    const-string v2, "media-path"

    iget-object v3, p0, Lcom/android/gallery3d/app/VideoGalleryFragment;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v2, "set-title"

    const v3, 0x7f0a01d3

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/app/VideoGalleryFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoGalleryFragment;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v2, v3, v0}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 127
    return-void

    .line 117
    .end local v0           #data:Landroid/os/Bundle;
    .end local v1           #typeBits:I
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method private startViewAction(Landroid/content/Intent;)V
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 143
    const-string v0, "slideshow"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 144
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 145
    const-string v3, "set-title"

    const v4, 0x7f0a01d3

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/VideoGalleryFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 147
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoGalleryFragment;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 148
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoGalleryFragment;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    .line 149
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v3

    instance-of v3, v3, Lcom/android/gallery3d/data/MediaItem;

    if-eqz v3, :cond_1

    .line 152
    :cond_0
    invoke-virtual {v2, v6}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 155
    :cond_1
    const-string v2, "media-set-path"

    invoke-virtual {v0}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v0, "random-order"

    invoke-virtual {v8, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 157
    const-string v0, "repeat"

    invoke-virtual {v8, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 158
    const-string v0, "dream"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    const-string v0, "dream"

    invoke-virtual {v8, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoGalleryFragment;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/android/gallery3d/app/SlideshowPage;

    invoke-virtual {v0, v1, v8}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 240
    :goto_0
    return-void

    .line 163
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoGalleryFragment;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v4

    .line 164
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 165
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/VideoGalleryFragment;->getContentType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 166
    if-nez v0, :cond_4

    .line 167
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoGalleryFragment;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0156

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 169
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoGalleryFragment;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 172
    :cond_4
    if-nez v3, :cond_5

    .line 173
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoGalleryFragment;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/gallery3d/util/GalleryUtils;->determineTypeBits(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    .line 174
    const-string v1, "type-bits"

    invoke-virtual {v8, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 175
    const-string v1, "media-path"

    iget-object v2, p0, Lcom/android/gallery3d/app/VideoGalleryFragment;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoGalleryFragment;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v0, v1, v8}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 178
    :cond_5
    const-string v5, "vnd.android.cursor.dir"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 180
    const-string v0, "mediaTypes"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 181
    if-eqz v0, :cond_6

    .line 182
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "mediaTypes"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 186
    :cond_6
    invoke-virtual {v4, v3, v2}, Lcom/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    .line 188
    if-eqz v1, :cond_c

    .line 189
    invoke-virtual {v4, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    .line 191
    :goto_1
    if-eqz v0, :cond_8

    .line 192
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->isLeafAlbum()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 193
    const-string v0, "media-path"

    invoke-virtual {v1}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v0, "parent-media-path"

    const/16 v1, 0xa

    invoke-virtual {v4, v1}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoGalleryFragment;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v0, v1, v8}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 198
    :cond_7
    const-string v0, "media-path"

    invoke-virtual {v1}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoGalleryFragment;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v0, v1, v8}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 202
    :cond_8
    invoke-virtual {p0}, Lcom/android/gallery3d/app/VideoGalleryFragment;->startDefaultPage()V

    goto/16 :goto_0

    .line 205
    :cond_9
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lcom/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 206
    invoke-virtual {v4, v0}, Lcom/android/gallery3d/data/DataManager;->getDefaultSetOf(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    .line 208
    const-string v5, "SingleItemOnly"

    invoke-virtual {p1, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 209
    if-nez v5, :cond_a

    if-eqz v4, :cond_a

    .line 210
    const-string v5, "media-set-path"

    invoke-virtual {v4}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_a
    const-string v4, "media-item-path"

    invoke-virtual {v0}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v0, "treat-back-as-up"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 214
    const-string v0, "treat-back-as-up"

    invoke-virtual {v8, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 219
    :cond_b
    new-instance v0, Lcom/android/gallery3d/app/VideoGalleryFragment$1;

    iget-object v4, p0, Lcom/android/gallery3d/app/VideoGalleryFragment;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v0, p0, v4}, Lcom/android/gallery3d/app/VideoGalleryFragment$1;-><init>(Lcom/android/gallery3d/app/VideoGalleryFragment;Landroid/content/ContentResolver;)V

    .line 234
    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "_display_name"

    aput-object v5, v4, v1

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoGalleryFragment;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/android/gallery3d/app/PhotoPage;

    invoke-virtual {v0, v1, v8}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_c
    move-object v0, v2

    goto/16 :goto_1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 55
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoGalleryFragment;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/android/gallery3d/app/VideoGalleryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryActivity;

    iput-object v0, p0, Lcom/android/gallery3d/app/VideoGalleryFragment;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    .line 57
    invoke-direct {p0}, Lcom/android/gallery3d/app/VideoGalleryFragment;->initializeByIntent()V

    .line 65
    :goto_0
    return-void

    .line 59
    :cond_0
    if-eqz p1, :cond_1

    .line 60
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoGalleryFragment;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/StateManager;->restoreFromState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 62
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/VideoGalleryFragment;->initializeByIntent()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 69
    const v1, 0x7f040085

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 70
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public startDefaultPage()V
    .locals 4

    .prologue
    .line 105
    iget-object v1, p0, Lcom/android/gallery3d/app/VideoGalleryFragment;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/gallery3d/picasasource/PicasaSource;->showSignInReminder(Landroid/app/Activity;)V

    .line 106
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 107
    .local v0, data:Landroid/os/Bundle;
    const-string v1, "media-path"

    iget-object v2, p0, Lcom/android/gallery3d/app/VideoGalleryFragment;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v1, "set-title"

    const v2, 0x7f0a01d3

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/VideoGalleryFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/android/gallery3d/app/VideoGalleryFragment;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v1, v2, v0}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 114
    return-void
.end method
