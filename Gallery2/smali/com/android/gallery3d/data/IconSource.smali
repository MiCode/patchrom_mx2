.class public Lcom/android/gallery3d/data/IconSource;
.super Lcom/android/gallery3d/data/MediaSource;
.source "IconSource.java"


# instance fields
.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mMatcher:Lcom/android/gallery3d/data/PathMatcher;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 3
    .parameter "application"

    .prologue
    .line 17
    const-string v0, "icon"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/android/gallery3d/data/IconSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 19
    new-instance v0, Lcom/android/gallery3d/data/PathMatcher;

    invoke-direct {v0}, Lcom/android/gallery3d/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/IconSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    .line 20
    iget-object v0, p0, Lcom/android/gallery3d/data/IconSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/icon/folder/"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 21
    iget-object v0, p0, Lcom/android/gallery3d/data/IconSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/icon/favorite/"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 22
    iget-object v0, p0, Lcom/android/gallery3d/data/IconSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/icon/folder/*"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 23
    iget-object v0, p0, Lcom/android/gallery3d/data/IconSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/icon/favorite/*"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 24
    iget-object v0, p0, Lcom/android/gallery3d/data/IconSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/icon/res/*"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 25
    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;
    .locals 4
    .parameter "path"

    .prologue
    .line 29
    iget-object v1, p0, Lcom/android/gallery3d/data/IconSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/data/PathMatcher;->match(Lcom/android/gallery3d/data/Path;)I

    move-result v0

    .line 31
    .local v0, matchType:I
    packed-switch v0, :pswitch_data_0

    .line 48
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    :pswitch_0
    new-instance v1, Lcom/android/gallery3d/data/FolderIconAlbumSet;

    iget-object v2, p0, Lcom/android/gallery3d/data/IconSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v1, p1, v2}, Lcom/android/gallery3d/data/FolderIconAlbumSet;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;)V

    .line 45
    :goto_0
    return-object v1

    .line 36
    :pswitch_1
    new-instance v1, Lcom/android/gallery3d/data/FavoriteIconAlbumSet;

    iget-object v2, p0, Lcom/android/gallery3d/data/IconSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v1, p1, v2}, Lcom/android/gallery3d/data/FavoriteIconAlbumSet;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;)V

    goto :goto_0

    .line 39
    :pswitch_2
    new-instance v1, Lcom/android/gallery3d/data/FolderIconAlbum;

    iget-object v2, p0, Lcom/android/gallery3d/data/IconSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v1, p1, v2}, Lcom/android/gallery3d/data/FolderIconAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;)V

    goto :goto_0

    .line 42
    :pswitch_3
    new-instance v1, Lcom/android/gallery3d/data/FavoriteIconAlbum;

    iget-object v2, p0, Lcom/android/gallery3d/data/IconSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v1, p1, v2}, Lcom/android/gallery3d/data/FavoriteIconAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;)V

    goto :goto_0

    .line 45
    :pswitch_4
    new-instance v1, Lcom/android/gallery3d/data/ResImage;

    iget-object v2, p0, Lcom/android/gallery3d/data/IconSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v1, p1, v2}, Lcom/android/gallery3d/data/ResImage;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;)V

    goto :goto_0

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
