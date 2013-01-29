.class public Lcom/meizu/video/client/ui/entity/FavoriteEntity;
.super Ljava/lang/Object;
.source "FavoriteEntity.java"


# instance fields
.field private chanelProgramName:Ljava/lang/String;

.field private cid:Ljava/lang/String;

.field private id:Ljava/lang/Integer;

.field private imageUrl:Ljava/lang/String;

.field private label1:Ljava/lang/String;

.field private label2:Ljava/lang/String;

.field private label3:Ljava/lang/String;

.field private label4:Ljava/lang/String;

.field private mediaDataType:Ljava/lang/String;

.field private selected:Z

.field private vid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->id:Ljava/lang/Integer;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->vid:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->cid:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->chanelProgramName:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->mediaDataType:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->imageUrl:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->label1:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->label2:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->label3:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->label4:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->selected:Z

    return-void
.end method


# virtual methods
.method public getChanelProgramName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->chanelProgramName:Ljava/lang/String;

    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->label1:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->label2:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->label3:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->label4:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaDataType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->mediaDataType:Ljava/lang/String;

    return-object v0
.end method

.method public getVid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->vid:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->selected:Z

    return v0
.end method

.method public setChanelProgramName(Ljava/lang/String;)V
    .locals 0
    .parameter "chanelProgramName"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->chanelProgramName:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0
    .parameter "cid"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->cid:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->id:Ljava/lang/Integer;

    .line 31
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "imageUrl"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->imageUrl:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setLabel1(Ljava/lang/String;)V
    .locals 0
    .parameter "label1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->label1:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setLabel2(Ljava/lang/String;)V
    .locals 0
    .parameter "label2"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->label2:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setLabel3(Ljava/lang/String;)V
    .locals 0
    .parameter "label3"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->label3:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setLabel4(Ljava/lang/String;)V
    .locals 0
    .parameter "label4"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->label4:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setMediaDataType(Ljava/lang/String;)V
    .locals 0
    .parameter "mediaDataType"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->mediaDataType:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->selected:Z

    .line 91
    return-void
.end method

.method public setVid(Ljava/lang/String;)V
    .locals 0
    .parameter "vid"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->vid:Ljava/lang/String;

    .line 37
    return-void
.end method
