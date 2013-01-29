.class public Lcom/meizu/video/client/common/Constant;
.super Ljava/lang/Object;
.source "Constant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/video/client/common/Constant$InterfaceType;
    }
.end annotation


# static fields
.field public static areaTypeAreaYearOrderListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;",
            ">;"
        }
    .end annotation
.end field

.field public static cateTypeAreaYearOrderListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;",
            ">;"
        }
    .end annotation
.end field

.field public static channelListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/ChanelEntity;",
            ">;"
        }
    .end annotation
.end field

.field public static dataFromType:I

.field public static did:Ljava/lang/String;

.field public static episodesListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/EpisodesEntity;",
            ">;"
        }
    .end annotation
.end field

.field public static orderTypeAreaYearOrderListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;",
            ">;"
        }
    .end annotation
.end field

.field public static yearTypeAreaYearOrderListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x2

    sput v0, Lcom/meizu/video/client/common/Constant;->dataFromType:I

    .line 347
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/video/client/common/Constant;->channelListEntity:Ljava/util/ArrayList;

    .line 348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/video/client/common/Constant;->cateTypeAreaYearOrderListEntity:Ljava/util/ArrayList;

    .line 349
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/video/client/common/Constant;->areaTypeAreaYearOrderListEntity:Ljava/util/ArrayList;

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/video/client/common/Constant;->yearTypeAreaYearOrderListEntity:Ljava/util/ArrayList;

    .line 351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/video/client/common/Constant;->orderTypeAreaYearOrderListEntity:Ljava/util/ArrayList;

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/video/client/common/Constant;->episodesListEntity:Ljava/util/ArrayList;

    .line 378
    const-string v0, ""

    sput-object v0, Lcom/meizu/video/client/common/Constant;->did:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 334
    return-void
.end method

.method public static getAreaTypeAreaYearOrderListEntity()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 357
    sget-object v0, Lcom/meizu/video/client/common/Constant;->areaTypeAreaYearOrderListEntity:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getCateTypeAreaYearOrderListEntity()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 354
    sget-object v0, Lcom/meizu/video/client/common/Constant;->cateTypeAreaYearOrderListEntity:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getChannelListEntity()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/ChanelEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 366
    sget-object v0, Lcom/meizu/video/client/common/Constant;->channelListEntity:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getEpisodesListEntity()Ljava/util/ArrayList;
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
    .line 370
    sget-object v0, Lcom/meizu/video/client/common/Constant;->episodesListEntity:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getOrderTypeAreaYearOrderListEntity()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    sget-object v0, Lcom/meizu/video/client/common/Constant;->orderTypeAreaYearOrderListEntity:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getYearTypeAreaYearOrderListEntity()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 360
    sget-object v0, Lcom/meizu/video/client/common/Constant;->yearTypeAreaYearOrderListEntity:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static setEpisodesListEntity(Ljava/util/ArrayList;)V
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
    .line 373
    .local p0, episodesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/EpisodesEntity;>;"
    sput-object p0, Lcom/meizu/video/client/common/Constant;->episodesListEntity:Ljava/util/ArrayList;

    .line 374
    return-void
.end method
