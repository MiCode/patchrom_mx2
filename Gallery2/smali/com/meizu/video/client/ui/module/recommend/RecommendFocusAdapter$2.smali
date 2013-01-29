.class Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$2;
.super Ljava/lang/Object;
.source "RecommendFocusAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;

.field final synthetic val$chanelProgramName:Ljava/lang/String;

.field final synthetic val$cid:Ljava/lang/String;

.field final synthetic val$intro:Ljava/lang/String;

.field final synthetic val$mediaDataType:Ljava/lang/String;

.field final synthetic val$vid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;

    iput-object p2, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$2;->val$chanelProgramName:Ljava/lang/String;

    iput-object p3, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$2;->val$cid:Ljava/lang/String;

    iput-object p4, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$2;->val$vid:Ljava/lang/String;

    iput-object p5, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$2;->val$mediaDataType:Ljava/lang/String;

    iput-object p6, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$2;->val$intro:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 229
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->access$100(Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 231
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "chanelProgramName"

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$2;->val$chanelProgramName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    const-string v1, "cid"

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$2;->val$cid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string v1, "vid"

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$2;->val$vid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string v1, "mediaDataType"

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$2;->val$mediaDataType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    const-string v1, "intro"

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$2;->val$intro:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->access$100(Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 239
    return-void
.end method
