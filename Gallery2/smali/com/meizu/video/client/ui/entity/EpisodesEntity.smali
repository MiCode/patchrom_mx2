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
    .line 178
    new-instance v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity$1;

    invoke-direct {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity$1;-><init>()V

    sput-object v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

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
    iput-wide v1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->lsize:D

    .line 31
    iput-wide v1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->hsize:D

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
    iput-boolean v3, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->isSelected:Z

    .line 42
    iput-boolean v3, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->isLastPlayPosition:Z

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
    .line 169
    const/4 v1, 0x0

    .line 171
    .local v1, episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-object v1

    .line 172
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
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public getDownload_address()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->download_address:Ljava/lang/String;

    return-object v0
.end method

.method public getDownload_address_other()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->download_address_other:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->flag:Ljava/lang/String;

    return-object v0
.end method

.method public getHead_duration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->head_duration:Ljava/lang/String;

    return-object v0
.end method

.method public getHmid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->hmid:Ljava/lang/String;

    return-object v0
.end method

.method public getLmid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->lmid:Ljava/lang/String;

    return-object v0
.end method

.method public getPlay_address()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->play_address:Ljava/lang/String;

    return-object v0
.end method

.method public getPlay_address_other()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->play_address_other:Ljava/lang/String;

    return-object v0
.end method

.method public getProgression()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->progression:Ljava/lang/String;

    return-object v0
.end method

.method public getTail_duration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->tail_duration:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->vid:Ljava/lang/String;

    return-object v0
.end method

.method public isLastPlayPosition()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->isLastPlayPosition:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->isSelected:Z

    return v0
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0
    .parameter "cid"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->cid:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->description:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setDownload_address(Ljava/lang/String;)V
    .locals 0
    .parameter "download_address"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->download_address:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setDownload_address_other(Ljava/lang/String;)V
    .locals 0
    .parameter "download_address_other"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->download_address_other:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->duration:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setFlag(Ljava/lang/String;)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->flag:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setHead_duration(Ljava/lang/String;)V
    .locals 0
    .parameter "head_duration"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->head_duration:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setHmid(Ljava/lang/String;)V
    .locals 0
    .parameter "hmid"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->hmid:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setHsize(D)V
    .locals 0
    .parameter "hsize"

    .prologue
    .line 126
    iput-wide p1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->hsize:D

    .line 127
    return-void
.end method

.method public setLastPlayPosition(Z)V
    .locals 0
    .parameter "isLastPlayPosition"

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->isLastPlayPosition:Z

    .line 164
    return-void
.end method

.method public setLmid(Ljava/lang/String;)V
    .locals 0
    .parameter "lmid"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->lmid:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setLsize(D)V
    .locals 0
    .parameter "lsize"

    .prologue
    .line 120
    iput-wide p1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->lsize:D

    .line 121
    return-void
.end method

.method public setMmsid(Ljava/lang/String;)V
    .locals 0
    .parameter "mmsid"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->mmsid:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setPlay_address(Ljava/lang/String;)V
    .locals 0
    .parameter "play_address"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->play_address:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setPlay_address_other(Ljava/lang/String;)V
    .locals 0
    .parameter "play_address_other"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->play_address_other:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setProgression(Ljava/lang/String;)V
    .locals 0
    .parameter "progression"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->progression:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter "isSelected"

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->isSelected:Z

    .line 157
    return-void
.end method

.method public setTail_duration(Ljava/lang/String;)V
    .locals 0
    .parameter "tail_duration"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->tail_duration:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->title:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setVid(Ljava/lang/String;)V
    .locals 0
    .parameter "vid"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->vid:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->download_address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    iget-wide v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->lsize:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 204
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->download_address_other:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    iget-wide v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->hsize:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 206
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->progression:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    return-void
.end method
