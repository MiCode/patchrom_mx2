.class public abstract Lcom/android/gallery3d/data/MediaSource;
.super Ljava/lang/Object;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/MediaSource$PathId;
    }
.end annotation


# instance fields
.field private mPrefix:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "prefix"

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/gallery3d/data/MediaSource;->mPrefix:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public abstract createMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;
.end method

.method public findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;
    .locals 1
    .parameter "uri"
    .parameter "type"

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultSetOf(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/Path;
    .locals 1
    .parameter "item"

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaSource;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public mapMediaItems(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;)V
    .locals 8
    .parameter
    .parameter "consumer"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSource$PathId;",
            ">;",
            "Lcom/android/gallery3d/data/MediaSet$ItemConsumer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 78
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 79
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/MediaSource$PathId;

    .line 80
    .local v3, pid:Lcom/android/gallery3d/data/MediaSource$PathId;
    iget-object v5, v3, Lcom/android/gallery3d/data/MediaSource$PathId;->path:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/Path;->getObject()Lcom/android/gallery3d/data/MediaObject;

    move-result-object v2

    .line 81
    .local v2, obj:Lcom/android/gallery3d/data/MediaObject;
    if-nez v2, :cond_0

    .line 83
    :try_start_0
    iget-object v5, v3, Lcom/android/gallery3d/data/MediaSource$PathId;->path:Lcom/android/gallery3d/data/Path;

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/data/MediaSource;->createMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 88
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 89
    iget v5, v3, Lcom/android/gallery3d/data/MediaSource$PathId;->id:I

    check-cast v2, Lcom/android/gallery3d/data/MediaItem;

    .end local v2           #obj:Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {p2, v5, v2}, Lcom/android/gallery3d/data/MediaSet$ItemConsumer;->consume(ILcom/android/gallery3d/data/MediaItem;)V

    .line 78
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    .restart local v2       #obj:Lcom/android/gallery3d/data/MediaObject;
    :catch_0
    move-exception v4

    .line 85
    .local v4, th:Ljava/lang/Throwable;
    const-string v5, "MediaSource"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot create media object: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/gallery3d/data/MediaSource$PathId;->path:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 92
    .end local v2           #obj:Lcom/android/gallery3d/data/MediaObject;
    .end local v3           #pid:Lcom/android/gallery3d/data/MediaSource$PathId;
    .end local v4           #th:Ljava/lang/Throwable;
    :cond_2
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method
