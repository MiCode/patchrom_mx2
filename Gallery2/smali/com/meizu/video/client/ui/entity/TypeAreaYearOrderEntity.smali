.class public Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;
.super Ljava/lang/Object;
.source "TypeAreaYearOrderEntity.java"


# instance fields
.field private cid:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private typeTitem1ListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/LableEntity;",
            ">;"
        }
    .end annotation
.end field

.field private typeTitem2ListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/LableEntity;",
            ">;"
        }
    .end annotation
.end field

.field private typeTitem3ListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/LableEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->cid:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->name:Ljava/lang/String;

    .line 9
    iput-object v1, p0, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->typeTitem1ListEntity:Ljava/util/ArrayList;

    .line 10
    iput-object v1, p0, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->typeTitem2ListEntity:Ljava/util/ArrayList;

    .line 11
    iput-object v1, p0, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->typeTitem3ListEntity:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeTitem1ListEntity()Ljava/util/ArrayList;
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
    .line 25
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->typeTitem1ListEntity:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTypeTitem2ListEntity()Ljava/util/ArrayList;
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
    .line 31
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->typeTitem2ListEntity:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTypeTitem3ListEntity()Ljava/util/ArrayList;
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
    .line 37
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->typeTitem3ListEntity:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0
    .parameter "cid"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->cid:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->name:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setTypeTitem1ListEntity(Ljava/util/ArrayList;)V
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
    .line 28
    .local p1, typeTitem1ListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->typeTitem1ListEntity:Ljava/util/ArrayList;

    .line 29
    return-void
.end method

.method public setTypeTitem2ListEntity(Ljava/util/ArrayList;)V
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
    .line 34
    .local p1, typeTitem2ListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->typeTitem2ListEntity:Ljava/util/ArrayList;

    .line 35
    return-void
.end method

.method public setTypeTitem3ListEntity(Ljava/util/ArrayList;)V
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
    .line 40
    .local p1, typeTitem3ListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->typeTitem3ListEntity:Ljava/util/ArrayList;

    .line 41
    return-void
.end method
