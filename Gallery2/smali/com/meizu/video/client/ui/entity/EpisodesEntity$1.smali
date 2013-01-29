.class final Lcom/meizu/video/client/ui/entity/EpisodesEntity$1;
.super Ljava/lang/Object;
.source "EpisodesEntity.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/video/client/ui/entity/EpisodesEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/meizu/video/client/ui/entity/EpisodesEntity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 178
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    .locals 3
    .parameter "source"

    .prologue
    .line 181
    new-instance v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    invoke-direct {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;-><init>()V

    .line 182
    .local v0, episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/meizu/video/client/ui/entity/EpisodesEntity;->download_address:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->access$002(Lcom/meizu/video/client/ui/entity/EpisodesEntity;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    #setter for: Lcom/meizu/video/client/ui/entity/EpisodesEntity;->lsize:D
    invoke-static {v0, v1, v2}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->access$102(Lcom/meizu/video/client/ui/entity/EpisodesEntity;D)D

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/meizu/video/client/ui/entity/EpisodesEntity;->download_address_other:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->access$202(Lcom/meizu/video/client/ui/entity/EpisodesEntity;Ljava/lang/String;)Ljava/lang/String;

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    #setter for: Lcom/meizu/video/client/ui/entity/EpisodesEntity;->hsize:D
    invoke-static {v0, v1, v2}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->access$302(Lcom/meizu/video/client/ui/entity/EpisodesEntity;D)D

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/meizu/video/client/ui/entity/EpisodesEntity;->title:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->access$402(Lcom/meizu/video/client/ui/entity/EpisodesEntity;Ljava/lang/String;)Ljava/lang/String;

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/meizu/video/client/ui/entity/EpisodesEntity;->progression:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->access$502(Lcom/meizu/video/client/ui/entity/EpisodesEntity;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity$1;->createFromParcel(Landroid/os/Parcel;)Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    .locals 1
    .parameter "size"

    .prologue
    .line 192
    new-array v0, p1, [Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity$1;->newArray(I)[Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    move-result-object v0

    return-object v0
.end method
