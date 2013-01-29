.class Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$5;
.super Ljava/lang/Object;
.source "ChanelProgramDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->loadEpisodes()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 908
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$5;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    iput-object p2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$5;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$5;->val$url:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 912
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$5;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$5;->val$title:Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$5;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->playVideo(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    return-void
.end method
