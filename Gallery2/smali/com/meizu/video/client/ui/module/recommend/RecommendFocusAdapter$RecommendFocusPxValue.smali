.class Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;
.super Ljava/lang/Object;
.source "RecommendFocusAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecommendFocusPxValue"
.end annotation


# instance fields
.field mBigImageHeightLand:I

.field mBigImageHeightPort:I

.field mBigImageWidthLand:I

.field mBigImageWidthPort:I

.field final synthetic this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;


# direct methods
.method constructor <init>(Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 56
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;->mBigImageWidthLand:I

    .line 58
    iput v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;->mBigImageHeightLand:I

    .line 59
    iput v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;->mBigImageWidthPort:I

    .line 60
    iput v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;->mBigImageHeightPort:I

    return-void
.end method
