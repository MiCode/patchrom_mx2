.class public Lcom/meizu/video/client/ui/entity/RecommendEntity;
.super Ljava/lang/Object;
.source "RecommendEntity.java"


# instance fields
.field private chanelProgramName:Ljava/lang/String;

.field private cid:Ljava/lang/String;

.field private duration:Ljava/lang/String;

.field private head_duration:Ljava/lang/String;

.field private intro:Ljava/lang/String;

.field private lableListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/LableEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mediaDataType:Ljava/lang/String;

.field private mediaOperaton:Ljava/lang/String;

.field private mmsid:Ljava/lang/String;

.field private play_address:Ljava/lang/String;

.field private tail_duration:Ljava/lang/String;

.field private vid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/RecommendEntity;->vid:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/RecommendEntity;->cid:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/RecommendEntity;->mmsid:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/RecommendEntity;->duration:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/RecommendEntity;->play_address:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/RecommendEntity;->head_duration:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/RecommendEntity;->tail_duration:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/RecommendEntity;->lableListEntity:Ljava/util/ArrayList;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/RecommendEntity;->chanelProgramName:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/RecommendEntity;->mediaDataType:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/RecommendEntity;->mediaOperaton:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/RecommendEntity;->intro:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getChanelProgramName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/RecommendEntity;->chanelProgramName:Ljava/lang/String;

    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/RecommendEntity;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public getIntro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/RecommendEntity;->intro:Ljava/lang/String;

    return-object v0
.end method

.method public getLableListEntity()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/LableEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/RecommendEntity;->lableListEntity:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMediaDataType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/RecommendEntity;->mediaDataType:Ljava/lang/String;

    return-object v0
.end method

.method public getVid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/RecommendEntity;->vid:Ljava/lang/String;

    return-object v0
.end method

.method public setChanelProgramName(Ljava/lang/String;)V
    .locals 0
    .parameter "chanelProgramName"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/RecommendEntity;->chanelProgramName:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0
    .parameter "cid"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/RecommendEntity;->cid:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/RecommendEntity;->duration:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setHead_duration(Ljava/lang/String;)V
    .locals 0
    .parameter "head_duration"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/RecommendEntity;->head_duration:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setIntro(Ljava/lang/String;)V
    .locals 0
    .parameter "intro"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/RecommendEntity;->intro:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setLableListEntity(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/LableEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/RecommendEntity;->lableListEntity:Ljava/util/ArrayList;

    .line 80
    return-void
.end method

.method public setMediaDataType(Ljava/lang/String;)V
    .locals 0
    .parameter "mediaDataType"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/RecommendEntity;->mediaDataType:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setMediaOperaton(Ljava/lang/String;)V
    .locals 0
    .parameter "mediaOperaton"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/RecommendEntity;->mediaOperaton:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setMmsid(Ljava/lang/String;)V
    .locals 0
    .parameter "mmsid"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/RecommendEntity;->mmsid:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setPlay_address(Ljava/lang/String;)V
    .locals 0
    .parameter "play_address"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/RecommendEntity;->play_address:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setTail_duration(Ljava/lang/String;)V
    .locals 0
    .parameter "tail_duration"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/RecommendEntity;->tail_duration:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setVid(Ljava/lang/String;)V
    .locals 0
    .parameter "vid"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/RecommendEntity;->vid:Ljava/lang/String;

    .line 38
    return-void
.end method
