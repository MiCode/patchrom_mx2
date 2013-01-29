.class Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$7;
.super Ljava/lang/Object;
.source "ChanelProgramDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->loadSimilarvideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

.field final synthetic val$itemChannelProgramName:Ljava/lang/String;

.field final synthetic val$itemCid:Ljava/lang/String;

.field final synthetic val$itemMediaDataType:Ljava/lang/String;

.field final synthetic val$itemVid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1052
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$7;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    iput-object p2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$7;->val$itemChannelProgramName:Ljava/lang/String;

    iput-object p3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$7;->val$itemCid:Ljava/lang/String;

    iput-object p4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$7;->val$itemVid:Ljava/lang/String;

    iput-object p5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$7;->val$itemMediaDataType:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$7;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    const/4 v1, 0x1

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->isLoadBySimilarVideo:Z
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$2502(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Z)Z

    .line 1055
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$7;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$7;->val$itemChannelProgramName:Ljava/lang/String;

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$2602(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1056
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$7;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$7;->val$itemCid:Ljava/lang/String;

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->cid:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$2702(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1057
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$7;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$7;->val$itemVid:Ljava/lang/String;

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->vid:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$902(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1058
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$7;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$7;->val$itemMediaDataType:Ljava/lang/String;

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mediaDataType:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$802(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1059
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$7;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    invoke-static {}, Lcom/meizu/video/client/common/Constant;->getChannelListEntity()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$7;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->cid:Ljava/lang/String;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$2700(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/video/client/util/CommonUtil;->getChannelNameByCid(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$2802(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1060
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$7;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    const-string v1, ""

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->intro:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$2902(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1061
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$7;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->reLoadPage()V

    .line 1062
    return-void
.end method
