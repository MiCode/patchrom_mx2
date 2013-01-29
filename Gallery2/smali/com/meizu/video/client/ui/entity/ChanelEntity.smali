.class public Lcom/meizu/video/client/ui/entity/ChanelEntity;
.super Ljava/lang/Object;
.source "ChanelEntity.java"


# instance fields
.field private id:Ljava/lang/String;

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

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/ChanelEntity;->title:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/ChanelEntity;->type:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/ChanelEntity;->id:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/ChanelEntity;->lableListEntity:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/ChanelEntity;->id:Ljava/lang/String;

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
    .line 39
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/ChanelEntity;->lableListEntity:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/ChanelEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/ChanelEntity;->id:Ljava/lang/String;

    .line 37
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
    .line 42
    .local p1, lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/ChanelEntity;->lableListEntity:Ljava/util/ArrayList;

    .line 43
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/ChanelEntity;->title:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/ChanelEntity;->type:Ljava/lang/String;

    .line 31
    return-void
.end method
