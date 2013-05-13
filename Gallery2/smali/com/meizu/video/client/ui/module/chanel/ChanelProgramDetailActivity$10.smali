.class Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$10;
.super Ljava/lang/Object;
.source "ChanelProgramDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

.field final synthetic val$wifisetting:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Landroid/view/MenuItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2084
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$10;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    iput-object p2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$10;->val$wifisetting:Landroid/view/MenuItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2086
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$10;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$10;->val$wifisetting:Landroid/view/MenuItem;

    const/4 v2, 0x0

    #calls: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setOrGetWifiSetting(Landroid/view/MenuItem;Z)V
    invoke-static {v0, v1, v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$3700(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Landroid/view/MenuItem;Z)V

    .line 2087
    return-void
.end method
