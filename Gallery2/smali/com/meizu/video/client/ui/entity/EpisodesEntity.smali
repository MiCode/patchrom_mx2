.class public Lcom/meizu/video/client/ui/entity/EpisodesEntity;
.super Ljava/lang/Object;
.source "EpisodesEntity.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/meizu/video/client/ui/entity/EpisodesEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cid:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private download_address:Ljava/lang/String;

.field private download_address_other:Ljava/lang/String;

.field private duration:Ljava/lang/String;

.field private flag:Ljava/lang/String;

.field private head_duration:Ljava/lang/String;

.field private hmid:Ljava/lang/String;

.field private hsize:D

.field private isExistOrDownload:Z

.field private isLastPlayPosition:Z

.field private isSelected:Z

.field private lmid:Ljava/lang/String;

.field private lsize:D

.field private mmsid:Ljava/lang/String;

.field private play_address:Ljava/lang/String;

.field private play_address_other:Ljava/lang/String;

.field private progression:Ljava/lang/String;

.field private tail_duration:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private vid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 186
    new-instance v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity$1;

    invoke-direct {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity$1;-><init>()V

    sput-object v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->vid:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->cid:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->mmsid:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->title:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->description:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->duration:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->head_duration:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->tail_duration:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->play_address:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->download_address:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->lmid:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->hmid:Ljava/lang/String;

    .line 30
    iput-wide v2, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->lsize:D

    .line 31
    iput-wide v2, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->hsize:D

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->play_address_other:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->download_address_other:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->progression:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->flag:Ljava/lang/String;

    .line 40
    iput-boolean v1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->isSelected:Z

    .line 42
    iput-boolean v1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->isLastPlayPosition:Z

    .line 44
    iput-boolean v1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->isExistOrDownload:Z

    return-void
.end method

.method static synthetic access$002(Lcom/meizu/video/client/ui/entity/EpisodesEntity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->download_address:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/meizu/video/client/ui/entity/EpisodesEntity;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-wide p1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->lsize:D

    return-wide p1
.end method

.method static synthetic access$202(Lcom/meizu/video/client/ui/entity/EpisodesEntity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->download_address_other:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/meizu/video/client/ui/entity/EpisodesEntity;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-wide p1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->hsize:D

    return-wide p1
.end method

.method static synthetic access$402(Lcom/meizu/video/client/ui/entity/EpisodesEntity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->title:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/meizu/video/client/ui/entity/EpisodesEntity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->progression:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public clone()Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 177
    const/4 v1, 0x0

    .line 179
    .local v1, episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    return-object v1

    .line 180
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->clone()Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public getDownload_address()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->download_address:Ljava/lang/String;

    return-object v0
.end method

.method public getDownload_address_other()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->download_address_other:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->flag:Ljava/lang/String;

    return-object v0
.end method

.method public getHead_duration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->head_duration:Ljava/lang/String;

    return-object v0
.end method

.method public getHmid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->hmid:Ljava/lang/String;

    return-object v0
.end method

.method public getLmid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->lmid:Ljava/lang/String;

    return-object v0
.end method

.method public getPlay_address()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->play_address:Ljava/lang/String;

    return-object v0
.end method

.method public getPlay_address_other()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->play_address_other:Ljava/lang/String;

    return-object v0
.end method

.method public getProgression()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->progression:Ljava/lang/String;

    return-object v0
.end method

.method public getTail_duration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->tail_duration:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->vid:Ljava/lang/String;

    return-object v0
.end method

.method public isExistOrDownload()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->isExistOrDownload:Z

    return v0
.end method

.method public isLastPlayPosition()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->isLastPlayPosition:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->isSelected:Z

    return v0
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0
    .parameter "cid"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->cid:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->description:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setDownload_address(Ljava/lang/String;)V
    .locals 0
    .parameter "download_address"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->download_address:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setDownload_address_other(Ljava/lang/String;)V
    .locals 0
    .parameter "download_address_other"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->download_address_other:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->duration:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setExistOrDownload(Z)V
    .locals 0
    .parameter "isExistOrDownload"

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->isExistOrDownload:Z

    .line 172
    return-void
.end method

.method public setFlag(Ljava/lang/String;)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->flag:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setHead_duration(Ljava/lang/String;)V
    .locals 0
    .parameter "head_duration"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->head_duration:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setHmid(Ljava/lang/String;)V
    .locals 0
    .parameter "hmid"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->hmid:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setHsize(D)V
    .locals 0
    .parameter "hsize"

    .prologue
    .line 128
    iput-wide p1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->hsize:D

    .line 129
    return-void
.end method

.method public setLastPlayPosition(Z)V
    .locals 0
    .parameter "isLastPlayPosition"

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->isLastPlayPosition:Z

    .line 166
    return-void
.end method

.method public setLmid(Ljava/lang/String;)V
    .locals 0
    .parameter "lmid"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->lmid:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setLsize(D)V
    .locals 0
    .parameter "lsize"

    .prologue
    .line 122
    iput-wide p1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->lsize:D

    .line 123
    return-void
.end method

.method public setMmsid(Ljava/lang/String;)V
    .locals 0
    .parameter "mmsid"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->mmsid:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setPlay_address(Ljava/lang/String;)V
    .locals 0
    .parameter "play_address"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->play_address:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setPlay_address_other(Ljava/lang/String;)V
    .locals 0
    .parameter "play_address_other"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->play_address_other:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setProgression(Ljava/lang/String;)V
    .locals 0
    .parameter "progression"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->progression:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter "isSelected"

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->isSelected:Z

    .line 159
    return-void
.end method

.method public setTail_duration(Ljava/lang/String;)V
    .locals 0
    .parameter "tail_duration"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->tail_duration:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->title:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setVid(Ljava/lang/String;)V
    .locals 0
    .parameter "vid"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->vid:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->download_address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    iget-wide v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->lsize:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 212
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->download_address_other:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    iget-wide v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->hsize:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 214
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->progression:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    return-void
.end method
