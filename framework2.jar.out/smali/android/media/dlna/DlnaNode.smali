.class public Landroid/media/dlna/DlnaNode;
.super Ljava/lang/Object;
.source "DlnaNode.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/dlna/DlnaNode;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mInfomap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 197
    new-instance v0, Landroid/media/dlna/DlnaNode$1;

    invoke-direct {v0}, Landroid/media/dlna/DlnaNode$1;-><init>()V

    sput-object v0, Landroid/media/dlna/DlnaNode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/media/dlna/DlnaNode;)V
    .locals 2
    .parameter "other"

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/media/dlna/DlnaNode;->mInfomap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Landroid/media/dlna/DlnaNode;->mInfomap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroid/media/dlna/DlnaNode;->mInfomap:Ljava/util/Map;

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/dlna/DlnaNode;->mInfomap:Ljava/util/Map;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "parentId"
    .parameter "id"
    .parameter "contentType"
    .parameter "title"

    .prologue
    .line 45
    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Landroid/media/dlna/DlnaNode;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "parentId"
    .parameter "id"
    .parameter "isLeaf"
    .parameter "contentType"
    .parameter "title"
    .parameter "childCount"

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/dlna/DlnaNode;->mInfomap:Ljava/util/Map;

    .line 51
    iget-object v0, p0, Landroid/media/dlna/DlnaNode;->mInfomap:Ljava/util/Map;

    const-string v1, "PARENT_ID"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Landroid/media/dlna/DlnaNode;->mInfomap:Ljava/util/Map;

    const-string v1, "id"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v1, p0, Landroid/media/dlna/DlnaNode;->mInfomap:Ljava/util/Map;

    const-string v2, "nodeType"

    if-eqz p3, :cond_0

    sget-object v0, Landroid/media/dlna/Constants$NodeType;->LEAF:Landroid/media/dlna/Constants$NodeType;

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Landroid/media/dlna/DlnaNode;->mInfomap:Ljava/util/Map;

    const-string v1, "content"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Landroid/media/dlna/DlnaNode;->mInfomap:Ljava/util/Map;

    const-string v1, "title"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Landroid/media/dlna/DlnaNode;->mInfomap:Ljava/util/Map;

    const-string v1, "childrenCount"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void

    .line 53
    :cond_0
    sget-object v0, Landroid/media/dlna/Constants$NodeType;->BRANCH:Landroid/media/dlna/Constants$NodeType;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, infoMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-eqz p1, :cond_0

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroid/media/dlna/DlnaNode;->mInfomap:Ljava/util/Map;

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/dlna/DlnaNode;->mInfomap:Ljava/util/Map;

    goto :goto_0
.end method

.method public static readFrom(Landroid/os/Parcel;)Landroid/media/dlna/DlnaNode;
    .locals 3
    .parameter "src"

    .prologue
    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 192
    .local v0, infomap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 193
    new-instance v1, Landroid/media/dlna/DlnaNode;

    invoke-direct {v1, v0}, Landroid/media/dlna/DlnaNode;-><init>(Ljava/util/Map;)V

    .line 194
    .local v1, node:Landroid/media/dlna/DlnaNode;
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Landroid/media/dlna/DlnaNode;->mInfomap:Ljava/util/Map;

    const-string v1, "album"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumArtUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Landroid/media/dlna/DlnaNode;->mInfomap:Ljava/util/Map;

    const-string v1, "albumArtURI"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Landroid/media/dlna/DlnaNode;->mInfomap:Ljava/util/Map;

    const-string v1, "artist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getChildrenCount()I
    .locals 3

    .prologue
    .line 89
    iget-object v1, p0, Landroid/media/dlna/DlnaNode;->mInfomap:Ljava/util/Map;

    const-string v2, "childrenCount"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 90
    .local v0, co:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Landroid/media/dlna/DlnaNode;->mInfomap:Ljava/util/Map;

    const-string v1, "content"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 3

    .prologue
    .line 130
    iget-object v1, p0, Landroid/media/dlna/DlnaNode;->mInfomap:Ljava/util/Map;

    const-string v2, "duration"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 131
    .local v0, dur:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Landroid/media/dlna/DlnaNode;->mInfomap:Ljava/util/Map;

    const-string v1, "id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getInfoByName(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 143
    iget-object v0, p0, Landroid/media/dlna/DlnaNode;->mInfomap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getParentId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Landroid/media/dlna/DlnaNode;->mInfomap:Ljava/util/Map;

    const-string v1, "PARENT_ID"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRawData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Landroid/media/dlna/DlnaNode;->mInfomap:Ljava/util/Map;

    return-object v0
.end method

.method public getRefId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Landroid/media/dlna/DlnaNode;->mInfomap:Ljava/util/Map;

    const-string v1, "refId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Landroid/media/dlna/DlnaNode;->mInfomap:Ljava/util/Map;

    const-string v1, "title"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Landroid/media/dlna/DlnaNode;->mInfomap:Ljava/util/Map;

    const-string v1, "uri"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isLeaf()Z
    .locals 4

    .prologue
    .line 76
    sget-object v1, Landroid/media/dlna/Constants$NodeType;->BRANCH:Landroid/media/dlna/Constants$NodeType;

    iget-object v2, p0, Landroid/media/dlna/DlnaNode;->mInfomap:Ljava/util/Map;

    const-string v3, "nodeType"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/dlna/Constants$NodeType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 77
    .local v0, il:Z
    :goto_0
    return v0

    .line 76
    .end local v0           #il:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 2
    .parameter "album"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/media/dlna/DlnaNode;->mInfomap:Ljava/util/Map;

    const-string v1, "album"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-void
.end method

.method public setAlbumArtUri(Ljava/lang/String;)V
    .locals 2
    .parameter "albumArtUri"

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/dlna/DlnaNode;->mInfomap:Ljava/util/Map;

    const-string v1, "albumArtURI"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 2
    .parameter "artist"

    .prologue
    .line 110
    iget-object v0, p0, Landroid/media/dlna/DlnaNode;->mInfomap:Ljava/util/Map;

    const-string v1, "artist"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-void
.end method

.method public setDuration(I)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/dlna/DlnaNode;->mInfomap:Ljava/util/Map;

    const-string v1, "duration"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    return-void
.end method

.method public setRefId(Ljava/lang/String;)V
    .locals 2
    .parameter "refId"

    .prologue
    .line 72
    iget-object v0, p0, Landroid/media/dlna/DlnaNode;->mInfomap:Ljava/util/Map;

    const-string v1, "refId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 126
    iget-object v0, p0, Landroid/media/dlna/DlnaNode;->mInfomap:Ljava/util/Map;

    const-string v1, "uri"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 164
    iget-object v0, p0, Landroid/media/dlna/DlnaNode;->mInfomap:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 165
    return-void
.end method
