.class public Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;
.super Ljava/lang/Object;
.source "SimilarVideoEntity.java"


# instance fields
.field private chanelProgramName:Ljava/lang/String;

.field private cid:Ljava/lang/String;

.field private duration:Ljava/lang/String;

.field private head_duration:Ljava/lang/String;

.field private image:Ljava/lang/String;

.field private mediaDataType:Ljava/lang/String;

.field private mediaOperaton:Ljava/lang/String;

.field private mmsid:Ljava/lang/String;

.field private play_address:Ljava/lang/String;

.field private tail_duration:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private vid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->vid:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->cid:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->mmsid:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->title:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->image:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->duration:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->head_duration:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->tail_duration:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->play_address:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->chanelProgramName:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->mediaDataType:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->mediaOperaton:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaDataType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->mediaDataType:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->vid:Ljava/lang/String;

    return-object v0
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0
    .parameter "cid"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->cid:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->duration:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setHead_duration(Ljava/lang/String;)V
    .locals 0
    .parameter "head_duration"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->head_duration:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0
    .parameter "image"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->image:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setMediaDataType(Ljava/lang/String;)V
    .locals 0
    .parameter "mediaDataType"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->mediaDataType:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setMediaOperaton(Ljava/lang/String;)V
    .locals 0
    .parameter "mediaOperaton"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->mediaOperaton:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setMmsid(Ljava/lang/String;)V
    .locals 0
    .parameter "mmsid"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->mmsid:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setPlay_address(Ljava/lang/String;)V
    .locals 0
    .parameter "play_address"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->play_address:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setTail_duration(Ljava/lang/String;)V
    .locals 0
    .parameter "tail_duration"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->tail_duration:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->title:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setVid(Ljava/lang/String;)V
    .locals 0
    .parameter "vid"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->vid:Ljava/lang/String;

    .line 33
    return-void
.end method
