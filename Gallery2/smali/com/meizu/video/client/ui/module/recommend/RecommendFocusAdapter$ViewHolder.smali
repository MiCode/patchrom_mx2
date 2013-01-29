.class Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "RecommendFocusAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field image_cover:Landroid/widget/ImageView;

.field recommend_image:Landroid/widget/ImageView;

.field recommend_image_cover:Landroid/widget/ImageView;

.field recommend_title:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;


# direct methods
.method constructor <init>(Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$ViewHolder;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
