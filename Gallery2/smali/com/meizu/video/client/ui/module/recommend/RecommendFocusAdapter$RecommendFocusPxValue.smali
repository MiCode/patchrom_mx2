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
.field bigImageHeight_land:I

.field bigImageHeight_port:I

.field bigImageTitleHeight_land:I

.field bigImageTitleHeight_port:I

.field bigImageWidth_land:I

.field bigImageWidth_port:I

.field leftMarginNum_land:I

.field leftMarginNum_port:I

.field final synthetic this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;

.field topFirstMarginNum_land:I

.field topFirstMarginNum_port:I


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
    iput v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;->bigImageWidth_land:I

    .line 58
    iput v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;->bigImageHeight_land:I

    .line 59
    iput v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;->bigImageWidth_port:I

    .line 60
    iput v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;->bigImageHeight_port:I

    .line 62
    iput v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;->bigImageTitleHeight_port:I

    .line 63
    iput v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;->bigImageTitleHeight_land:I

    return-void
.end method
