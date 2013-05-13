.class Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;
.super Ljava/lang/Object;
.source "WidgetService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;
.implements Lcom/android/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/gadget/WidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhotoRVFactory"
.end annotation


# instance fields
.field private final mAlbumPath:Ljava/lang/String;

.field private final mApp:Lcom/android/gallery3d/app/GalleryApp;

.field private final mAppWidgetId:I

.field private mSource:Lcom/android/gallery3d/gadget/WidgetSource;

.field private final mType:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;IILjava/lang/String;)V
    .locals 0
    .parameter "app"
    .parameter "id"
    .parameter "type"
    .parameter "albumPath"

    .prologue
    .line 89
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mApp:Lcom/android/gallery3d/app/GalleryApp;

    .line 91
    iput p2, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mAppWidgetId:I

    .line 92
    iput p3, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mType:I

    .line 93
    iput-object p4, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mAlbumPath:Ljava/lang/String;

    .line 94
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    invoke-interface {v0}, Lcom/android/gallery3d/gadget/WidgetSource;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 125
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 137
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mApp:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040003

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 140
    .local v0, rv:Landroid/widget/RemoteViews;
    const v1, 0x7f0d0006

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 141
    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 5
    .parameter "position"

    .prologue
    const v4, 0x7f0d0008

    .line 145
    iget-object v2, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    invoke-interface {v2, p1}, Lcom/android/gallery3d/gadget/WidgetSource;->getImage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 146
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->getLoadingView()Landroid/widget/RemoteViews;

    move-result-object v1

    .line 154
    :goto_0
    return-object v1

    .line 147
    :cond_0
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mApp:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f040005

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 150
    .local v1, views:Landroid/widget/RemoteViews;
    invoke-virtual {v1, v4, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 151
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    invoke-interface {v3, p1}, Lcom/android/gallery3d/gadget/WidgetSource;->getContentUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public onContentDirty()V
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mApp:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mAppWidgetId:I

    const v2, 0x7f0d0009

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 167
    return-void
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 98
    iget v3, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 99
    iget-object v3, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mAlbumPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 100
    .local v2, path:Lcom/android/gallery3d/data/Path;
    iget-object v3, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mApp:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    .line 101
    .local v0, manager:Lcom/android/gallery3d/data/DataManager;
    invoke-virtual {v0, v2}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/MediaSet;

    .line 102
    .local v1, mediaSet:Lcom/android/gallery3d/data/MediaSet;
    if-nez v1, :cond_0

    new-instance v3, Lcom/android/gallery3d/gadget/WidgetService$EmptySource;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/gallery3d/gadget/WidgetService$EmptySource;-><init>(Lcom/android/gallery3d/gadget/WidgetService$1;)V

    :goto_0
    iput-object v3, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    .line 108
    .end local v0           #manager:Lcom/android/gallery3d/data/DataManager;
    .end local v1           #mediaSet:Lcom/android/gallery3d/data/MediaSet;
    .end local v2           #path:Lcom/android/gallery3d/data/Path;
    :goto_1
    iget-object v3, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    invoke-interface {v3, p0}, Lcom/android/gallery3d/gadget/WidgetSource;->setContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 109
    iget-object v3, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mApp:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    iget v4, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mAppWidgetId:I

    const v5, 0x7f0d0009

    invoke-virtual {v3, v4, v5}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 112
    return-void

    .line 102
    .restart local v0       #manager:Lcom/android/gallery3d/data/DataManager;
    .restart local v1       #mediaSet:Lcom/android/gallery3d/data/MediaSet;
    .restart local v2       #path:Lcom/android/gallery3d/data/Path;
    :cond_0
    new-instance v3, Lcom/android/gallery3d/gadget/MediaSetSource;

    invoke-direct {v3, v1}, Lcom/android/gallery3d/gadget/MediaSetSource;-><init>(Lcom/android/gallery3d/data/MediaSet;)V

    goto :goto_0

    .line 106
    .end local v0           #manager:Lcom/android/gallery3d/data/DataManager;
    .end local v1           #mediaSet:Lcom/android/gallery3d/data/MediaSet;
    .end local v2           #path:Lcom/android/gallery3d/data/Path;
    :cond_1
    new-instance v3, Lcom/android/gallery3d/gadget/LocalPhotoSource;

    iget-object v4, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mApp:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/gallery3d/gadget/LocalPhotoSource;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    goto :goto_1
.end method

.method public onDataSetChanged()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    invoke-interface {v0}, Lcom/android/gallery3d/gadget/WidgetSource;->reload()V

    .line 160
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    invoke-interface {v0}, Lcom/android/gallery3d/gadget/WidgetSource;->close()V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    .line 118
    return-void
.end method
