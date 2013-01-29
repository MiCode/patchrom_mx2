.class public Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;
.super Ljava/lang/Object;
.source "ChanelProgramDetailEntity.java"


# instance fields
.field private cid:Ljava/lang/String;

.field private descriptionMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

.field private download_address:Ljava/lang/String;

.field private duration:Ljava/lang/String;

.field private episodesCode:Ljava/lang/String;

.field private episodesListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/EpisodesEntity;",
            ">;"
        }
    .end annotation
.end field

.field private episodesMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

.field private head_duration:Ljava/lang/String;

.field private imdb:Ljava/lang/String;

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

.field private mmsid:Ljava/lang/String;

.field private play_address:Ljava/lang/String;

.field private similarVideoCode:Ljava/lang/String;

.field private similarVideoListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;",
            ">;"
        }
    .end annotation
.end field

.field private similarVideoMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

.field private stype:Ljava/lang/String;

.field private tail_duration:Ljava/lang/String;

.field private vid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->vid:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->cid:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->mmsid:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->imdb:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->duration:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->head_duration:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->tail_duration:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->play_address:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->download_address:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->descriptionMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    .line 28
    iput-object v1, p0, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->lableListEntity:Ljava/util/ArrayList;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->similarVideoCode:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->similarVideoMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    .line 32
    iput-object v1, p0, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->similarVideoListEntity:Ljava/util/ArrayList;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->episodesCode:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->episodesMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    .line 36
    iput-object v1, p0, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->episodesListEntity:Ljava/util/ArrayList;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->stype:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDescriptionMsgEntity()Lcom/meizu/video/client/ui/entity/MsgEntity;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->descriptionMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    return-object v0
.end method

.method public getEpisodesCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->episodesCode:Ljava/lang/String;

    return-object v0
.end method

.method public getEpisodesListEntity()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/EpisodesEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->episodesListEntity:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getEpisodesMsgEntity()Lcom/meizu/video/client/ui/entity/MsgEntity;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->episodesMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    return-object v0
.end method

.method public getImdb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->imdb:Ljava/lang/String;

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
    .line 102
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->lableListEntity:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSimilarVideoCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->similarVideoCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSimilarVideoListEntity()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->similarVideoListEntity:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSimilarVideoMsgEntity()Lcom/meizu/video/client/ui/entity/MsgEntity;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->similarVideoMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    return-object v0
.end method

.method public getStype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->stype:Ljava/lang/String;

    return-object v0
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0
    .parameter "cid"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->cid:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setDescriptionMsgEntity(Lcom/meizu/video/client/ui/entity/MsgEntity;)V
    .locals 0
    .parameter "descriptionMsgEntity"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->descriptionMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    .line 100
    return-void
.end method

.method public setDownload_address(Ljava/lang/String;)V
    .locals 0
    .parameter "download_address"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->download_address:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->duration:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setEpisodesCode(Ljava/lang/String;)V
    .locals 0
    .parameter "episodesCode"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->episodesCode:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setEpisodesListEntity(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/EpisodesEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, episodesListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/EpisodesEntity;>;"
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->episodesListEntity:Ljava/util/ArrayList;

    .line 142
    return-void
.end method

.method public setEpisodesMsgEntity(Lcom/meizu/video/client/ui/entity/MsgEntity;)V
    .locals 0
    .parameter "episodesMsgEntity"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->episodesMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    .line 136
    return-void
.end method

.method public setHead_duration(Ljava/lang/String;)V
    .locals 0
    .parameter "head_duration"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->head_duration:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setImdb(Ljava/lang/String;)V
    .locals 0
    .parameter "imdb"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->imdb:Ljava/lang/String;

    .line 64
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
    .line 105
    .local p1, lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->lableListEntity:Ljava/util/ArrayList;

    .line 106
    return-void
.end method

.method public setMmsid(Ljava/lang/String;)V
    .locals 0
    .parameter "mmsid"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->mmsid:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setPlay_address(Ljava/lang/String;)V
    .locals 0
    .parameter "play_address"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->play_address:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setSimilarVideoCode(Ljava/lang/String;)V
    .locals 0
    .parameter "similarVideoCode"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->similarVideoCode:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setSimilarVideoListEntity(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, similarVideoListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;>;"
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->similarVideoListEntity:Ljava/util/ArrayList;

    .line 124
    return-void
.end method

.method public setSimilarVideoMsgEntity(Lcom/meizu/video/client/ui/entity/MsgEntity;)V
    .locals 0
    .parameter "similarVideoMsgEntity"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->similarVideoMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    .line 118
    return-void
.end method

.method public setStype(Ljava/lang/String;)V
    .locals 0
    .parameter "stype"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->stype:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setTail_duration(Ljava/lang/String;)V
    .locals 0
    .parameter "tail_duration"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->tail_duration:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setVid(Ljava/lang/String;)V
    .locals 0
    .parameter "vid"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->vid:Ljava/lang/String;

    .line 46
    return-void
.end method
