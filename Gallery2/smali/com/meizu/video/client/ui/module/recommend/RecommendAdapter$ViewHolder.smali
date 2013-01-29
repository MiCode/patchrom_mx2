.class Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "RecommendAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field recommend_image:Landroid/widget/ImageView;

.field recommend_title:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;


# direct methods
.method constructor <init>(Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$ViewHolder;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
