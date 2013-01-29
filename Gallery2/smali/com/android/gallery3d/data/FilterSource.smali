.class Lcom/android/gallery3d/data/FilterSource;
.super Lcom/android/gallery3d/data/MediaSource;
.source "FilterSource.java"


# instance fields
.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mMatcher:Lcom/android/gallery3d/data/PathMatcher;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 3
    .parameter "application"

    .prologue
    .line 31
    const-string v0, "filter"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/android/gallery3d/data/FilterSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 33
    new-instance v0, Lcom/android/gallery3d/data/PathMatcher;

    invoke-direct {v0}, Lcom/android/gallery3d/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/FilterSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    .line 34
    iget-object v0, p0, Lcom/android/gallery3d/data/FilterSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/filter/mediatype/*/*"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/data/FilterSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/filter/delete/*"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/data/FilterSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/filter/lock/*"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 37
    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;
    .locals 8
    .parameter "path"

    .prologue
    const/4 v7, 0x0

    .line 45
    iget-object v5, p0, Lcom/android/gallery3d/data/FilterSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v5, p1}, Lcom/android/gallery3d/data/PathMatcher;->match(Lcom/android/gallery3d/data/Path;)I

    move-result v1

    .line 46
    .local v1, matchType:I
    iget-object v5, p0, Lcom/android/gallery3d/data/FilterSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v5}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    .line 47
    .local v0, dataManager:Lcom/android/gallery3d/data/DataManager;
    packed-switch v1, :pswitch_data_0

    .line 65
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bad path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 49
    :pswitch_0
    iget-object v5, p0, Lcom/android/gallery3d/data/FilterSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v2

    .line 50
    .local v2, mediaType:I
    iget-object v5, p0, Lcom/android/gallery3d/data/FilterSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/data/PathMatcher;->getVar(I)Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, setsName:Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/android/gallery3d/data/DataManager;->getMediaSetsFromString(Ljava/lang/String;)[Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    .line 52
    .local v3, sets:[Lcom/android/gallery3d/data/MediaSet;
    new-instance v5, Lcom/android/gallery3d/data/FilterTypeSet;

    aget-object v6, v3, v7

    invoke-direct {v5, p1, v0, v6, v2}, Lcom/android/gallery3d/data/FilterTypeSet;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/data/MediaSet;I)V

    .line 62
    .end local v2           #mediaType:I
    :goto_0
    return-object v5

    .line 55
    .end local v3           #sets:[Lcom/android/gallery3d/data/MediaSet;
    .end local v4           #setsName:Ljava/lang/String;
    :pswitch_1
    iget-object v5, p0, Lcom/android/gallery3d/data/FilterSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/data/PathMatcher;->getVar(I)Ljava/lang/String;

    move-result-object v4

    .line 56
    .restart local v4       #setsName:Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/android/gallery3d/data/DataManager;->getMediaSetsFromString(Ljava/lang/String;)[Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    .line 57
    .restart local v3       #sets:[Lcom/android/gallery3d/data/MediaSet;
    new-instance v5, Lcom/android/gallery3d/data/FilterDeleteSet;

    aget-object v6, v3, v7

    invoke-direct {v5, p1, v6}, Lcom/android/gallery3d/data/FilterDeleteSet;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/MediaSet;)V

    goto :goto_0

    .line 60
    .end local v3           #sets:[Lcom/android/gallery3d/data/MediaSet;
    .end local v4           #setsName:Ljava/lang/String;
    :pswitch_2
    iget-object v5, p0, Lcom/android/gallery3d/data/FilterSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/data/PathMatcher;->getVar(I)Ljava/lang/String;

    move-result-object v4

    .line 61
    .restart local v4       #setsName:Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/android/gallery3d/data/DataManager;->getMediaSetsFromString(Ljava/lang/String;)[Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    .line 62
    .restart local v3       #sets:[Lcom/android/gallery3d/data/MediaSet;
    new-instance v5, Lcom/android/gallery3d/data/FilterLockSet;

    aget-object v6, v3, v7

    invoke-direct {v5, p1, v0, v6}, Lcom/android/gallery3d/data/FilterLockSet;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/data/MediaSet;)V

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
